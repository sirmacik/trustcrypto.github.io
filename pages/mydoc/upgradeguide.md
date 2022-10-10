---
title: Upgrade Guide
tags: [OnlyKey, Firmware, Upgrade]
keywords: OnlyKey, Firmware, Upgrade
last_updated: Oct, 10, 2022
summary: Follow this guide to upgrade OnlyKey firmware and desktop app
sidebar: mydoc_sidebar
permalink: upgradeguide.html
folder: mydoc
---


We are pleased to announce that the latest and greatest OnlyKey software is now available! This release includes a new, easier to use desktop app for Windows/Mac/Linux to be used in conjunction with the latest OnlyKey firmware.

## Why Upgrade?

This release has a lot of improvements and new features. Here is the list of new features in this release:

- Support for Yubikey OTP with public key shorter than 16 bytes.
- Default for OnlyKey DUO challenge-mode is now set to press only, no challenge code required.
- Fixes for FIDO2 resident key backup/restore.
- Fix for PD Mode where if sysadmin mode is enabled device is unusable in PD Mode.

## Backup Before Upgrading

{% include warning.html content="If your OnlyKey has firmware v0.2-beta.8 or earlier you must backup OnlyKey prior to upgrading. Once firmware is upgraded restore backup file." %}

{% include callout.html content="**Backup OnlyKey** - It is always a good idea to create a backup prior to upgrading. Do this by going to the Backup/Restore tab in the OnlyKey app. Ensure you have a copy of your backup key/passphrase ([User Guide Backup Instructions here](https://docs.crp.to/usersguide.html#secure-encrypted-backup-anywhere))." type="default" %}

## Steps to Upgrade

{% include callout.html content="**Step 1.** **Upgrade OnlyKey desktop app** - Follow instructions [here](https://docs.crp.to/usersguide.html#app-desktop) to install the new OnlyKey app." type="default" %}

{% include callout.html content="**Step 2.** **Upgrade OnlyKey firmware** - Follow instructions [here](#loading-onlykey-firmware) to upgrade firmware on the OnlyKey" type="default" %}

{% include note.html content="onlykey-agent users, make sure to install the latest version of onlykey-agent with `$ pip3 uninstall onlykey-agent lib-agent` and `$ pip3 install onlykey-agent`. Python 3 is required." %}

### Steps to Upgrade OnlyKey firmware {#loading-onlykey-firmware}

### Download Firmware

There is a tab named Firmware in the app. This may be used to load the latest firmware onto OnlyKey directly through the OnlyKey app.

![](https://raw.githubusercontent.com/trustcrypto/trustcrypto.github.io/pages/images/newfeature2.png)

- Download <a href="https://github.com/trustcrypto/OnlyKey-Firmware/releases/download/v3.0.2-prod/Signed_OnlyKey_3_0_2_STD.txt" target="_blank" download="Signed_OnlyKey_3_0_2_STD.txt">OnlyKey Standard Edition firmware</a>
- Go to the Firmware tab in the app
- Follow the instructions in the app to load firmware

{% include note.html content="You can ensure the integrity of your downloaded file by verifying the checksum. <br>Signed_OnlyKey_3_0_2_STD.txt SHA 256 checksum:<br>
d547df850e963ca0c49f2b04dd91cd6dd845c00affbe3b9b552042d5ad196ce0" %}

<!---
- Download [OnlyKey Standard Edition firmware](https://github.com/trustcrypto/OnlyKey-Firmware/releases/download/v2.1.0-prod/Signed_OnlyKey_2_1_0_STD.txt)
- Go to the [Firmware] tab in the app
- Follow the instructions in the app to load firmware

For more information on the latest firmware release [here](https://github.com/trustcrypto/OnlyKey-Firmware/releases/latest/)
-->

{% include links.html %}
