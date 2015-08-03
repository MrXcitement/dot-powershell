@rem install.cmd -- Install the PowerShell profile files
@rem Use powershell to run a process elevated and then use mklink to create
@rem a symlink to the profile files

@rem Mike Barker <mike@thebarkers.com>
@rem June 26th, 2015

@rem Change log:
@rem 2015.06.26
@rem * First release.

powershell "start-process cmd.exe -argumentlist '/c mklink %userprofile%\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 %~dp0Microsoft.PowerShell_profile.ps1' -verb 'runas'"

powershell "start-process cmd.exe -argumentlist '/c mklink %userprofile%\Documents\WindowsPowerShell\Microsoft.PowerShellISE_profile.ps1 %~dp0Microsoft.PowerShellISE_profile.ps1' -verb 'runas'"