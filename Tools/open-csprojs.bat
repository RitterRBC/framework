@echo off

set sources=Z:\GitHub\framework\Sources
set unitest=Z:\GitHub\framework\Unit Tests
set notepad="C:\Program Files\Microsoft VS Code\Code.exe"
echo.

%notepad% "%sources%\Accord.NET.sln"
%notepad% "%sources%\Accord.NET.targets"
%notepad% "%unitest%\Accord.Tests.targets"

echo %sources%
for /r "%sources%" %%F in (*.csproj) do (
  echo %%F
  %notepad% "%%F"
)

for /r "%sources%" %%F in (*.vcxproj) do (
  echo %%F
  %notepad% "%%F"
)

echo "%unitest%"
for /r "%unitest%" %%F in (*.csproj) do (
  echo %%F
  %notepad% "%%F"
)

echo "%unitest%"
for /r "%unitest%" %%F in (*.vcxproj) do (
  echo %%F
  %notepad% "%%F"
)
