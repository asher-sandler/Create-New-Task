 Start-Transcript  createTask.log
cls
$servers = get-content servers.txt
foreach($item in $servers){


    write-host Connect to $item
	schtasks /create /tn "reboot server" /xml SHUTDOWN.xml /s $item   

}

Stop-Transcript