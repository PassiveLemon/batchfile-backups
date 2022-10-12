@echo off
echo "|| Backing up... ||"
>logfile.txt 2>&1 (
	@echo "%DATE% - %TIME%"
	@echo "|| Backing up data... ||"
	for %%f in (item-*.*) do call %%f
	@echo "|| Data backed up. ||"
)
echo "|| Backed up. ||"
exit
