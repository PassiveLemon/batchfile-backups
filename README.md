# batchfile-backups </br>
Backups using batch file. </br>
Requires 7zip. </br>
After given a source directory, this will create an archive of your source at a desired location. Stores 3 backups but you can easily add more if you want. Automatically removes oldest backup. Older backups have increasing numbers with the youngest being 1. Same thing happens with the log file. It will ignore empty/non-existant directories. </br>

# Usage </br>
Download repo </br>
Put files in a safe location </br>
Edit the Template.bat with your backup location. (DO NOT ADD A \ TO THE END.) </br>
Copy and paste that Template script for the amount of things you want to backup. </br>
Change the name to `item-(whatever you want).bat` </br>
For each item's bat file, put the name at the top and the source (The directory that you want to backup. DO NOT ADD A \ TO THE END. Example file included. </br>

To have it done automatically, use Task Scheduler or a program of your choice and have it run Starter.bat. </br>

#### TO ADD:
- Handling for individual files that are seperate from "save directories".
