#include <array.au3>

Local $line, $ret, $fl = @ScriptDir & '\bowlingtest.txt', $gameidx = 1
$hfl = FileOpen($fl, 2)
If $hfl = -1 Then Exit MsgBox(17, 'File Open Error', 'File = ' & $fl)

For $T = 1 To 12
    For $M = 1 To 100
        For $P = 1 To 3
            For $S = $gameidx To $gameidx + 2
                $line &= 'T' & StringFormat('%02s', $T) & '-P' & $P & '-S' & StringFormat('%03s', $S) & '-' & Random(150, 300, 1) & ','
            Next
        Next
        $gameidx += 3
    Next
    $ret = FileWrite($hfl, StringTrimRight($line, 1) & @CRLF)
    $line = ''
    $gameidx = 1
Next

FileClose($hfl)
