<h1 align="center">Welcome to Windows-Setup👋</h1>

This script will make changes in the registry to change settings, add windows features (Hyper-V, WSL and Windows Sandbox (Windows Pro only)) and provide a GUI to remove windows bloatware.

- [Prerequistes](#prerequistes)
  - [Windows stuff](#windows-stuff)
  - [Install winget](#install-winget)
  - [Install Git](#install-git)
- [Running the script](#running-the-script)
  - [Run](#run)
  - [Things to look out for](#things-to-look-out-for)
- [End of setup](#end-of-setup)
- [Export apps](#export-apps)
- [Configure as required](#configure-as-required)
- [Author](#author)
- [Show your support](#show-your-support)
- [📝 License](#📝-license)

## Prerequistes

### Priming windows

- Update windows (select optional updates from **view optional updates** section)
- Powershell Set-Executionpolicy to 'RemoteSigned'.

```ps
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
```

### Install winget

Update _AppInstaller_ from Microsoft Store or install winget from github: [Latest release](https://github.com/microsoft/winget-cli/releases/latest). <br>

Test winget

```ps
winget -?
```

### Install Git

- Install git for windows.

```ps
winget install --id Git.Git -e -i --accept-source-agreements --accept-package-agreements
```

### !IGNORE THIS (Additional steps for me)

- Partition Disks C:(Windows) 150+GB, D:(Dev) 200GB+, P:(Programs) 100GB+, G:(Games) 400GB+.<br>
- Install most of the programs in P: drive (except the few listed below)<br>
- Load winget and git configurations. <br>

```ps
cd ~
git clone "https://github.com/Kushal-Chandar/.dotfiles.git"
~\.dotfiles\winget\deploy.ps1
~\.dotfiles\git\deploy.ps1
```

## Running the script

### Clone the repository

This script is portable. Clone to any folder in your computer.

```sh
git clone https://github.com/Kushal-Chandar/Windows-Setup.git
```

### Run

**Run the script in Windows Powershell (not the cross-platform version of Powershell).** <br>

Run windows_setup.ps1 project root directory

```ps
# from the project directory
.\windows_setup.ps1
```

### Things to look out for

- Install Git in its default path.
- Install Microsoft powershell in its default path.

## End of setup

- Add MSYS2 to path. (if you have installed MSYS2)
- Restart your pc.
- Continue setup from .dotfiles repository (additional step for me)

## Export apps

Run export_apps.ps1 project root directory

```ps
# from the project directory
.\export_apps.ps1
```

This will generate winget_install_apps.json in PROJECT_ROOT_DIR/scripts/applications. You can edit the file to configure which checkboxes are checked when these GUI buttons are clicked - Coding(1) or KVM(0)

## Configure as required

(Basic powershell and XML can get you far)

Run export_apps.ps1 project root directory to generate your winget_install_apps.json.<br>
(configure all packages to 1, click the **Coding** button in the GUI to check mark those packages).<br>
(configure all packages to 2, click the **KVM** button in the GUI to check mark those packages).<br>

```ps
# from the project directory
.\export_apps.ps1
```

- While running the script.

Select apps from appx packages from gui and Click **Save to File** to generate you apps_packeges_base.json and appx_provisioned_packages_base.json

Fork this repository and clone your fork. Once you make changes and push the code to your forked-repository with your configuration. You can setup your windows to your liking with few clicks.

## Author

👤 **Kushal Chandar**

- Github: [@Kushal-Chandar](https://github.com/Kushal-Chandar)

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2022 [Kushal Chandar](https://github.com/Kushal-Chandar).<br />
This project is [MIT](project-source-dir/LICENSE.txt) licensed.
