## What to do after a fresh install of windows

### Prerequisites

#### windows stuff

- Partition Disks C:(Windows) 150+GB, D:(Dev) 200GB+, P:(Programs) 100GB+, G:(Games) 400GB+
- Do a windows update and some selective optional updates.
- Powershell Set-executionpolicy to 'RemoteSigned'.
  > Run windows powershell as admin and copy code from below

```ps
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
```

#### Install winget

- Update AppInstaller from Microsoft Store
- Test winget

```ps
winget -?
```

- Install winget from github: <a href="https://github.com/microsoft/winget-cli/releases/latest">Latest release</a>

#### Install Git

- Install git for windows

```ps
winget install --id Git.Git -e -i --accept-source-agreements --accept-package-agreements
```

#### Additional steps for me (Others can ignore)

- load winget and git configuration

```ps
cd ~
git clone "https://github.com/Kushal-Chandar/.dotfiles.git"
~\.dotfiles\winget\deploy.ps1
~\.dotfiles\git\deploy.ps1
```

### Telemetery, Debloating and boot strapping

&nbsp;&nbsp;&nbsp;&nbsp;_Install git in its default path_<br>
&nbsp;&nbsp;&nbsp;&nbsp;_Install powershell in its default path_<br>
&nbsp;&nbsp;&nbsp;&nbsp;_Install Rest in P: drive_ -> use -i as -l is unreliable<br>
&nbsp;&nbsp;&nbsp;&nbsp;_MSYS add to path_<br>
&nbsp;&nbsp;&nbsp;&nbsp;_Prompt when installing google drive_<br>

- add host file (winows spyblocker ?)
- restart pc
- import trillium notes from google drive

### Configuring windows terminal, vs code, nvim, git bash

Make ps scripts to copy contents of these files from git hub (symlinks)<br>
export import powertoys profile<br>

# switch pc script

export trillium notes
launch google drive for sync
run winget list and create a file of all programs if file not in list add it using a program; read winget_packages.json from any setup ; check if those packages exist in winget_install_apps.json and have corresponding value 0,1,2, edit file for new packages configuration to add configuration value

### Gaming performance

Do a motherboard bios update (if provided by manufacturer).<br>
Do a graphics card bios update (if provided by manufacturer).<br>
Do a graphics card driver update.<br>
Download and configure throttlestop.<br>
Download and configure msi.<br>
Youtube pc optimisation guide (pc power plan editing).<br>
Youtube guide for nvidia/amd control panel settings.<br>

```

```
