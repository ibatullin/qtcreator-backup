# QtCreator Backup

Ruby script for saving QtCreator settings.


### Example
```
qtcreator-backup backup all --backup ./path/to/backup
qtcreator-backup restore all --backup ./path/to/backup
```


## Install

1. Clone repository:
```
git clone https://github.com/ibatullin/qtcreator-backup.git qtcreator-backup
```

2. Run Bundler at the script directory:
```
cd qtcreator-backup
bundle install
```

Now you can run the script:
```
./qtcreator-backup help
```


## Usage

```
qtcreator-backup COMMAND SUBCOMMANDS [OPTIONS]
```

#### Commands:
- `backup`
  - `settings`
  - `snippets`
  - `all`
- `restore`
  - `settings`
  - `snippets`
  - `all`


#### Global options:
- `--config` — path to QtCreator config. Default: `~/.config/QtProject/`
- `--backup` — path to backup directory. Default: `./qtcreator-config-backup/`


### Backup Commands

#### backup settings

The command saves values from `QtCreator.ini` file:

```
qtcreator-backup backup settings [--sections <Sections>]
```
`<Sections>` is a list of QtCreator.ini sections. Default sections are described below.

Example:
```
qtcreator-backup backup settings Beautifier DebugMode FakeVim
```

#### backup snippets

The command copies snippet.xml file:
```
qtcreator-backup backup snippets
```

#### backup all

The command runs both `backup settings` and `backup snippets` commands.


### Restore

#### restore settings

The command replaces values of `QtConfig.ini` with backed up values.
```
qtcreator-backup restore settings
```

Example:
```
qtcreator-backup restore settings --backup /path/to/backup/directory/
qtcreator-backup restore settings --config /home/johndoe/.config/QtProject/ --backup /path/to/backup/directory/
```

#### restore snippets

The commands **overrides** snippet.xml from `backup` directory to `config` directory.

#### restore all

The command runs both `restore settings` and `backup snippets` commands.


### Default sections of QtConfig.ini:
- Analyzer
- Console
- CppCodeStyleSettings
- DebugMode
- DiffEditor
- EditorManager
- FakeVim
- FakeVimExCommand
- FakeVimUserCommand
- Git
- KeyboardShortcuts
- Mercurial
- Plugins
- QML
- QML.Inspector
- QbsProjectManager
- Subversion
- TodoPlugin
- Updater
- bazaar
- textDisplaySettings
- textMarginSettings


## Contribution

Feel free to modify code, open issues or create pull requests. Any help are welcome.

