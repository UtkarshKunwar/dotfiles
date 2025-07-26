# ~/.dotfiles

<!-- mdformat-toc start --slug=github --no-anchors --maxlevel=6 --minlevel=1 -->

- [~/.dotfiles](#dotfiles)
  - [Dependencies](#dependencies)
  - [Using this repository](#using-this-repository)

<!-- mdformat-toc end -->

This repository tracks my dotfiles for portability using GNU Stow.

## Dependencies

- `stow`
- `git`

## Using this repository

To use this repository, clone this to your `$HOME` directory and

```shell
git clone https://github.com/UtkarshKunwar/dotfiles.git ~/.dotfiles
```

then `cd` into the cloned repository and run stow

```shell
cd ~/.dotfiles
stow .
```

> [!WARNING]
> Ensure you have backed up your pre-existing configs for safety.
> If you encounter a conflict, you can run,
> ```shell
> stow --adopt .
> ```
