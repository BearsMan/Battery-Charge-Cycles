PowerShell 7.4.5
PS C:\Users\dronk> $Cycles = (Get-WmiObject -Class BatteryCycleCount -Namespace ROOT\WMI).CycleCount
PS C:\Users\dronk> Write-Host "Charge cycles:`t $Cycles"
Charge cycles:   0
PS C:\Users\dronk>
PS C:\Users\dronk> $DesignCapacity = (Get-WmiObject -Class BatteryStaticData -Namespace ROOT\WMI).DesignedCapacity
PS C:\Users\dronk> Write-Host "Design capacity: $DesignCapacity mAh"
Design capacity: 90001 mAh
PS C:\Users\dronk>
PS C:\Users\dronk> $FullCharge = (Get-WmiObject -Class BatteryFullChargedCapacity -Namespace ROOT\WMI).FullChargedCapacity
PS C:\Users\dronk> Write-Host "Full charge:`t $FullCharge mAh"
Full charge:     85093 mAh
PS C:\Users\dronk>
PS C:\Users\dronk> $BatteryHealth = ($FullCharge/$DesignCapacity)*100
PS C:\Users\dronk> $BatteryHealth = [math]::Round($BatteryHealth,2)
PS C:\Users\dronk> Write-Host "Battery health:`t $BatteryHealth%"
Battery health:  94.55%
PS C:\Users\dronk>
PS C:\Users\dronk> $Discharge = (Get-WmiObject -Class BatteryStatus -Namespace ROOT\WMI).DischargeRate
PS C:\Users\dronk> Write-Host "Discharge rate:`t $Discharge mA"
Discharge rate:  0 mA
PS C:\Users\dronk>
PS C:\Users\dronk> $Charging = (Get-WmiObject -Class BatteryStatus -Namespace ROOT\WMI).ChargeRate
PS C:\Users\dronk> Write-Host "Charging rate:`t $Charging mA"
