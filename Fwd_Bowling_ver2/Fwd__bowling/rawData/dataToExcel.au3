#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=pic\images.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <Excel.au3>
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <DateTimeConstants.au3>
#include <EditConstants.au3>
#include <StaticConstants.au3>
#include <File.au3>
#include <MsgBoxConstants.au3>
#include <Math.au3>
;#include "bowlingTableTry.au3"
;#include "rawData/GUIListViewEx.au3"

;_Excel_BookClose()
ProcessClose("excel.exe")

; Create application object and create a new workbook
Local $openExcel = _Excel_Open()
If @error Then Exit MsgBox($MB_SYSTEMMODAL, "Excel UDF: _Excel_RangeWrite Example", "Error creating the Excel application object." & @CRLF & "@error = " & @error & ", @extended = " & @extended)
Local $excelObject = _Excel_BookNew($openExcel)
If @error Then
    MsgBox($MB_SYSTEMMODAL, "Excel UDF: _Excel_RangeWrite Example", "Error creating the new workbook." & @CRLF & "@error = " & @error & ", @extended = " & @extended)
    _Excel_Close($openExcel)
    Exit
EndIf

Local $hTimer = TimerInit() ; Begin the timer and store the handle in a variable.



$LeagueInformationArray=0
_FileReadToArray(@ScriptDir&"\League_Information.txt",$LeagueInformationArray)
If Not(IsArray($LeagueInformationArray)) Then
Local $LeagueInformationArray[5]
$LeagueInformationArray[0]=""
$LeagueInformationArray[1]=""
$LeagueInformationArray[2]=""
$LeagueInformationArray[3]=""
$LeagueInformationArray[4]=""
EndIf

; *****************************************************************************
; Insert 7 sheets after the last sheet and name them
; *****************************************************************************
_Excel_SheetAdd($excelObject, -1, False,7, "תוצאות אישיות|טבלת מיקום קבוצות|נבחרת השבוע|שיאים אישיים - משחק בודד|שיאים אישיים - שלישייה|שיא קבוצתי - משחק בודד|תוכנית משחקים")
;_Excel_SheetAdd($excelObject, -1, False,7, "תוצאות אישיות|קבוצתי|נבחרת השבוע|שיאים אישיים - משחק בודד|שיאים אישיים - שלישייה|טבלת מיקום קבוצות|תוכנית משחקים")
;_Excel_SheetAdd($excelObject, -1, False,7, "תוצאות אישיות |קבוצתי|נבחרת השבוע| שיאים אישיים|טבלת מיקום קבוצות|קבוצות וממוצעים|תוכנית משחקים")
_Excel_SheetDelete($excelObject,1)
_Excel_SheetDelete($excelObject,1)
_Excel_SheetDelete($excelObject,1)

Local $aWorkSheets = _Excel_SheetList($excelObject)
;_ArrayDisplay($aWorkSheets)
$excelObject.Sheets (1).Select
;to freeze pane
$openExcel.Activesheet.Rows("8:8").Select
$openExcel.ActiveWindow.FreezePanes= TRUE
;==
Global $xlContinuous=1
;$excelObject.Activesheet.Rows("6:6").Select
;$excelObject.ActiveWindow.FreezePanes= TRUE
$excelObject.Activesheet.Rows("1:7").Font.Bold= TRUE
$excelObject.Activesheet.Rows("1:7").Font.Size= 14
$excelObject.Activesheet.Rows("1:2000").HorizontalAlignment = -4108 ;center text in cell
$excelObject.Activesheet.Range("A7:H7").Interior.ColorIndex= 45 ;orange color in cell
;$excelObject.Activesheet.Range("A6:H60").Borders.LineStyle =



;$tempCell=_Excel_RangeRead($openExcel, Default, "A2")

;$excelObject.Activesheet.Range("A5:B5").MergeCells = TRUE
;$excelObject.Activesheet.Range("C5:D5").MergeCells = TRUE
;$excelObject.Activesheet.Range("E5:F5").MergeCells = TRUE
;$excelObject.Activesheet.Range("G5:H5").MergeCells = TRUE
;$excelObject.Activesheet.Range("I5:J5").MergeCells = TRUE
;$excelObject.Activesheet.Range("K5:L5").MergeCells = TRUE
;$excelObject.Activesheet.Range("M5:N5").MergeCells = TRUE
;$excelObject.Activesheet.Range("O5:P5").MergeCells = TRUE
;$excelObject.Activesheet.Range("Q5:R5").MergeCells = TRUE

;Local $Row_A5[18]=["מיקום אישי","שם השחקן","מספר קבוצה","מספר חבר","משחק גבוה","שלישיה גבוהה","מספר משחקים","סהכ פינים","ממוצע אישי"]
Local $Row_A7[18]=["מיקום אישי","שם השחקן","מספר קבוצה","משחק גבוה","שלישיה גבוהה","מספר משחקים","סהכ פינים","ממוצע אישי"]
_ArrayTranspose($Row_A7)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$Row_A7,"A7")
;_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$Row_A5,"A5")
$excelObject.ActiveSheet.Columns().AutoFit


;=====----===

;=======read all text files into an array

$aFileList = _FileListToArray(@Scriptdir&"\data", "*.txt")
;MsgBox(0,"",@Scriptdir&"\data")

If @error=1 Then
    MsgBox (0, "", "No Files\Folders Found.")
    Exit
EndIf

Global $aFileStrings[$aFileList[0] + 1][2] = [[$aFileList[0]]]
$sFile=0
For $i = 1 To $aFileList[0]
    ; Add file name to [n][0] element
    $aFileStrings[$i][0] = $aFileList[$i]
    ; Read file content
    ;$sFile = FileRead(@ScriptDir & "\" & $aFileList[$i])
	    _FileReadToArray(@Scriptdir&"\data" & "\" & $aFileList[$i],$sFile)
    ; Add file content to [n][1] element
    $aFileStrings[$i][1] = $sFile
Next

;_ArrayDisplay($aFileStrings);;;THIS IS THE LIST OF ALL TEXT FILES IMPORTENNNT SAVE THIS!!!!


;_ArrayShuffle
;_ArrayDisplay($aFileStrings[4][1])
;_ArrayDisplay($aFileStrings[5][1])
;_ArrayDisplay($aFileStrings[6][1])
;_ArrayDisplay($aFileStrings[7][1])
;=====
$index3=0
Local $singleTextFileArray
Local $nameIndex=-1
;Local $acumulatedPlayerScoresTable=[["name","team Number"],["name1","team1"]];b
Local $acumulatedPlayerScoresTable[10000]
Local $playerAcumlateScores[1]
Local $u=0
;_ArrayDisplay($acumulatedPlayerScoresTable)
For $index3=1 to UBound($aFileStrings)-1
 $singleTextFileArray=$aFileStrings[$index3][1];acsses array within array
; $singleTextFileArray=_ArrayConcatenate($aFileStrings[1+$index3*2][1],$aFileStrings[$index3*2+2][1]
;$acumulatedPlayerScoresTable=_ArrayConcatenate($acumulatedPlayerScoresTable,$singleTextFileArray)

;[[$acumulatedPlayerScoresTable],[$singleTextFileArray]]
;_ArrayDisplay($singleTextFileArray)
If IsArray($singleTextFileArray) Then
;_ArrayDisplay($singleTextFileArray)
  If $singleTextFileArray[0]>7 Then
	If $singleTextFileArray[1]==$singleTextFileArray[7] Then
		$nameIndex+=1
		For $indexx =1 To $singleTextFileArray[0]
		$acumulatedPlayerScoresTable[$u]=$singleTextFileArray[$indexx]
		$u+=1
		Next
		;==
		$acumulatedPlayerScoresTable[$u]="*************************";creat a space after in the end of the file
		$u+=1
		;==
;_ArrayDisplay($acumulatedPlayerScoresTable)
;$acumulatedPlayerScoresTable=
;_ArrayColInsert(
	EndIf
  EndIf
EndIf
Next

;=====----====
;For $i=1 To UBound($acumulatedPlayerScoresTable)
;$acumulatedPlayerScoresTable[$i]=
;Next

$returnArray=0
_FileReadToArray(@ScriptDir&"\TeamDivder3.txt",$returnArray);read text file into an array
;_ArrayDisplay($returnArray)
$returnArray[4]=StringTrimLeft($returnArray[4],3)
$returnArray[$returnArray[0]-4]=StringTrimRight($returnArray[$returnArray[0]-4],4)
$rowsToDelete=$returnArray[0]-3&"-"&$returnArray[0]
;MsgBox(0,"rows to d",$rowsToDelete)

_ArrayDelete($returnArray,$rowsToDelete)
$returnArray[0]=$returnArray[0]-4
;_ArrayDisplay($returnArray)
$s=0
$Total_average=0
$NumberOfPlayedGamesIndex=0
$bestPlayerGameEver=0
$Player_round_average=0
$playerGame3=0
$playerGame2=0
$playerGame1=0
$PlayerRoundMaxScore=0
$PlayerRoundMax3Games=0

$playerGame3_forMax3GameCalc=0
$playerGame2_forMax3GameCalc=0
$playerGame1_forMax3GameCalc=0
$iindex=2;cuz i do mod3 divide


;_ArrayDisplay($returnArray)
For $i=0 To Floor(($returnArray[0]-4)/2)
$name_index_table=_ArrayFindAll($acumulatedPlayerScoresTable,$returnArray[4+2*$i]);$returnArray is a list of all players names index 4 is the first name jumps of 2
;$playerAcumlateScores[$i]=$returnArray[4+2*$i]
_ArrayAdd($playerAcumlateScores,$returnArray[4+2*$i])
;_ArrayDisplay($playerAcumlateScores)
	For $j=0 To UBound($name_index_table)-1
		;MsgBox(0,"",$acumulatedPlayerScoresTable[$name_index_table[$j]+1])
	_ArrayAdd($playerAcumlateScores,$acumulatedPlayerScoresTable[$name_index_table[$j]+1])
	_ArrayAdd($playerAcumlateScores,$acumulatedPlayerScoresTable[$name_index_table[$j]+2])
	_ArrayAdd($playerAcumlateScores,$acumulatedPlayerScoresTable[$name_index_table[$j]+3])
	Next


	;_ArrayDisplay($playerAcumlateScores)
		$playerNameIndex=_ArraySearch($playerAcumlateScores,$returnArray[4+2*$i])
		;$NextplayerNameIndex=_ArraySearch($playerAcumlateScores,$returnArray[4+2*($i+1)])

		;put total average at the end of each player , put number of total games at the end of each player
		For $o=$playerNameIndex To UBound($playerAcumlateScores)-2
$iindex+=1
			If $playerAcumlateScores[$o+1]<>"" Then
			$NumberOfPlayedGamesIndex+=1
					If Mod($iindex,3)==0 Then
							If Int($playerAcumlateScores[$o+1])+Int($playerAcumlateScores[$o+2])+Int($playerAcumlateScores[$o+3])>$PlayerRoundMax3Games Then
							$PlayerRoundMax3Games=Int($playerAcumlateScores[$o+1])+Int($playerAcumlateScores[$o+2])+Int($playerAcumlateScores[$o+3])
							EndIf
				;	MsgBox(0,"",$PlayerRoundMax3Games)
					EndIf

				If $playerAcumlateScores[$o+1]>$bestPlayerGameEver Then;check for highest Game
				$bestPlayerGameEver=$playerAcumlateScores[$o+1]

				EndIf

			EndIf

			$Total_average=Int($playerAcumlateScores[$o+1])+$Total_average
		Next
		_ArrayAdd( $playerAcumlateScores,"Total Pins="&$Total_average)
		If $NumberOfPlayedGamesIndex<>0 Then;dont dived with 0 if no played games
		$Total_average=$Total_average/$NumberOfPlayedGamesIndex
		$s=StringFormat("%.2f",$Total_average);SHOW ONLY 2 POINT DECIMAL POINTS (AVERAGE PLAYER SCORE)
		Else
		$Total_average=0
		$s=0
		EndIf

		_ArrayAdd( $playerAcumlateScores,"Games Played="&$NumberOfPlayedGamesIndex)
		_ArrayAdd($playerAcumlateScores,"Total Player AVG="&$s)
		_ArrayAdd($playerAcumlateScores, "Highest Game="&$bestPlayerGameEver)
		$Total_average=0
		$s=0
		$NumberOfPlayedGamesIndex=0
		$bestPlayerGameEver=0
;MsgBox(0,"avg",$Total_average)

;_ArrayAdd($playerAcumlateScores,"Total Average="&);;total average

;_ArrayDisplay($acumulatedPlayerScoresTable)
;_ArrayDisplay($name_index_table)
;MsgBox(0,"",UBound($playerAcumlateScores)-5)
;MsgBox(0,"",$playerAcumlateScores[UBound($playerAcumlateScores)-7])


;calculate round statistics
$playerGame1=Int($playerAcumlateScores[UBound($playerAcumlateScores)-7])
$playerGame2=Int($playerAcumlateScores[UBound($playerAcumlateScores)-6])
$playerGame3=Int($playerAcumlateScores[UBound($playerAcumlateScores)-5])

;MsgBox(0,"",($playerGame1+$playerGame2+$playerGame3))
;MsgBox(0,"",$playerGame2)
;MsgBox(0,"",$playerGame3)

If  $playerGame3 == "" Then  ;this is game 3 of the current round
	$playerGame3=0
EndIf

If  $playerGame2 == "" Then  ;this is game 3 of the current round
	$playerGame2=0
EndIf

If $playerGame1 == "" Then  ;this is game 3 of the current round
	$playerGame1=0
EndIf

;MsgBox(0,"GAME 1+2+3",$playerGame1&" "&$playerGame2&" "&$playerGame3)
;MsgBox(0,"GAME 1+2+3",$playerGame1+$playerGame2+$playerGame3)
;MsgBox(0,"MAX 3 GAMES",$PlayerRoundMax3Games)

;If $playerGame1+$playerGame2+$playerGame3>$PlayerRoundMax3Games Then
;$PlayerRoundMax3Games=$playerGame1+$playerGame2+$playerGame3
;EndIf
;MsgBox(0,$returnArray[4+2*$i],"$playerGame1="&$playerGame1&"$playerGame2="&$playerGame2&"$playerGame3="&$playerGame3&"$PlayerRoundMaxScore"&$PlayerRoundMaxScore)
$PlayerRoundMaxScore=_Max($playerGame1,$playerGame2)
$PlayerRoundMaxScore=_Max($PlayerRoundMaxScore,$playerGame3)

;end calculate route statistics


;_ArrayDisplay($playerAcumlateScores)

$Player_round_average=($playerGame1+$playerGame2+$playerGame3)/3
_ArrayAdd($playerAcumlateScores,"Round Total Pins="&String(($playerGame1+$playerGame2+$playerGame3)))
_ArrayAdd($playerAcumlateScores,"Round Max SCORE="&String($PlayerRoundMaxScore))
_ArrayAdd($playerAcumlateScores,"Round Max Three Games="&String($PlayerRoundMax3Games))
_ArrayAdd($playerAcumlateScores,"Round Player AVG="&String($Player_round_average))

$PlayerRoundMax3Games=0
Next
;_ArrayDisplay($playerAcumlateScores)

;;now creating personal scores table ,all ready just sorting
;For $i=1 To UBound($playerAcumlateScores)-1
;$personalScoreTable_To_OutPut_To_excel=_ArrayColInsert(
$index=0
Local $cellToWrite[9]=["A","B","C","D","E","F","G","H","I"]
$numberOfPlayers=0
For $i=0 To Floor(($returnArray[0]-4)/2)
$numberOfPlayers+=1

$name_index_table=_ArraySearch($playerAcumlateScores,$returnArray[4+2*$i]);
;;
$highestGame_Index=_ArraySearch($playerAcumlateScores,"Highest Game=",$name_index_table,Default,Default,1);
$SplitHighGameName=StringSplit($playerAcumlateScores[$highestGame_Index],"Highest Game=")
;;
;;
$GamesPlayed_Index=_ArraySearch($playerAcumlateScores,"Games Played=",$name_index_table,Default,Default,1);
$SplitGamesPlayedName=StringSplit($playerAcumlateScores[$GamesPlayed_Index],"Games Played=")
;;
;;
$TotalPins_Index=_ArraySearch($playerAcumlateScores,"Total Pins=",$name_index_table,Default,Default,1);
$SplitTotalPinsName=StringSplit($playerAcumlateScores[$TotalPins_Index],"Total Pins=")
;;
;;
$TotalPlayerAVG_Index=_ArraySearch($playerAcumlateScores,"Total Player AVG=",$name_index_table,Default,Default,1);
$SplitPlayerAVGName=StringSplit($playerAcumlateScores[$TotalPlayerAVG_Index],"Total Player AVG=")
;;
;;
$highestGame3Game_Index=_ArraySearch($playerAcumlateScores,"Round Max Three Games=",$name_index_table,Default,Default,1);
$SplitHighest3GameName=StringSplit($playerAcumlateScores[$highestGame3Game_Index],"Round Max Three Games=")
;;

;_ArrayDisplay($SplitHighest3GameName)
$untilIndex=$name_index_table+1
;MsgBox(0,"highGame",$highestGame_Index)

	;For $j=$name_index_table To $untilIndex
$index+=1
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$returnArray[4+2*$i],"B"&($index+7));PLAYER NAME COL
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$returnArray[5+2*$i],"C"&($index+7));TEAM NUMBER COL
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$SplitHighGameName[14],"D"&($index+7));HIGHEST GAME COL
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$SplitHighest3GameName[23],"E"&($index+7));HIGHEST 3 GAME TOTAL COL
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$SplitGamesPlayedName[14],"F"&($index+7));Number Of Games Played COL
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$SplitTotalPinsName[12],"G"&($index+7));TOTAL PINS COL
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$SplitPlayerAVGName[18],"H"&($index+7));PLayer AVG COL
;MsgBox(0,"","")
	;if you find in the cell word "total pins" then exit

	;Next

Next


;MsgBox(0,"STOP","")

;MsgBox(0,"",$numberOfPlayers)
_Excel_RangeSort($excelObject,$excelObject.ActiveSheet,"H8:A1000","H:H",$xlDescending)

Local $positionCol[$numberOfPlayers]
For $i=0 To $numberOfPlayers-1
	 $positionCol[$i]=$i+1
Next
;_ArrayDisplay($positionCol)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$positionCol,"A8")  ;Player Position
If @error Then Exit MsgBox(0,"Error in Object","error number: "&@error)
;all the with is just for the border around each cell


With $excelObject.Activesheet.Range("A7:H"&$numberOfPlayers+7).Borders(7)
	If @error Then Exit MsgBox(0,"Error in Object","error number: "&@error)
.LineStyle=$xlContinuous;21;21
.Weight = 2;21
.ColorIndex=1
EndWith


;MsgBox(0,"",@error)

With $excelObject.Activesheet.Range("A7:H"&$numberOfPlayers+7).Borders(8)
.LineStyle=$xlContinuous;21;21
.Weight = 2;21
.ColorIndex=1
EndWith

With $excelObject.Activesheet.Range("A7:H"&$numberOfPlayers+7).Borders(9)
.LineStyle=$xlContinuous;21;21
.Weight = 2;21
.ColorIndex=1
EndWith


With $excelObject.Activesheet.Range("A7:H"&$numberOfPlayers+7).Borders(10)
.LineStyle=$xlContinuous;21;21
.Weight = 2;21
.ColorIndex=1
EndWith

With $excelObject.Activesheet.Range("A7:H"&$numberOfPlayers+7).Borders(11)
.LineStyle=$xlContinuous;21;21
.Weight = 2;21
.ColorIndex=1
EndWith

With $excelObject.Activesheet.Range("A7:H"&$numberOfPlayers+7).Borders(12)
.LineStyle=$xlContinuous;21;21
.Weight = 2;21
.ColorIndex=1
EndWith

$CurrentRound=1
$CurrentRound_fileName=1
;this is to find out wich round is it
For $i=0 To UBound($aFileStrings)-1
$CurrentRound_fileName=_ArraySearch($aFileStrings,"round_"&$CurrentRound,0,Default,Default,1);
$CurrentRound+=1
If $CurrentRound_fileName=-1 Then
	$CurrentRound=$CurrentRound-2
;MsgBox(0,"",$CurrentRound)
ExitLoop
EndIf

Next

$returnArray22=0
_FileReadToArray(@ScriptDir&"\Game_Schedule.txt",$returnArray22);read text file into an array
$returnArray22=StringSplit($returnArray22[$CurrentRound],"|")
$RoundDate=$returnArray22[2]

_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"עונה","F1")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueInformationArray[1],"F2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"מחזור","E2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$CurrentRound,"D2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"תאריך","E3")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$returnArray22[2],"D3")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"סה""כ שחקנים","E4")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$numberOfPlayers,"D4")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"ממוצע ליגה","E5")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"=FIXED(AVERAGEIF(H8:H"&$numberOfPlayers+7&',"<>0"'&"))","D5");FIXED is to show only 2 decimal points , AVEREGEIF DO AVERAGE SCORE WITHOUT CALC 0
$excelObject.Activesheet.Range("E1:D1").MergeCells = TRUE
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueInformationArray[2],"D1")



$LeagueAverage=_Excel_RangeRead($excelObject,$excelObject.ActiveSheet,"D5")

$LeagueAverageTextFile=FileOpen(@ScriptDir&"\LeagueAverage.txt",2)
FileWriteLine($LeagueAverageTextFile,"League Average is:")
FileWriteLine($LeagueAverageTextFile,$LeagueAverage)


;_Excel_RangeSort($excelObject,$excelObject.ActiveSheet,"H8:A1000","H:H",$xlDescending)


;_Excel_RangeCopyPaste($excelObject.ActiveSheet,"A1:"&"H"&($index+7))
;_Excel_RangeCopyPaste($excelObject.ActiveSheet,"B8:"&"B"&($index+7))
;$excelObject.Sheets (3).Select
;_Excel_RangeCopyPaste($excelObject.ActiveSheet, Default, "A1", Default, $xlPasteValues)
;_Excel_RangeCopyPaste($excelObject.ActiveSheet, Default, "B8:"&"B"&($index+7), Default, $xlPasteValues)
;$excelObject.Sheets (1).Select


;_FileReadToArray(@ScriptDir&"\data\roundNumber.txt",$roundflage)


;_ArrayDisplay($returnArray22)




;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;;;==========================this is games schedual sheet
$excelObject.Sheets (7).Select


$excelObject.Activesheet.Rows("1:700").Font.Bold= TRUE
$excelObject.Activesheet.Rows("1:700").Font.Size= 14
$excelObject.Activesheet.Rows("1:2000").HorizontalAlignment = -4108 ;center text in cell
$excelObject.Activesheet.Range("A4:N4").Interior.ColorIndex= 45 ;orange color in cell




$excelObject.Activesheet.Range("E1:J1").MergeCells = TRUE
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueInformationArray[2],"E1")


$excelObject.Activesheet.Range("E2:J2").MergeCells = TRUE
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"תוכנית מחזורי משחקים","E2")


Local $A4_row[14]=["מסלולים","","1","2","3","4","5","6","7","8","9","10","11","12"]
Local $A5_row[14]=["מחזור","תאריך","קבוצות","","קבוצות","","קבוצות","","קבוצות","","קבוצות","","קבוצות",""]
_ArrayTranspose($A4_row)
_ArrayTranspose($A5_row)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$A4_row,"A4")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$A5_row,"A5")
$excelObject.Activesheet.Range("A4:B4").MergeCells = TRUE
$excelObject.Activesheet.Range("C5:D5").MergeCells = TRUE
$excelObject.Activesheet.Range("E5:F5").MergeCells = TRUE
$excelObject.Activesheet.Range("G5:H5").MergeCells = TRUE
$excelObject.Activesheet.Range("I5:J5").MergeCells = TRUE
$excelObject.Activesheet.Range("K5:L5").MergeCells = TRUE
$excelObject.Activesheet.Range("M5:N5").MergeCells = TRUE
;$excelObject.ActiveSheet.Columns().AutoFit
_FileReadToArray(@ScriptDir&"\Game_Schedule.txt",$returnArray22);read text file into an array
;_ArrayDisplay($returnArray22)

For $i=1 To $returnArray22[0]
$a=StringSplit($returnArray22[$i],"|")
_ArrayDelete($a,0)
_ArrayTranspose($a)

_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$a,"A"&($i+5))
Next
;_ArrayDisplay($a)
$excelObject.ActiveSheet.Columns("B").AutoFit

Global $DOWN_BORDER=9
Global $UP_BORDER=8
Global $LEFT_BORDER=7
Global $RIGHT_BORDER=10

For $i=0 To 6
	Local $cell[7]=["B","D","F","H","J","L","N"]
With $excelObject.Activesheet.Range($cell[$i]&"4"&":"&$cell[$i]&$returnArray22[0]+5).Borders($RIGHT_BORDER)
.LineStyle=$xlContinuous;21;21
.Weight = 3;21
.ColorIndex=1
EndWith
Next

With $excelObject.Activesheet.Range("A4:N4").Borders($UP_BORDER)
.LineStyle=$xlContinuous;21;21
.Weight = 3;21
.ColorIndex=1
EndWith

With $excelObject.Activesheet.Range("A4"&":A"&($returnArray22[0]+5)).Borders($LEFT_BORDER)
.LineStyle=$xlContinuous;21;21
.Weight = 3;21
.ColorIndex=1
EndWith

With $excelObject.Activesheet.Range("A"&($returnArray22[0]+5)&":N"&($returnArray22[0]+5)).Borders($DOWN_BORDER)
.LineStyle=$xlContinuous;21;21
.Weight = 3;21
.ColorIndex=1
EndWith

With $excelObject.Activesheet.Range("A5:N5").Borders($DOWN_BORDER)
.LineStyle=$xlContinuous;21;21
.Weight = 3;21
.ColorIndex=1
EndWith


;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;;;==========================this is games schedual sheet


;======================================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;;;==========================this is Round Best Players sheet


;$returnArray;;names and team of players

$excelObject.Sheets (3).Select
;to freeze pane
$openExcel.Activesheet.Rows("8:8").Select
$openExcel.ActiveWindow.FreezePanes= TRUE
;==

$excelObject.Activesheet.Rows("1:7").Font.Bold= TRUE
$excelObject.Activesheet.Rows("1:7").Font.Size= 14
$excelObject.Activesheet.Rows("1:2000").HorizontalAlignment = -4108 ;center text in cell
$excelObject.Activesheet.Range("A7:H7").Interior.ColorIndex= 45 ;orange color in cell



_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"עונה","F1")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueInformationArray[1],"F2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"מחזור","E2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$CurrentRound,"D2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"תאריך","E3")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$RoundDate,"D3")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"סה""כ שחקנים","E4")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$numberOfPlayers,"D4")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"ממוצע ליגה","E5")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueAverage,"D5");FIXED is to show only 2 decimal points , AVEREGEIF DO AVERAGE SCORE WITHOUT CALC 0
$excelObject.Activesheet.Range("E1:D1").MergeCells = TRUE
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueInformationArray[2],"D1")



Local $A7_row[14]=["מיקום","שם השחקן","מספר קבוצה","משחק ראשון","משחק שני","משחק שלישי","ממוצע למחזור"," סהכ פינים למחזור"]



_ArrayTranspose($A7_row)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$A7_row,"A7")

Local $RowToPutInExcel[1][8]

$teamIndex=4
For $i=0 To Floor(($returnArray[0]-4)/2)
$teamIndex+=1
;$numberOfPlayers+=1

$name_index_table=_ArraySearch($playerAcumlateScores,$returnArray[4+2*$i]);
;;
;;
$TotalPins_Index=_ArraySearch($playerAcumlateScores,"Total Pins=",$name_index_table,Default,Default,1);
$RoundGame1=$playerAcumlateScores[$TotalPins_Index-3]
$RoundGame2=$playerAcumlateScores[$TotalPins_Index-2]
$RoundGame3=$playerAcumlateScores[$TotalPins_Index-1]

If $RoundGame1="" Then
	$RoundGame1=0
EndIf

If $RoundGame2="" Then
	$RoundGame2=0
EndIf

If $RoundGame3="" Then
	$RoundGame3=0
EndIf

;MsgBox(0,"",$name_index_table)
;_ArrayDisplay($RowToPutInExcel)

$RowToPutInExcel[0][0]=$playerAcumlateScores[$name_index_table] ;player name
$RowToPutInExcel[0][1]= $returnArray[$i+$teamIndex]; team Number , will be copyed from previous sheet$
$RowToPutInExcel[0][2]=$RoundGame1
$RowToPutInExcel[0][3]=$RoundGame2
$RowToPutInExcel[0][4]=$RoundGame3

$RowToPutInExcel[0][5]=StringFormat("%.2f",(Int($RoundGame1)+Int($RoundGame2)+Int($RoundGame3))/3)
$RowToPutInExcel[0][6]=(Int($RoundGame1)+Int($RoundGame2)+Int($RoundGame3))
;_ArrayTranspose($RowToPutInExcel)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$RowToPutInExcel,"B"&($i+8))
;MsgBox(0,"",$RoundGame1&" "&$RoundGame2&" "&$RoundGame3)
;;
;;
;_ArrayTranspose($RowToPutInExcel)

;_ArrayDisplay($SplitHighest3GameName)
$untilIndex=$name_index_table+1
;_ArrayDisplay($returnArray,$i)
Next

_Excel_RangeSort($excelObject,$excelObject.ActiveSheet,"H8:A1000","H:H",$xlDescending)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$positionCol,"A8")  ;Player Position
$excelObject.ActiveSheet.Columns().AutoFit


;======================================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;;;==========================this is Round Best Players sheet



;======================================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;;;==========================this is Best Single Score Game sheet

$excelObject.Sheets (4).Select
;to freeze pane
$openExcel.Activesheet.Rows("8:8").Select
$openExcel.ActiveWindow.FreezePanes= TRUE
;==

$excelObject.Activesheet.Rows("1:7").Font.Bold= TRUE
$excelObject.Activesheet.Rows("1:7").Font.Size= 14
$excelObject.Activesheet.Rows("1:2000").HorizontalAlignment = -4108 ;center text in cell
$excelObject.Activesheet.Range("A7:E7").Interior.ColorIndex= 45 ;orange color in cell



_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"עונה","D1")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueInformationArray[1],"D2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"מחזור","C2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$CurrentRound,"B2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"תאריך","C3")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$RoundDate,"B3")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"סה""כ שחקנים","C4")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$numberOfPlayers,"B4")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"ממוצע ליגה","C5")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueAverage,"B5");FIXED is to show only 2 decimal points , AVEREGEIF DO AVERAGE SCORE WITHOUT CALC 0
$excelObject.Activesheet.Range("C1:B1").MergeCells = TRUE
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueInformationArray[2],"B1")



Local $A7_row[6]=["מיקום","שם השחקן","מספר קבוצה","מספר משחקים","שיא למשחק בודד"]



_ArrayTranspose($A7_row)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$A7_row,"A7")

Local $RowToPutInExcel[1][8]

$teamIndex=4
For $i=0 To Floor(($returnArray[0]-4)/2)
$teamIndex+=1
;$numberOfPlayers+=1

$name_index_table=_ArraySearch($playerAcumlateScores,$returnArray[4+2*$i]);
;;
;;
$highestGame_Index=_ArraySearch($playerAcumlateScores,"Highest Game=",$name_index_table,Default,Default,1);
;_ArrayDisplay($playerAcumlateScores,$highestGame_Index)
$HighestGame=$playerAcumlateScores[$highestGame_Index]

$HighestGame=StringSplit($HighestGame,"Highest Game=")
$HighestGame=$HighestGame[14]
;;;
;;;
$GamesPlayed=$playerAcumlateScores[$highestGame_Index-2]
$GamesPlayed=StringSplit($GamesPlayed,"Games Played=")
$GamesPlayed=$GamesPlayed[14]



$RowToPutInExcel[0][0]=$playerAcumlateScores[$name_index_table] ;player name
$RowToPutInExcel[0][1]= $returnArray[$i+$teamIndex]; team Number , will be copyed from previous sheet$
$RowToPutInExcel[0][2]=$GamesPlayed
$RowToPutInExcel[0][3]=$HighestGame

_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$RowToPutInExcel,"B"&($i+8))

$untilIndex=$name_index_table+1


Next

_Excel_RangeSort($excelObject,$excelObject.ActiveSheet,"E8:A1000","E:E",$xlDescending)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$positionCol,"A8")  ;Player Position



$excelObject.ActiveSheet.Columns().AutoFit

;======================================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;;;==========================this is Best Single Score Game sheet

;======================================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;;;==========================this is Best 3 games Score sheet
$excelObject.Sheets (5).Select
;to freeze pane
$openExcel.Activesheet.Rows("8:8").Select
$openExcel.ActiveWindow.FreezePanes= TRUE
;==

$excelObject.Activesheet.Rows("1:7").Font.Bold= TRUE
$excelObject.Activesheet.Rows("1:7").Font.Size= 14
$excelObject.Activesheet.Rows("1:2000").HorizontalAlignment = -4108 ;center text in cell
$excelObject.Activesheet.Range("A7:F7").Interior.ColorIndex= 45 ;orange color in cell



_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"עונה","D1")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueInformationArray[1],"D2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"מחזור","C2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$CurrentRound,"B2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"תאריך","C3")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$RoundDate,"B3")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"סה""כ שחקנים","C4")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$numberOfPlayers,"B4")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"ממוצע ליגה","C5")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueAverage,"B5");FIXED is to show only 2 decimal points , AVEREGEIF DO AVERAGE SCORE WITHOUT CALC 0
$excelObject.Activesheet.Range("C1:B1").MergeCells = TRUE
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueInformationArray[2],"B1")



Local $A7_row[6]=["מיקום","שם השחקן","מספר קבוצה","מספר משחקים","ממוצע שלישיית משחקים","שיא שלישיית משחקים"]



_ArrayTranspose($A7_row)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$A7_row,"A7")

Local $RowToPutInExcel[1][8]

$teamIndex=4
For $i=0 To Floor(($returnArray[0]-4)/2)
$teamIndex+=1
;$numberOfPlayers+=1

$name_index_table=_ArraySearch($playerAcumlateScores,$returnArray[4+2*$i]);
;;
;;
$highestGame_Index=_ArraySearch($playerAcumlateScores,"Round Max Three Games=",$name_index_table,Default,Default,1);
;_ArrayDisplay($playerAcumlateScores,$highestGame_Index)
$HighestGame=$playerAcumlateScores[$highestGame_Index]
$HighestGame=StringSplit($HighestGame,"Round Max Three Games=")
$HighestGame=$HighestGame[23]
;;;
;;;
$GamesPlayed=$playerAcumlateScores[$highestGame_Index-5]
$GamesPlayed=StringSplit($GamesPlayed,"Games Played=")
$GamesPlayed=$GamesPlayed[14]

$averege3Game_Max=$HighestGame/3
$averege3Game_Max=StringFormat("%.2f",$averege3Game_Max);SHOW ONLY 2 POINT DECIMAL POINTS (AVERAGE PLAYER SCORE)

$RowToPutInExcel[0][0]=$playerAcumlateScores[$name_index_table] ;player name
$RowToPutInExcel[0][1]= $returnArray[$i+$teamIndex]; team Number , will be copyed from previous sheet$
$RowToPutInExcel[0][2]=$GamesPlayed
$RowToPutInExcel[0][3]=$averege3Game_Max
$RowToPutInExcel[0][4]=$HighestGame




_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$RowToPutInExcel,"B"&($i+8))

$untilIndex=$name_index_table+1


Next

_Excel_RangeSort($excelObject,$excelObject.ActiveSheet,"F8:A1000","F:F",$xlDescending)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$positionCol,"A8")  ;Player Position



$excelObject.ActiveSheet.Columns().AutoFit






;======================================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;;;==========================this is Best 3 Games sheet



;======================================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;;;==========================this is Teams Standing sheet
$excelObject.Sheets (2).Select
$openExcel.Activesheet.Rows("8:8").Select
$openExcel.ActiveWindow.FreezePanes= TRUE
;==

$excelObject.Activesheet.Rows("1:7").Font.Bold= TRUE
$excelObject.Activesheet.Rows("1:7").Font.Size= 14
$excelObject.Activesheet.Rows("1:2000").HorizontalAlignment = -4108 ;center text in cell
$excelObject.Activesheet.Columns("A:F").VerticalAlignment = -4108 ;center text in cell
$excelObject.Activesheet.Range("A7:F7").Interior.ColorIndex= 45 ;orange color in cell
;$excelObject.Activesheet.Columns("C").ColumnWidth=40


_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"עונה","D1")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueInformationArray[1],"D2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"מחזור","C2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$CurrentRound,"B2")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"תאריך","C3")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$RoundDate,"B3")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"סה""כ שחקנים","C4")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$numberOfPlayers,"B4")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,"ממוצע ליגה","C5")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueAverage,"B5");FIXED is to show only 2 decimal points , AVEREGEIF DO AVERAGE SCORE WITHOUT CALC 0
$excelObject.Activesheet.Range("C1:B1").MergeCells = TRUE
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$LeagueInformationArray[2],"B1")


Local $A7_row[6]=["מיקום","מספר קבוצה","שמות שחקנים","שיא משחק","שיא שלישיית משחקים","נקודות"]

_ArrayTranspose($A7_row)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$A7_row,"A7")

$TeamPointsArray=0
_FileReadToArray(@ScriptDir&"\data\Teams_Points.txt",$TeamPointsArray,0,",")

$TeamHighest1GameTotalArray=0
_FileReadToArray(@ScriptDir&"\data\Teams_Points_Highest_1_Game_total.txt",$TeamHighest1GameTotalArray,0,",")

$TeamHighest3GameTotalArray=0
_FileReadToArray(@ScriptDir&"\data\Teams_Points_Highest_3_Games.txt",$TeamHighest3GameTotalArray,0,",")

_ArrayDisplay($TeamHighest1GameTotalArray)


;_ArrayDisplay($TeamPointsArray)

$team1_total_points=0
Local $team_acumelated_score_array[11]
Local $team_acumelated_Max1Game_array[11]
Local $team_acumelated_Max3Game_array[11]

For $teamNumber=1 To 11
      For $rounds=1 to 70
		$team1_total_points+=Number($TeamPointsArray[$teamNumber][$rounds])
	  Next
$team_acumelated_score_array[$teamNumber-1]=$team1_total_points

$team1_total_points=0
Next
;_ArrayDisplay($team_acumelated_score_array)

Local $teamNumberCol[11]
For $i=0 To 10
	 $teamNumberCol[$i]=$i+1
Next

;Local $teamNumberCol2[50]=["","1","","","2","","","3","","","4","","","5","","","6","","","7","","","8","","","9","","","10","","","11",""]
;Local $team_acumelated_score_array_spread[50]=["",$team_acumelated_score_array[0],"","",$team_acumelated_score_array[1],"","",$team_acumelated_score_array[2],"","",$team_acumelated_score_array[3],"","",$team_acumelated_score_array[4],"","",$team_acumelated_score_array[5],"","",$team_acumelated_score_array[6],"","",$team_acumelated_score_array[7],"","",$team_acumelated_score_array[8],"","",$team_acumelated_score_array[9],"","",$team_acumelated_score_array[10],""]

$TeamHighest1GameTotalArray_dummy=_ArrayExtract($TeamHighest1GameTotalArray,1,1,1,69)
;MsgBox(0,"error="&@error,$TeamHighest1GameTotalArray_dummy)
;_ArrayDisplay($TeamHighest1GameTotalArray_dummy)
$team_acumelated_Max1Game_array_to_excel=_ArrayMax($TeamHighest1GameTotalArray_dummy,0)
MsgBox(0,"max1gamt1=",$team_acumelated_Max1Game_array_to_excel)


_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$teamNumberCol,"B8")
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$team_acumelated_score_array,"F8")
;got this from web - very good
;For $col=0 To 70;70 round is more then enogh
;	For $row=0 To 11

;~ For $i=8 to 39 Step 3
;~ $excelObject.Activesheet.Range("A"&$i&":A"&($i+2)).MergeCells = TRUE
;~ $excelObject.Activesheet.Range("B"&$i&":B"&($i+2)).MergeCells = TRUE
;~ $excelObject.Activesheet.Range("C"&$i&":C"&($i+2)).MergeCells = TRUE
;~ $excelObject.Activesheet.Range("D"&$i&":D"&($i+2)).MergeCells = TRUE
;~ $excelObject.Activesheet.Range("E"&$i&":E"&($i+2)).MergeCells = TRUE
;~ $excelObject.Activesheet.Range("F"&$i&":F"&($i+2)).MergeCells = TRUE
;~ Next

;$excelObject.Activesheet.Range("B11:B13").MergeCells = TRUE
;$excelObject.Activesheet.Range("F8:F10").MergeCells = TRUE
Local $names_team[11]

For $i=0 To 10
$names_team[$i]=$returnArray[6*$i+4]&" "&@CRLF&$returnArray[6*$i+6]&" "&@CRLF&$returnArray[6*$i+8]
;$names_team[1]=$returnArray[10]&" "&@CRLF&$returnArray[12]&" "&@CRLF&$returnArray[14]
Next

_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$names_team,"C8")
;_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$names_team2,"C9")
;_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$positionCol,"C8")  ;DUMMY DELETE THIS!


_Excel_RangeSort($excelObject,$excelObject.ActiveSheet,"F8:A18","F:F",$xlDescending)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$teamNumberCol,"A8")


$excelObject.ActiveSheet.Columns().AutoFit





;======================================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;=========================================================
;;;==========================this is Teams Standing sheet



$excelObject.Sheets (1).Select
;save file end
_Excel_BookSaveAs($excelObject,@ScriptDir&"\..\Output_Excel_Files\round"&$CurrentRound&".xls",Default,True)
;_Excel_RangeSort

FileChangeDir(@ScriptDir&'\..\Output_Excel_Files')

Local $fDiff = TimerDiff($hTimer)/1000
$timeInSec=StringFormat("%.2f",$fDiff)
MsgBox(0,"DONE","Finished in: "&$timeInSec& " sec"&@CRLF&"Created file: "& @WorkingDir&"\round"&$CurrentRound&".xls")