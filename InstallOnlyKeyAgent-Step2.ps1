 workflow InstallOnlyKeyAgent {
    Start-Process wsl -ArgumentList '--update' -Wait
    Start-Process wsl -Wait
    Start-Process bash -ArgumentList '-c "sudo apt update && sudo apt upgrade -y"' -Wait 
    Start-Process bash -ArgumentList '-c "sudo apt install linux-tools-5.4.0-77-generic hwdata python3-pip python3-tk libusb-1.0-0-dev libudev-dev -y && pip3 install onlykey-agent && wget https://raw.githubusercontent.com/trustcrypto/trustcrypto.github.io/pages/49-onlykey.rules && sudo cp 49-onlykey.rules /etc/udev/rules.d"' -Wait
    Start-Process bash -ArgumentList '-c "sudo update-alternatives --install /usr/local/bin/usbip usbip /usr/lib/linux-tools/5.4.0-77-generic/usbip 20"' -Wait
    Start-Process usbipd -ArgumentList 'wsl attach --hardware-id=1d50:60fc' -Wait
    }
InstallOnlyKeyAgent


    