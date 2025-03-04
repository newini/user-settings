'このファイルと「同じファイル名.ps1」をウィンドウを開かずに実行する
Dim psFilePath
psFilePath = Replace(WScript.ScriptFullName, ".vbs", ".ps1")

Set objShell = WScript.CreateObject("WScript.Shell")
objShell.Run "powershell.exe -ExecutionPolicy Bypass -NoLogo -File " & Chr(34) & psFilePath & Chr(34), 0