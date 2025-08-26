<img src="./logo.png" align="right" width="128">

### wash <sub><sup><sub>_(Windows Addicted Shell)_</sub></sup></sub>

A native, (pretty) customizable shell for Windows CMD

![Made with Batch](https://img.shields.io/badge/Made%20with-Batch-white?style=flat-square)

## Requirements

Windows with Batch interpreter.

Windows CMD or any other terminal emulator with CMD support.

Terminal emulator with ANSII support. 

## Installation

Clone this repository, keep only the [`wash/`](./wash/) directory, and from that point run [`wash.bat`](./wash/wash.bat) instead of `cmd.exe`

## Usage

To enter wash, run [`wash.bat`](./wash/wash.bat) or execute it in CMD.

To use wash, enter standard CMD commands.

Commands to controll wash are described in the **Aliases** section.

All programms from [`app_dir`](./wash/config.conf) are added to %PATH%.

## Configuration

The configuration file is [`config.conf`](./wash/config.conf).
Do not use spaces around the `=` sign.
Do not modify the config structure.

#### Parameters:

`root` - Disk that will be main for wash. Example: `root=C:`

`init_dir` - Directory in root that will be entered on wash startup. Example: `init_dir=\Users`

`home_dir` - Directory in root that will become `~` in `{%{cd}%}`. Example: `home_dir=\Users\Admin`

`app_dir` - Directory in root that wash will use for locating applications. Example: `app_dir=\Users\Apps`

`theme` - Name of the prompt theme inside `themes/`. Example: `theme=minitf`

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

`{%{esc}%}` - Escape character. Usage: `{%{esc}%}[32mGreen Text{%{esc}%}[0m`

#### Examples:

See [`minitf`](./wash/themes/minitf.wash-theme) and [`fr`](./wash/themes/fr.wash-theme).

## Aliases

Aliases are located in [`modules/wash.wash`](./wash/modules/wash.wash.bat).
The only way to create working aliases is to edit the [`wash.wash`](./wash/modules/wash.wash.bat) module.
`setlocal` is `EnableDelayedExpansion`.

#### Default:

`\washed` - Exit wash.

`\wash` - Reload wash.

#### Examples:

See already existing aliases in [`wash.wash`](./wash/modules/wash.wash.bat).

## Wash Protocol

Environment variables are located in [`wash.protocol`](./wash/modules/wash.protocol.bat).

All variables are accessible when an app is run from [`wash`](./wash/wash.bat).

#### Constants:

`%washproto_escape%` - Escape character.

`%washproto_shell%` - Name of the current shell (`wash`);

## Known issues

Do not take wash too seriously.

#### Instability and Maintenance:
Since Batch is a very strict and limited language, wash is difficult to debug and maintain.
Most errors are caused by Batch's specific syntax and interpreter limitations.

#### Experimental Nature and Support:
Initially, wash was created as an experimental, non-trivial fun project.
Despite this, it may still be useful in certain scenarios.

#### Performance and Speed:
Batch is an interpreted scripting language.
Batch was never designed for speed, and there's little that can be done about it.

<sub><sup>Featuring: Tea</sup></sub>