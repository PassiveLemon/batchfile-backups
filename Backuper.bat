@echo off

dir /b /s /a "%srce%\" | findstr .>nul || (
	echo "|| Nothing detected in source directory or directory does not exist for %item%. Skipping... ||"
	goto skip
)

if not exist "%dest%\" (
	echo "|| Making backup directory... ||"
	mkdir "%dest%\"
	echo "|| Directory made. ||"
)

if not exist "%dest%\%item%\" (
	echo "|| Making directory for %item%... ||"
	mkdir "%dest%\%item%\"
	echo "|| Directory made. ||"
)

echo "|| Making temporary directory and copying to... ||"
	mkdir "%dest%\%item%temp\"
	xcopy /Y /s "%srce%\" "%dest%\%item%temp\"

echo "|| Archiving... ||"
	tar -cf "%dest%\%item%\%item%.tar" "%dest%\%item%temp"

echo "|| Deleting temporary directory... ||"
	rmdir /s /q "%dest%\%item%temp\"

if exist "%dest%\%item%\%item%3.tar" (
	echo "|| Removing oldest backup ||"
	del /Q "%dest%\%item%\%item%3.tar"
)

if exist "%dest%\%item%\%item%2.tar" (
	echo "|| Move 2 to 3 ||"
	ren "%dest%\%item%\%item%2.tar" "%item%3.tar"
)

if exist "%dest%\%item%\%item%1.tar" (
	echo "|| Move 1 to 2 ||"
	ren "%dest%\%item%\%item%1.tar" "%item%2.tar"
)

if exist "%dest%\%item%\%item%.tar" (
	echo "|| Move new backup to 1 ||"
	ren "%dest%\%item%\%item%.tar" "%item%1.tar"
)

if exist "%dest%\%item%\%item%.tar" (
	echo "|| Removing %item%.tar. This shouldn't happen. Check your entries. ||"
	del /Q "%dest%\%item%\%item%.tar"
)

if exist "%dest%\%item%temp\" (
	echo "|| Removing %item%temp\. This shouldn't happen. Check your entries. ||"
	rmdir /s /q "%dest%\%item%temp\"
)

echo "|| Successfully backed up %item% ||"

:skip
