# Brew My Mac

[![GitHub workflow status](https://img.shields.io/github/workflow/status/ayltai/brew-my-mac/CI?style=flat)](https://github.com/ayltai/brew-my-mac/actions)
![macOS](https://img.shields.io/badge/macOS-10.11--10.15.6-blue.svg?style=flat&label=macOS&maxAge=300)
![Maintenance](https://img.shields.io/maintenance/yes/2022?style=flat)
[![License](https://img.shields.io/github/license/ayltai/brew-my-mac.svg?style=flat)](https://github.com/ayltai/brew-my-mac/blob/master/LICENSE)

An [Ansible](https://www.ansible.com) playbook that downloads, installs and configures most of the software I use on my Mac for software development with a single command.

[![Buy me a coffee](https://img.shields.io/static/v1?label=Buy%20me%20a&message=coffee&color=important&style=flat&logo=buy-me-a-coffee&logoColor=white)](https://buymeacoff.ee/ayltai)

## Quick start
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ayltai/brew-my-mac/master/install.sh)"
```

## How to customize it for my needs?
1. Install Xcode command line tools:
   ```sh
   xcode-select --install
   ```
2. Git clone this repository to your local drive:
   ```sh
   git clone https://github.com/ayltai/brew-my-mac.git
   ```
3. Edit `brew-my-mac/vars/main.yml` to suit your needs
4. Run `run.sh` and enter your root password when prompted:
   ```sh
   cd brew-my-mac
   ./run.sh
   ```

## Included software
* [Homebrew](https://brew.sh)
* Over 40 [macOS tweaks](https://github.com/ayltai/brew-my-mac/blob/master/tasks/osx.yml)

### Installed by Homebrew
* [Ansible](https://www.ansible.com)
* [Ansible Lint](https://github.com/ansible/ansible-lint)
* [Molecule](https://github.com/ansible-community/molecule)
* [Node.js](https://nodejs.org/en)
* [GNU Tar](https://www.gnu.org/software/tar)
* [Info-ZIP](http://infozip.sourceforge.net/UnZip.html)
* [Wget](https://www.gnu.org/software/wget)
* [Terraform](https://www.terraform.io)
* [AWS CLI version 2](https://github.com/aws/aws-cli/tree/v2)
* [mas-cli](https://github.com/mas-cli/mas)
* [FIGlet](http://www.figlet.org)

### Installed by Homebrew Cask
* [Firefox](https://www.mozilla.org/en-US/firefox)
* [Google Chrome](https://www.google.com/chrome)
* [Docker Desktop](https://www.docker.com/products/docker-desktop)
* [IntelliJ Idea](https://www.jetbrains.com/idea) (with settings)
* [WebStorm](https://www.jetbrains.com/webstorm) (with settings)
* [PyCharm](https://www.jetbrains.com/pycharm) (with settings)
* [Visual Studio Code](https://code.visualstudio.com) (with extensions and settings)
* [Android SDK](https://developer.android.com/studio)
* [Android Platform Tools](https://developer.android.com/studio)
* [Android Studio](https://developer.android.com/studio) (with settings)
* [VirtualBox](https://www.virtualbox.org)
* [VirtualBox Extension Pack](https://www.virtualbox.org)
* [Genymotion Desktop](https://www.genymotion.com/desktop)
* [SourceTree](https://www.sourcetreeapp.com)
* [Notion](https://www.notion.so)
* [f.lux](https://justgetflux.com)
* [OnyX](https://www.titanium-software.fr/en/onyx.html)
* [Spotify](https://www.spotify.com)
* [Zoom](https://zoom.us)
* [Intel Power Gadget](https://software.intel.com/content/www/us/en/develop/articles/intel-power-gadget.html)

### Open-source software
* [Hack fonts](https://github.com/source-foundry/Hack)
* [Resizer](https://github.com/ayltai/Resizer)

### Installed by App Store
* [Monosnap](https://monosnap.com)

### Free software
* [AdoptOpenJDK](https://adoptopenjdk.net) 8, 11 and 14 (with `JAVA_HOME` environment variable)
* [GraalVM](https://www.graalvm.org) 20.1.0 JDK 8 and 11 (with `JAVA_HOME` environment variable)
* [ImageOptim](https://imageoptim.com/mac)

## Configurations
You may check the corresponding configuration instructions from the following Ansible Roles this automation tool depends on:

* [ansible-macos-preferences](https://github.com/ayltai/ansible-macos-preferences)
* [ansible-macos-appstore](https://github.com/ayltai/ansible-macos-appstore)
* [ansible-macos-setup](https://github.com/ayltai/ansible-macos-setup)
* [ansible-vscode-mac](https://github.com/ayltai/ansible-vscode-mac)

## Compatibility
I have only tested this automation tool on my macOS Catalina 10.15.6 but I bet it also works on any macOS versions since OS X El Capitan 10.11.

## License
[MIT](https://github.com/ayltai/brew-my-mac/blob/master/LICENSE)
