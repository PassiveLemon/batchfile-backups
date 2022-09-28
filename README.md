# batchfile-backups </br>
Backups using batch file </br>

# Usage </br>
Download repo </br>
Put files in a safe location </br>
Edit the Template.bat with your backup location. (Do not add a \ to the end.) </br>
Copy and paste that Template script for the amount of things you want to backup. </br>
Change the name to item-(whatever you want).bat </br>
For each items bat file, put the name at the top and the source (What directory or file/s that you want to backup.) </br>
 - If you want to backup multiple directories or files, add another source variable (ex: `set srce2=` at the top) and add that to the end of the tar line (Ln 14) </br>

To have windows automatically run the script, use Task Scheduler or a program of your choice.
