<powershell>
#Enable RDP in registry
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -name "UserAuthentication" -Value 0 #-Force
Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0 #-Force

# Allow Remote Desktop in Firewall
#Set-NetFirewallRule -DisplayGroup “Remote Desktop” –Enabled True
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
</powershell>