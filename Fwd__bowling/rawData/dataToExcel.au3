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
_Excel_SheetAdd($excelObject, -1, False,7, "תוצאות אישיות|קבוצתי|נבחרת השבוע|שיאים אישיים|טבלת מיקום קבוצות|קבוצות וממוצעים|תוכנית משחקים")
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
$excelObject.Activesheet.Rows("1:20").HorizontalAlignment = -4108 ;center text in cell
$excelObject.Activesheet.Range("A5:I5").Interior.ColorIndex= 45 ;orange color in cell
$excelObject.Activesheet.Range("A5:I5").BorderAround




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

Local $Row_A5[18]=["מיקום אישי","שם השחקן","מספר קבוצה","מספר חבר","משחק גבוה","שלישיה גבוהה","מספר משחקים","סהכ פינים","ממוצע אישי"]
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
Local $u=0
;_ArrayDisplay($acumulatedPlayerScoresTable)
For $index3=1 to UBound($aFileStrings)-1
 $singleTextFileArray=$aFileStrings[$index3][1];acsses array within array
; $singleTextFileArray=_ArrayConcatenate($aFileStrings[1+$index3*2][1],$aFileStrings[$index3*2+2][1]
;$acumulatedPlayerScoresTable=_ArrayConcatenate($acumulatedPlayerScoresTable,$singleTextFileArray)

;[[$acumulatedPlayerScoresTable],[$singleTextFileArray]]
;_ArrayDisplay($singleTextFileArray)
If IsArray($singleTextFileArray) Then

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
Next

;=====----====
;For $i=1 To UBound($acumulatedPlayerScoresTable)
;$acumulatedPlayerScoresTable[$i]=
;Next

$returnArray=0
_FileReadToArray(@ScriptDir&"\TeamDivder3.txt",$returnArray);read text file into an array
$returnArray[4]=StringTrimLeft($returnArray[4],3)
$returnArray[0]=$returnArray[0]-4
$rowsToDelete=$returnArray[0]-3&"-"&$returnArray[0]
;MsgBox(0,"rows to d",$rowsToDelete)
_ArrayDelete($returnArray,$rowsToDelete)
_ArrayDisplay($returnArray)
$name_index_table=_ArrayFindAll($acumulatedPlayerScoresTable,"אייל למפל")
_ArrayDisplay($name_index_table)

;==
;$returnArray=0
;_FileReadToArray(@ScriptDir&"\rawData\PlayerNames.txt",$returnArray);read text file into an array
;_ArrayDelete($returnArray,0)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$returnArray,"B6")
_Excel_BookSaveAs($excelObject,@ScriptDir&"\..\Output_Excel_Files\round1.xls",Default,True)
;_Excel_RangeSort