# Dotfiles

I'm using [rcm](https://github.com/thoughtbot/rcm) for my dotfile management

# Usage

## Cloning the dotfiles

1. Clone the repository
```bash
git clone repository_link ~/.dotfiles
```
2. While in your home directory:
```bash
rcup
```
This will update your dotfiles according to the repository

## Adding a new dotfile

To add a new config 
```bash
mkrc `path/to/dotfile`
```
