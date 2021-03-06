@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  skbCourseHomework1 startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and SKB_COURSE_HOMEWORK1_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\skbCourseHomework1-1.0-SNAPSHOT.jar;%APP_HOME%\lib\sdk-1.0.14.jar;%APP_HOME%\lib\json-20211205.jar;%APP_HOME%\lib\gson-2.8.5.jar;%APP_HOME%\lib\async-http-client-2.8.1.jar;%APP_HOME%\lib\log4j-slf4j-impl-2.17.0.jar;%APP_HOME%\lib\async-http-client-netty-utils-2.8.1.jar;%APP_HOME%\lib\slf4j-api-1.7.26.jar;%APP_HOME%\lib\commons-text-1.6.jar;%APP_HOME%\lib\commons-lang3-3.8.1.jar;%APP_HOME%\lib\commons-collections4-4.3.jar;%APP_HOME%\lib\commons-io-2.6.jar;%APP_HOME%\lib\httpmime-4.5.8.jar;%APP_HOME%\lib\httpclient-4.5.8.jar;%APP_HOME%\lib\log4j-core-2.17.0.jar;%APP_HOME%\lib\log4j-api-2.17.0.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.33.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.33.Final.jar;%APP_HOME%\lib\netty-reactive-streams-2.0.0.jar;%APP_HOME%\lib\netty-handler-4.1.33.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.33.Final.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.33.Final-linux-x86_64.jar;%APP_HOME%\lib\netty-resolver-dns-4.1.33.Final.jar;%APP_HOME%\lib\reactive-streams-1.0.2.jar;%APP_HOME%\lib\javax.activation-1.2.0.jar;%APP_HOME%\lib\httpcore-4.4.11.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\commons-codec-1.11.jar;%APP_HOME%\lib\netty-codec-dns-4.1.33.Final.jar;%APP_HOME%\lib\netty-codec-4.1.33.Final.jar;%APP_HOME%\lib\netty-transport-native-unix-common-4.1.33.Final.jar;%APP_HOME%\lib\netty-transport-4.1.33.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.33.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.33.Final.jar;%APP_HOME%\lib\netty-common-4.1.33.Final.jar


@rem Execute skbCourseHomework1
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %SKB_COURSE_HOMEWORK1_OPTS%  -classpath "%CLASSPATH%" Main %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable SKB_COURSE_HOMEWORK1_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%SKB_COURSE_HOMEWORK1_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
