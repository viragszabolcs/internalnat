New-VMSwitch -SwitchName "NAT" -SwitchType Internal
$adapter = Get-NetAdapter -Name *NAT*
New-NetIPAddress -IPAddress 10.0.0.1
New-NetNAT -Name "NAT" -InternalIPInterfaceAddressPrefix 10.0.0.0/24
