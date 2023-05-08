# Script Name:               Code Challenge 11
# Author:                    Gerald
# Date of latest revision:   5/8/2023
# Purpose:                   Enable file printer sharing, Allow ICMP traffic, enable remote management, remove bloat ware, enable Hyper-V, Disable SMBv1
# Source: 		     https://github.com/superswan/Powershell-SysAdmin


#Declaration of variables:


#Declaration of functions:



#Main

Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True

netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4

Enable-NetFirewallRule -DisplayGroup “Remote Desktop”

reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force



