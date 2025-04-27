@echo off
set JAVA_HOME=
set JRE_HOME=
set "JAVA_TOOL_OPTIONS=-Xmx4g"
:: set "JAVA_HOME=C:\Program Files\BellSoft\LibericaJDK-24-Full"
:: set "JRE_HOME=%JAVA_HOME%"
:: set "PATH=%JAVA_HOME%\bin;%PATH%"
_r gradlew buildGhidra
if errorlevel 1 goto :eof
_r gradlew installGhidra
