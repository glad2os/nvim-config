# nvim

## Installation

```bash
mkdir -p ~/.config/nvim && git clone --depth 1 https://github.com/glad2os/nvim-config.git ~/.config/nvim
```

## Dependencies

### macOS

```bash
brew install yaml-language-server xclip node ripgrep
```

### Arch Linux

```bash
sudo pacman -S yaml-language-server xclip npm ripgrep
```

## Lua formatting

1. Install Rust
2. `cargo install stylua`
3. Add `$HOME/.cargo/bin` to `$PATH`
