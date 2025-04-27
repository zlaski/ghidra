@echo off
_r pskill -t java
_r pskill -t javaw
_r rmdir /s /q "%USERPROFILE%\.gradle\caches"
set JAVA_HOME=
set JRE_HOME=
set "JAVA_TOOL_OPTIONS=-Xmx4g"
:: set "JAVA_HOME=C:\Program Files\BellSoft\LibericaJDK-24-Full"
:: set "JRE_HOME=%JAVA_HOME%"
:: set "PATH=%JAVA_HOME%\bin;%PATH%"
_r gradlew --init-script gradle/support/fetchDependencies.gradle
%~dp0build-ghidra.bat

:: "<mumble>\java.exe" -XshowSettings:properties 2>&1 | grep java.home