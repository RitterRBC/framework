@echo off

set sources=Z:\GitHub\framework\Sources
set unittest_extras=Z:\GitHub\framework\Sources\Extras
set unitest=Z:\GitHub\framework\Unit Tests
set notepad="C:\Program Files\Microsoft VS Code\Code.exe"
echo.

%notepad% "%unitest%\Accord.Tests.targets"

echo "%unitest%"
for /r "%unitest%" %%F in (Accord.Tests.*.csproj) do (
  echo %%F
  %notepad% "%%F"
)

echo "%unittest_extras%"
for /r "%unittest_extras%" %%F in (Accord.Tests.*.csproj) do (
  echo %%F
  %notepad% "%%F"
)

echo "%unitest%"
for /r "%unitest%" %%F in (Accord.Tests.*.vcxproj) do (
  echo %%F
  %notepad% "%%F"
)
