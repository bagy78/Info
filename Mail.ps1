$from = "sysman@meteor.briese-research.de"
$to = "b.bagyura@meteor.briese-research.de"
$Subject = "Power Shell EMail"
$Text = "Das ist meine Power Shell Mail"

$server = "mailserver"

$SMTPClient = New-Object System.Net.Mail.SmtpClient($server,25)

#mail.Send($from,$to,$Subject,$Text)
#Send-MailMessage($from,$to,$Subject,$Text)
#$from
Send-MailMessage -To $to -From $from  -Subject $Subject -Body $Text -SmtpServer $server -Port 25