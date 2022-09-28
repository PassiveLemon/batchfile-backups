@echo off

set item=
set dest=D:\BACKUPStesttar
set srce=

echo "|| Backing up %item%... ||"
if not exist "%dest%\%item%\" (
	echo "|| Making directory for %item%... ||"
	mkdir "%dest%\%item%\"
	echo "|| Directory made. ||"
)
echo "|| Archiving... ||"
tar -cf "%dest%\%item%\%item%.tar" "%srce%"

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
echo "|| Successfully backed up %item% ||"