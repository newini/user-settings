# マウスふるふる(PowerShell版) ver.2.0  (C)2020 INASOFT/T.Yabuki
# 600秒おきに、マウスを微妙に左右に揺らし、スクリーン セーバー等への移行の阻止を試みます。

# .NETのCursorクラスを利用するためにSystem.Windows.Formsをロード
add-type -AssemblyName System.Windows.Forms

# mouse_event APIを利用するための準備
$signature=@' 
      [DllImport("user32.dll",CharSet=CharSet.Auto, CallingConvention=CallingConvention.StdCall)]
      public static extern void mouse_event(long dwFlags, long dx, long dy, long cButtons, long dwExtraInfo);
'@

$SendMouseEvent = Add-Type -memberDefinition $signature -name "Win32MouseEventNew" -namespace Win32Functions -passThru


# マウス移動
$MOUSEEVENTF_MOVE = 0x00000001

# スリープ秒数
$SleepSec =300

# マウスの振れ幅
# ・マウスの移動イベント生成用の振れ幅
$MoveMouseDistance = 1
# ・マウスの座標を左右にずらす用の振れ幅
$MoveMouseDistanceX = 1

# 偶数回数目は左へ、奇数回数目で右へずらすためのフラグ
$Flag = $true

# 永久ループ
while ($true) {
    # スリープ
    Start-Sleep $SleepSec

    # 現在のマウスのX,Y座標を取得
    $x = [System.Windows.Forms.Cursor]::Position.X
    $y = [System.Windows.Forms.Cursor]::Position.Y

    # マウス座標を少しずらす（マウスイベントを監視するOS(スクリーンセーバー、スリープ)対策）
    $SendMouseEvent::mouse_event($MOUSEEVENTF_MOVE, -$MoveMouseDistance, 0, 0, 0)

    # マウス座標を少し右にずらす（マウスイベントを監視するOS(スクリーンセーバー、スリープ)対策）
    $SendMouseEvent::mouse_event($MOUSEEVENTF_MOVE, $MoveMouseDistance, 0, 0, 0)

    # 座標を監視するアプリ対策(座標を左か右に1ピクセル分ずらすだけにする)
    if ($Flag) {
        $x += $MoveMouseDistanceX
        $Flag = $false;
    }
    else {
        $x -= $MoveMouseDistanceX
        $Flag = $true
    }
    [System.Windows.Forms.Cursor]::Position = new-object System.Drawing.Point($x, $y)
    $x = [System.Windows.Forms.Cursor]::Position.X
    $y = [System.Windows.Forms.Cursor]::Position.Y
}