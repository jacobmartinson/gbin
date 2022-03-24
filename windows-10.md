All commands run from powershell admin prompt.

## disable ntfs atime from powershell admin

`fsutil behavior set disablelastaccess 1`

reboot

## disable defender

`Set-MpPreference -DisableRealtimeMonitoring $true`

## uninstall yourphone

`Get-AppxPackage Microsoft.YourPhone -AllUsers | Remove-AppxPackage`

## disable windows search service
```
sc stop wsearch
sc config wsearch start=disabled
```

## apply windows updates
start -> check for updates

## run debloat scripts
https://github.com/Sycnex/Windows10Debloater

## adjust appearance and performance of windows
- adjust for best performance
- show thumbnails, smooth font edges

## privacy settings 
- background apps
- disable everything except spotify and ubuntu



## set noatime in WSL, /etc/fstab

`LABEL=cloudimg-rootfs   /        ext4   defaults,noatime        0 0`




