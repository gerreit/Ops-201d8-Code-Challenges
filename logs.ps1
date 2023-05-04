# Script Name:               Print logs to file
# Author:                    Gerald
# Date of latest revision:   5/4/2023
# Purpose:                   Output system logs from 24 hours ago, output errors, print all logs with id 16, print 20 most recent entries, print all sources of 500 most recents



#Declaration of variables:


#Declaration of functions:

#Main


Get-Eventlog -Logname System -After (5/4/2023).Adddays(-1)
Get-winevent -Entrytype error -logname System > C:\Users\greit\Desktop\errors.txt
Get-WinEvent -Logname System -FilterHashtable @{ID=16}
Get-WinEvent -Logname system -Maxevents 20
Get-WinEvent -Logname system -maxevents 500



#End

#Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
#Output all “error” type events from the System event log to a file on your desktop named errors.txt.
#Print to the screen all events with ID of 16 from the System event log.
#Print to the screen the most recent 20 entries from the System event log.’
#Print to the screen all sources of the 500 most recent entries in the System event log. Ensure that the full lines are displayed (get rid of the … and show the entire text).