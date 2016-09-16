#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=pic\images.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <Excel.au3>
#include <DateTimeConstants.au3>
#include <EditConstants.au3>
#include <StaticConstants.au3>
#include <File.au3>
#include <MsgBoxConstants.au3>
#include <Math.au3>
;#include "bowlingTableTry.au3"
;#include "rawData/GUIListViewEx.au3"



; Create application object and create a new workbook
Local $openExcel = _Excel_Open()
If @error Then Exit MsgBox($MB_SYSTEMMODAL, "Excel UDF: _Excel_RangeWrite Example", "Error creating the Excel application object." & @CRLF & "@error = " & @error & ", @extended = " & @extended)
Local $excelObject = _Excel_BookNew($openExcel)
If @error Then
    MsgBox($MB_SYSTEMMODAL, "Excel UDF: _Excel_RangeWrite Example", "Error creating the new workbook." & @CRLF & "@error = " & @error & ", @extended = " & @extended)
    _Excel_Close($openExcel)
    Exit
EndIf



; *****************************************************************************
; Insert 7 sheets after the last sheet and name them
; *****************************************************************************
_Excel_SheetAdd($excelObject, -1, False,7, "������ ������ |������|����� �����| ����� ������|���� ����� ������|������ ��������|������ ������")
_Excel_SheetDelete($excelObject,1)
_Excel_SheetDelete($excelObject,1)
_Excel_SheetDelete($excelObject,1)

Local $aWorkSheets = _Excel_SheetList($excelObject)
;_ArrayDisplay($aWorkSheets)
$excelObject.Sheets (1).Select
;to freeze pane
$openExcel.Activesheet.Rows("6:6").Select
$openExcel.ActiveWindow.FreezePanes= TRUE
;==

;$excelObject.Activesheet.Rows("6:6").Select
;$excelObject.ActiveWindow.FreezePanes= TRUE
$excelObject.Activesheet.Rows("2:5").Font.Bold= TRUE
$excelObject.Activesheet.Rows("2:5").Font.Size= 14
$excelObject.Activesheet.Rows("1:2000").HorizontalAlignment = -4108 ;center text in cell
$excelObject.Activesheet.Range("A5:H5").Interior.ColorIndex= 45 ;orange color in cell
$excelObject.Activesheet.Range("A5:H5").BorderAround




With $excelObject.Activesheet.Range("A5:B5").Borders(10)
.LineStyle=21;21
.Weight = 21;21
.ColorIndex=1
EndWith


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

;Local $Row_A5[18]=["����� ����","�� �����","���� �����","���� ���","���� ����","������ �����","���� ������","��� �����","����� ����"]
Local $Row_A5[18]=["����� ����","�� �����","���� �����","���� ����","������ �����","���� ������","��� �����","����� ����"]
_ArrayTranspose($Row_A5)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$Row_A5,"A5")
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

_ArrayDisplay($aFileStrings)


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
Local $acumulatedPlayerScoresTable[1000]
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

_ArrayDisplay($returnArray)
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

			If $playerAcumlateScores[$o+1]<>"" Then
			$NumberOfPlayedGamesIndex+=1

				If $playerAcumlateScores[$o+1]>$bestPlayerGameEver Then;check for highest Game
				$bestPlayerGameEver=$playerAcumlateScores[$o+1]

				EndIf

			EndIf

			$Total_average=Int($playerAcumlateScores[$o+1])+$Total_average
		Next
		_ArrayAdd( $playerAcumlateScores,"Total Pins="&$Total_average)
		If $NumberOfPlayedGamesIndex<>0 Then;dont dived with 0 if no played games
		$Total_average=$Total_average/$NumberOfPlayedGamesIndex
		$s=StringFormat("%.2f",$Total_average)
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


$PlayerRoundMaxScore=_Max($playerGame1,$playerGame2)
$PlayerRoundMaxScore=_Max($PlayerRoundMaxScore,$playerGame3)

;end calculate route statistics


;_ArrayDisplay($playerAcumlateScores)

$Player_round_average=($playerGame1+$playerGame2+$playerGame3)/3
_ArrayAdd($playerAcumlateScores,"Round Total Pins="&String(($playerGame1+$playerGame2+$playerGame3)))
_ArrayAdd($playerAcumlateScores,"Round Max SCORE="&String($PlayerRoundMaxScore))
_ArrayAdd($playerAcumlateScores,"Round Player AVG="&String($Player_round_average))

Next
_ArrayDisplay($playerAcumlateScores)

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

;_ArrayDisplay($SplitPlayerAVGName)
$untilIndex=$name_index_table+1
;MsgBox(0,"highGame",$highestGame_Index)

	;For $j=$name_index_table To $untilIndex
$index+=1
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$returnArray[4+2*$i],"B"&($index+5));PLAYER NAME COL
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$returnArray[5+2*$i],"C"&($index+5));TEAM NUMBER COL
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$SplitHighGameName[14],"D"&($index+5));HIGHEST GAME COL
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$SplitGamesPlayedName[14],"F"&($index+5));Number Of Games Played COL
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$SplitTotalPinsName[12],"G"&($index+5));TOTAL PINS COL
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$SplitPlayerAVGName[18],"H"&($index+5));PLayer AVG COL
;MsgBox(0,"","")
	;if you find in the cell word "total pins" then exit

	;Next

Next
_Excel_RangeSort($excelObject,$excelObject.ActiveSheet,"H6:A1000","H:H",$xlDescending)
;MsgBox(0,"",$numberOfPlayers)
Local $positionCol[$numberOfPlayers]
For $i=0 To $numberOfPlayers-1
	 $positionCol[$i]=$i+1
Next
;_ArrayDisplay($positionCol)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$positionCol,"A6")  ;Player Position
;==
;$returnArray=0
;_FileReadToArray(@ScriptDir&"\rawData\PlayerNames.txt",$returnArray);read text file into an array
;_ArrayDelete($returnArray,0)
;_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$returnArray,"B6")
_Excel_BookSaveAs($excelObject,@ScriptDir&"\..\Output_Excel_Files\round1.xls",Default,True)
;_Excel_RangeSort