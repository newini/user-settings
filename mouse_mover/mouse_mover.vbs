'���̃t�@�C���Ɓu�����t�@�C����.ps1�v���E�B���h�E���J�����Ɏ��s����
Dim psFilePath
psFilePath = Replace(WScript.ScriptFullName, ".vbs", ".ps1")

Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run "powershell.exe -ExecutionPolicy Bypass -NoLogo -File " & Chr(34) & psFilePath & Chr(34), 0