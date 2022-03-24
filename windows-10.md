
## disable defender

`Set-MpPreference -DisableRealtimeMonitoring $true`

## uninstall yourphone

`Get-AppxPackage Microsoft.YourPhone -AllUsers | Remove-AppxPackage`

## admin command prompt
```
sc stop wsearch
sc config wsearch start=disabled
```

## apply windows updates

## run debloat scripts
https://github.com/Sycnex/Windows10Debloater

## adjust appearance and performance of windows
- adjust for best performance
- show thumbnails, smooth font edges

## privacy settings 
- background apps
- disable everything except spotify and ubuntu

## disable ntfs atime from powershell admin

`fsutil behavior set disablelastaccess 1`

## set noatime in WSL, /etc/fstab

`LABEL=cloudimg-rootfs   /        ext4   defaults,noatime        0 0`




