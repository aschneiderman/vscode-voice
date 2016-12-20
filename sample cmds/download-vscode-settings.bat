ECHO OFF # Copy voice-vscode repo files to  vscode and vocola settings

SET /P confirm=[Are you really sure you want to update this PC's voice settings for vscode (22)?]
echo %confirm%

if NOT  %confirm% == 22  GOTO :end



c:
cd C:\Users\aschneid\AppData\Roaming\Code\User
copy C:\GitHub\vscode-voice\settings.json  .
copy C:\GitHub\vscode-voice\snippets\javascript.json .

copy C:\GitHub\vscode-voice\code.vsl  C:\Voice\code.vcl   
 
echo  All Done!

:end
pause