# Script Name:               Code Challenge 12
# Author:                    Gerald
# Date of latest revision:   5/9/2023
# Purpose:                   Output log to file 



#Declaration of variables:
#need 1
$Doc= "$env:USERPROFILE\Documents"

#Declaration of functions:
# need 1
function get-ip {
    ipconfig /all
    }


#Main
#ipconfig /all | Out-File -FilePath C:\Users\greit\Documents
#chatGPT helped with the second line
get-ip | Out-file $doc\network_report.txt
#Select-String -Path $doc\network_report.txt -Pattern '\bIPv4 Address\s*:\s*((\d{1,3}\.){3}\d{1,3})\b' | ForEach-Object { $_.Matches.Groups[1].Value }
Get-content $doc\network_report.txt | Select-String -pattern "Ipv4"
remove-item -path $doc\network_report.txt
