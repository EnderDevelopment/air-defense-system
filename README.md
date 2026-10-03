# Air Defense System

Framework-agnostic air defense system for FiveM servers.

## Features

- Framework-agnostic compatibility with ESX, QBCore, Qbox, and standalone modes
- Auto-detection of framework and use of bridge for framework functions
- Job whitelist and permission system for authorized users
- Air defense system with configurable cooldown, range, and damage

## Requirements

- FiveM server
- ESX, QBCore, Qbox, or standalone mode

## Installation

1. Download the latest release from the [releases page](https://github.com/EnderDevelopment/air-defense-system/releases)
2. Extract the contents into your FiveM server's `resources` folder
3. Add `start air-defense-system` to your server.cfg

## Usage

### Commands

| Command | Description |
| --- | --- |
| /airdefense | Activates the air defense system |

### Permissions

| Permission | Description |
| --- | --- |
| nova.airdefense.use | Allows the player to use the air defense system |

## Configuration

The configuration is done in the `config.lua` file. You can configure the framework, job whitelist, standalone permissions, and air defense settings.

---

## Generated with EnderDevelopment

This plugin was generated in minutes with [EnderDevelopment](https://enderdevelopment.com) — the AI platform that turns your ideas into working Minecraft plugins, Discord bots and FiveM scripts.

**Want your own?** [Generate this project on EnderDevelopment](https://dash.enderdevelopment.com?utm_source=github&utm_medium=readme&utm_campaign=air-defense-system&utm_content=bottom) — describe it in one sentence and get the full source code.