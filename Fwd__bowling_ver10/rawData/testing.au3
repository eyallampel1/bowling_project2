; generate test file

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
$return=0
$return=FileReadToArray(@ScriptDir & '\bowlingtest.txt')

_ArrayDisplay($return)
; mikell's code

#include <File.au3>

Local $a
_FileReadToArray($fl, $a, 2, ",") ; get an array of team arrays

$teams = UBound($a) ; nb teams
$players = $teams * 3 ; total nb players
$games = 10;UBound($a[0]) / 3 ; nb games

MsgBox(0,"TEAMS="&$teams&"PLAYERS="&$players,"GAMES="&$games)
Local $res[$players][$games]

For $i = 0 To $teams - 1
	_ArrayDisplay($a[$i])
    _ArraySort($a[$i])
     _ArrayDisplay($a[$i])   ; display each team array
    For $j = 0 To (3 * $games) - 1 Step $games
        For $n = 0 To $games - 1
			MsgBox(0,($i * 3) + $j / $games,$j / $games)
            $res[($i * 3) + $j / $games][$n] = ($a[$i])[$j + $n]
        Next
    Next
Next

_ArrayDisplay($res)