@echo off

set samples=Z:\GitHub\framework\Samples
set notepad="C:\Program Files\Microsoft VS Code\Code.exe"
echo.

echo %samples%
for /r "%samples%" %%F in (*.csproj) do (
  echo %%F
  %notepad% "%%F"
)

