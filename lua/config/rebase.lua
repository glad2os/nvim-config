vim.api.nvim_create_user_command('RebaseI', function(opts)
  local arg = opts.args
  if arg == '' then
    arg = vim.fn.input('Rebase last N commits: ')
  end

  local n = tonumber(arg)
  if not n or n < 1 then
    vim.notify('Usage: :RebaseI <N> (N >= 1)', vim.log.levels.ERROR)
    return
  end

  local inside = vim.fn.systemlist({ 'git', 'rev-parse', '--is-inside-work-tree' })[1]
  if inside ~= 'true' then
    vim.notify('Not inside a Git repository', vim.log.levels.ERROR)
    return
  end

  local cmd = { 'git', 'rebase', '--interactive', ('HEAD~' .. n) }

  vim.fn.termopen(cmd, {
    env = (vim.fn.executable('nvr') == 1)
      and { GIT_EDITOR = 'nvr -cc split --remote-wait' }
       or nil,
    on_exit = function(_, code)
      if code == 0 then
        vim.notify('git rebase finished', vim.log.levels.INFO)
      else
        vim.notify('git rebase exited with code ' .. code, vim.log.levels.WARN)
      end
    end,
  })
  vim.cmd('startinsert')
end, { nargs = '?' })

