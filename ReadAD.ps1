$adminuser = Get-Credential -Credential admin-bbg


#Invoke-Command -ComputerName metpdc -ScriptBlock {Get-MpComputerStatus | select *Anti*} -Credential admin-bbg
#$computers = Invoke-Command -ComputerName metpdc -ScriptBlock {Get-ADComputer -Filter *} -Credential $adminuser | select "Name"
#echo $computers

#foreach ($computer in $computers)
#    {
#        Write-Output "Der Rechenr heißt $computer"
#        Write-Output $computer
#
#    }

$machines = ("metpdc", "metsdc", "control-pc")
echo $machines

foreach ($computer in $machines)
    {
        Invoke-Command -ComputerName metpdc -ScriptBlock {Get-MpComputerStatus} -Credential $adminuser
    }