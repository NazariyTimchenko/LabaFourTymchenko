@echo off

chcp 65001
mkdir "Hidden"
mkdir "Not_Hidden"
attrib +h "Hidden"
xcopy /? > "Not_Hidden\copyhelp.txt" 
xcopy "Not_Hidden\copyhelp.txt" "Hidden\copied_copyhelp.txt"

pause