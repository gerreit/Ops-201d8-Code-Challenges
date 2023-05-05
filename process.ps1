
# Script Name:               Processes
# Author:                    Gerald
# Date of latest revision:   5/5/2023
# Purpose:                   Print processes > start note pad > kill note pad > also open google


#Declaration of variables:
$G=5
array= ( notepad notepad notepad )

#Declaration of functions:

#Main


#Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object -Property "CPU" -Descending
#Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object -Property "Process Identification Number" -Descending
#Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object -Property "WS" -Descending | Select-Object -First 5
#Start a browser process. File path needs to be in quotes apparently 
Start-Process -Filepath "C:\Program Files\Google\Chrome\Application\chrome.exe"
#Start the process Notepad ten times using a for loop. typing just "notepad" opens up notepad. Chat gpt helped with this line of code
if ($G -eq 5) {
    # Open five instances of Notepad
    1..10 | ForEach-Object { Start-Process notepad }
#Close all instances of the Notepad. First line was done by me second was the suggestion by chat gpt. Chat gpt saids mine wouldnt stop all instances of notepad although it worked just fine for me
#Stop-Process -Name "notepad"
Get-Process notepad | Stop-Process
#Kill a process by its Process Identification Number
get-process chrome
Stop-process -id 14660
