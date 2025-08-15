<img src="./logo.png" align="right" width="128">

### wash <sub><sup><sub>_(Windows Addicted Shell)_</sub></sup></sub>

First native, (kinda) customizable, shell for Windows CMD

![Made with Batch](https://img.shields.io/badge/Made%20with-Batch-white?style=flat-square)

## Requirements

Windows with Batch interpreter.

Windows CMD or any other Terminal Emulator with CMD.

## Installation

Just clone this repo, delete all but [`wash/`](./wash/) and from this point start only [`wash.bat`](./wash/wash.bat) instead of `cmd.exe`

## Usage

To enter wash you need to start [`wash.bat`](./wash/wash.bat), or execute it in CMD.

To use wash you need to enter original CMD commands.

Commands to controll wash described in **Aliases** chapter.

To close executed in wash application press `Ctrl+C` and type `n`

## Configuration

Config file is [`config.conf`](./wash/config.conf).
No spaces near `=`.
Don't break config.

#### Parameters:

`root` - Disk that will be main for wash. Example: `root=C:`

`init_dir` - Directory in root that will be entered on wash startup. Example: `init_dir=\Users`

`home_dir` - Directory in root that will become `~` in `{%{cd}%}`. Example: `home_dir=\Users\Admin`

`app_dir` - Directory in root that wash will use for locating applications. Example: `app_dir=\Users\Apps`

`theme` - Name of the prompt theme inside `themes/`. Example: `theme=minitf`

`color` - Color in CMD format. Example: `color=0f`

## Themes

Themes must be placed in [`themes/`](./wash/themes/).
Only the first line will be read.
Some symbols may cause errors, for example - `!`.
File extension must be `.wash-theme`.

#### Variables:

`{%{username}%}` - Windows current user name. Result: `user`

`{%{cd}%}` - Pretty current directory. Result: `C:\Users`, `~`, `~\Projects`

`{%{hostname}%}` - Current computer name. Result: `USERPC`

`{%{errcode}%}` - Latest exit code. Result: `127`

#### Examples:

See [`minitf`](./wash/themes/minitf.wash-theme) and [`fr`](./wash/themes/fr.wash-theme).

## Aliases

Aliases located in [`modules/wash.wash.bat`](./wash/modules/wash.wash.bat).
The only way to make working aliases is to edit [`wash.wash`](./wash/modules/wash.wash.bat) module.
`setlocal` is `EnableDelayedExpansion`.

#### Default:

`\washed` - Exit wash.

`\wash` - Reload wash.

`\\` - Execute `.bat` from applications directory. Example: `\\myapp`

#### Examples:

See already existing aliases in [`wash.wash`](./wash/modules/wash.wash.bat).

## Known issues

Do not take wash too seriously.

#### Instability and Maintaining:

Since Batch is very strict and limited language - wash is hard to debug and review.
Most errors caused by Batch's specific syntax and interpreter.

#### Facetiousness and Supportability:

At the very beginning - wash was made as an experimental non-trivial fun project.
As for that, it still may be useful in some cases.

#### Slowness and Latency:

Batch is interpreting, scripting language.
Batch was never fast. There is nothing to do with it.

<sub><sup>Featuring: Tea</sup></sub>