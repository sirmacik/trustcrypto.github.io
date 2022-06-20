workflow InstallWSL-USBIPD {
    #Install WSL2 and setup Ubuntu
    Start-Process powershell -Verb RunAs -ArgumentList 'wsl --install' -Wait 
    #Download usbipd-win_2.3.0.msi
    Start-Process "winget.exe" -ArgumentList "install",  "--silent",  "--exact dorssel.usbipd-win" -Wait
    }
InstallWSL-USBIPD

#USB GUI Prompt 
$PromptGui = New-Object -comobject wscript.shell
$AnswerGui = $PromptGui.Popup("Would you like to install WSL USB GUI? This is a GUI for attaching and removing USB devices from WSL.", 60, "Install WSL GUI?", 4096 + 48 + 1)

Switch ($AnswerGui) {
    # Accepted #
    { $AnswerGui -eq 1 } { 
        #Download WSL-USB-3.2-g4a21d53.msi
        Invoke-RestMethod "https://gitlab.com/api/v4/projects/35133362/packages/generic/wsl-usb-gui/3.2/WSL-USB-3.2-g4a21d53.msi" -OutFile $env:USERPROFILE\Downloads\WSL-USB-3.2-g4a21d53.msi
        #Install WSL-USB-3.2-g4a21d53.msi
        Start-Process "msiexec.exe"  -ArgumentList "/I", "$env:USERPROFILE\Downloads\WSL-USB-3.2-g4a21d53.msi /quiet" -Wait
    }
    # Cancelled #
    { $AnswerGui -eq 2 } { Exit 0 }
}

#Restart Computer
$Prompt = New-Object -comobject wscript.shell
$Answer = $Prompt.Popup("WARNING: WSL requires reboot after first setting up, PC will reboot in 60 seconds", 60, "Restart", 4096 + 48 + 1)

Switch ($Answer) {

    # Accepted #
    { $Answer -eq 1 } { Start-Sleep -Seconds 60; Restart-Computer -Force }
    # Cancelled #
    { $Answer -eq 2 } { Exit 0 }
    # Timeout #
    { $Answer -eq -1 } { Start-Sleep -Seconds 60; Restart-Computer -Force }

}