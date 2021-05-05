@echo off

set sources=Z:\GitHub\framework\Sources
set unitest=Z:\GitHub\framework\Unit Tests
set notepad="C:\Program Files\Microsoft VS Code\Code.exe"
echo.

%notepad% "%sources%\Accord.NET (NETStandard).sln"
%notepad% "%sources%\Accord.NET (NETStandard).targets"
%notepad% "%unitest%\Accord.Tests (NETStandard).targets"

echo %sources%
for /r "%sources%" %%F in (*Standard^).csproj) do (
  echo %%F
  %notepad% "%%F"
)

for /r "%sources%" %%F in (*Standard^).vcxproj) do (
  echo %%F
  %notepad% "%%F"
)

echo "%unitest%"
for /r "%unitest%" %%F in (*Standard^).csproj) do (
  echo %%F
  %notepad% "%%F"
)

echo "%unitest%"
for /r "%unitest%" %%F in (*Standard^).vcxproj) do (
  echo %%F
  %notepad% "%%F"
)
