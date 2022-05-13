## What to do after a fresh install of windows

### Initial steps

- Partition Disks C: system drive 150 - 200 gb, D:(Dev) 200GB+ , S:() G:(Games) 400GB+ ,
- Do a windows update and some selective optional updates.<br>
- Powershell Set-executionpolicy to 'RemoteSigned'.<br>
  > Run windows powershell as admin and copy code from below

```ps
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine
```

### Telemetery, Debloating and boot strapping

> **_NOTE:_** Read scripts, and make sure they are safe and unblock them without changing execution policy. Example Below

```ps
Unblock-File -Path .\example_script.ps1
.\example_script.ps1
```

- Run a ps script to list all apps provided by winget in a GUI, which helps construct a winget script for selected apps that i want to uninstall.<br>
- Install previous apps using winget and a list with ps script (through a list of required apps).<br>
  &nbsp;&nbsp;&nbsp;&nbsp;_Install git in its default path_<br>
  &nbsp;&nbsp;&nbsp;&nbsp;_Install powershell in its default path_<br>
  &nbsp;&nbsp;&nbsp;&nbsp;_Install Rest in D: drive_ -> use -i as -l is unreliable<br>
  &nbsp;&nbsp;&nbsp;&nbsp;_MSYS add to path_<br>
  &nbsp;&nbsp;&nbsp;&nbsp;_Prompt when installing google drive_<br>
- restart pc
- Recheck telemetry
- Disable telemetery using tools found on github(open source tools which are well maintained (find on youtube, google, etc)). Ex: **thisiswin11**.<br>
- setup wsl
- restart pc

### Configuring windows terminal, vs code, nvim, git bash

Make ps scripts to copy contents of these files from git hub<br>
export import powertoys profile<br>

# switch pc script

launch google drive for sync
run winget list and create a file of all programs

### Gaming performance

Mouse settings -> 6 / 11
Do a motherboard bios update (if provided by manufacturer).<br>
Do a graphics card bios update (if provided by manufacturer).<br>
Do a graphics card driver update.<br>
Download and configure throttlestop.<br>
Download and configure msi.<br>
Youtube pc optimisation guide (pc power plan editing).<br>
Youtube guide for nvidia/amd control panel settings.<br>
