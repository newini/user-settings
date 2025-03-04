# �}�E�X�ӂ�ӂ�(PowerShell��) ver.2.0  (C)2020 INASOFT/T.Yabuki
# 600�b�����ɁA�}�E�X������ɍ��E�ɗh�炵�A�X�N���[�� �Z�[�o�[���ւ̈ڍs�̑j�~�����݂܂��B

# .NET��Cursor�N���X�𗘗p���邽�߂�System.Windows.Forms�����[�h
add-type -AssemblyName System.Windows.Forms

# mouse_event API�𗘗p���邽�߂̏���
$signature=@' 
      [DllImport("user32.dll",CharSet=CharSet.Auto, CallingConvention=CallingConvention.StdCall)]
      public static extern void mouse_event(long dwFlags, long dx, long dy, long cButtons, long dwExtraInfo);
'@

$SendMouseEvent = Add-Type -memberDefinition $signature -name "Win32MouseEventNew" -namespace Win32Functions -passThru


# �}�E�X�ړ�
$MOUSEEVENTF_MOVE = 0x00000001

# �X���[�v�b��
$SleepSec =300

# �}�E�X�̐U�ꕝ
# �E�}�E�X�̈ړ��C�x���g�����p�̐U�ꕝ
$MoveMouseDistance = 1
# �E�}�E�X�̍��W�����E�ɂ��炷�p�̐U�ꕝ
$MoveMouseDistanceX = 1

# �����񐔖ڂ͍��ցA��񐔖ڂŉE�ւ��炷���߂̃t���O
$Flag = $true

# �i�v���[�v
while ($true) {
    # �X���[�v
    Start-Sleep $SleepSec

    # ���݂̃}�E�X��X,Y���W���擾
    $x = [System.Windows.Forms.Cursor]::Position.X
    $y = [System.Windows.Forms.Cursor]::Position.Y

    # �}�E�X���W���������炷�i�}�E�X�C�x���g���Ď�����OS(�X�N���[���Z�[�o�[�A�X���[�v)�΍�j
    $SendMouseEvent::mouse_event($MOUSEEVENTF_MOVE, -$MoveMouseDistance, 0, 0, 0)

    # �}�E�X���W�������E�ɂ��炷�i�}�E�X�C�x���g���Ď�����OS(�X�N���[���Z�[�o�[�A�X���[�v)�΍�j
    $SendMouseEvent::mouse_event($MOUSEEVENTF_MOVE, $MoveMouseDistance, 0, 0, 0)

    # ���W���Ď�����A�v���΍�(���W�������E��1�s�N�Z�������炷�����ɂ���)
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