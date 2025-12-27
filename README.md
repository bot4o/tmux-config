This directory includes my `.tmux.conf` and project session script for tmux which you can alter as you like

## Installation
1. Install tmux plugin manager (TPM):
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 
```

2. Clone this repo:
```bash
git clone https://github.com/bot4o/tmux-config &&
cd tmux-config
```

3. Copy the config file to home directory
```bash
cp ./.tmux.conf ~/.tmux.conf
```

4. Open a empty tmux session (if you haven't done it already)
```bash
tmux 
```

5. Source the config file
```bash 
tmux source ~/.tmux.conf
```
6. Enter the "Ctrl+B" and then "I" to install the plugins

For more info check: 
- https://github.com/tmux-plugins/tpm?tab=readme-ov-file#readme

