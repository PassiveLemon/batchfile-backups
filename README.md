# batchfile-backups </br>
Backups using batch file </br>
After given a source directory, this will create an archive of your source at a desired location. Stores 3 backups but you can easily add more if you want. Automatically removes oldest backup. Older backups have increasing numbers with the youngest being 1. Same thing happens with the log file. </br>

# Usage </br>
Download repo </br>
Put files in a safe location </br>
Edit the Template.bat with your backup location. (DO NOT ADD A \ TO THE END.) </br>
Copy and paste that Template script for the amount of things you want to backup. </br>
Change the name to `item-(whatever you want).bat` </br>
For each items bat file, put the name at the top and the source (The directory/s and/or file/s that you want to backup. DO NOT ADD A \ TO THE END. Example file included. </br>
 - If you want to backup multiple directories or files, add another source variable (ex: `set srce2=` at the top) and add that to the end of the tar line (Line 14) </br>

To have it done automatically, use Task Scheduler or a program of your choice and have it run Backuper.bat. </br>

## To figure out: <br>
VERY IMPORTANT - Dont backup empty archives and/or alert if source is empty. </br>
Useful - Only backup if something has changed. </br>
