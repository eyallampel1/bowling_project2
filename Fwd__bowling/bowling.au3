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
#include "GUIListViewEx.au3"

#Region ### START Koda GUI section ### Form=c:\users\hilalampel\documents\bowling.kxf
$Form1_1 = GUICreate("Ahsdod Bowling", 1125, 647, 118, 12)
$CreateTablesButton = GUICtrlCreateButton("Create tables", 378, 520, 75, 25)
;$Label1 = GUICtrlCreateLabel("Open Screen", 440, 8, 81, 17)
;$Label12 = GUICtrlCreateLabel("Date", 928, 48, 37, 17)
;$MonthCal1 = GUICtrlCreateMonthCal("2016/08/02", 848, 72, 257, 155)
$insertDataButton = GUICtrlCreateButton("Enter Data", 610, 520, 75, 25)
$Label15 = GUICtrlCreateLabel("Round Number", 926, 25, 86, 17)
$RoundNumberInput = GUICtrlCreateInput("", 870, 25, 49, 21,$ES_CENTER)
$PrintGamesCurrentDateButton = GUICtrlCreateButton("Print Round", 472, 520, 123, 25)
;================================================= team 2====================================
$Group2 = GUICtrlCreateGroup("", 176, 290, 609, 225)
$TeamPlayer1Name_2 = GUICtrlCreateInput("", 613, 386, 153, 21,BitOR($ES_CENTER,$ES_READONLY))
$Player1_score_game1_2 = GUICtrlCreateInput("", 541, 386, 49, 21,$ES_CENTER)
$Player1_score_game2_2 = GUICtrlCreateInput("", 488, 386, 49, 21,$ES_CENTER)
$Player1_score_game3_2 = GUICtrlCreateInput("", 433, 386, 49, 21,$ES_CENTER)
$Label4 = GUICtrlCreateLabel("Game 2", 488, 362, 43, 17)
$Label16 = GUICtrlCreateLabel("Name", 680, 362, 28, 17)
$Label17 = GUICtrlCreateLabel("Game 1", 544, 362, 43, 17)
$Label18 = GUICtrlCreateLabel("Game 3", 433, 362, 43, 17)
$TeamPlayer2Name_2 = GUICtrlCreateInput("", 613, 416, 153, 21,BitOR($ES_CENTER,$ES_READONLY))
$Player2_score_game1_2 = GUICtrlCreateInput("", 541, 416, 49, 21,$ES_CENTER)
$Player2_score_game2_2 = GUICtrlCreateInput("", 488, 416, 49, 21,$ES_CENTER)
$Player2_score_game3_2 = GUICtrlCreateInput("", 433, 416, 49, 21,$ES_CENTER)
$TeamPlayer3Name_2 = GUICtrlCreateInput("", 613, 446, 153, 21,BitOR($ES_CENTER,$ES_READONLY))
$Player3_score_game1_2 = GUICtrlCreateInput("", 541, 446, 49, 21,$ES_CENTER)
$Player3_score_game2_2 = GUICtrlCreateInput("", 488, 446, 49, 21,$ES_CENTER)
$Player3_score_game3_2 = GUICtrlCreateInput("", 433, 446, 49, 21,$ES_CENTER)
$Label19 = GUICtrlCreateLabel("Handicap", 370, 362, 59, 17)
$HandicapPlayer1_2 = GUICtrlCreateInput("", 370, 386, 49, 21,$ES_CENTER)
$HandicapPlayer2_2 = GUICtrlCreateInput("", 370, 416, 49, 21,$ES_CENTER)
$HandicapPlayer3_2 = GUICtrlCreateInput("", 370, 446, 49, 21,$ES_CENTER)

;$Label20 = GUICtrlCreateLabel("Round Average", 256, 352, 75, 17)
;$Player1_round_avarege_2 = GUICtrlCreateInput("", 264, 376, 49, 21,BitOR($ES_CENTER,$ES_READONLY))
;$Player2_round_avarege_2 = GUICtrlCreateInput("", 264, 408, 49, 21,BitOR($ES_CENTER,$ES_READONLY))
;$Player3_round_avarege_2 = GUICtrlCreateInput("", 264, 432, 49, 21,BitOR($ES_CENTER,$ES_READONLY))
;$Label21 = GUICtrlCreateLabel("Season Average", 338, 354, 87, 17)
;$Player1_Season_Average_2 = GUICtrlCreateInput("", 338, 378, 49, 21,$ES_CENTER)
;$Player2_Season_Average_2 = GUICtrlCreateInput("", 338, 410, 49, 21,$ES_CENTER)
;$Player3_Season_Average_2 = GUICtrlCreateInput("", 338, 434, 49, 21,$ES_CENTER)
$Label22 = GUICtrlCreateLabel("Team Number", 432, 301, 75, 17)
$TeamNumber_2_inputbox = GUICtrlCreateInput("", 440, 325, 49, 21,$ES_CENTER)
;$TotalPins_Plus_Handicap_team2 = GUICtrlCreateInput("", 356, 485, 49, 21,BitOR($ES_CENTER,$ES_READONLY))
$ScoreTeam2 = GUICtrlCreateInput("", 190, 484, 49, 21,$ES_CENTER)
;$Label23 = GUICtrlCreateLabel("Team Total Pins + Handicap", 414, 485, 163, 17)
$Label24 = GUICtrlCreateLabel("Score", 243, 489, 28, 17)
;$Label7 = GUICtrlCreateLabel("Team Total Pins", 670, 479, 99, 17)
;$TotalPins_team2 = GUICtrlCreateInput("", 612, 479, 49, 21,BitOR($ES_CENTER,$ES_READONLY));group pins b
;================================================= team 2====================================

;================================================= team 1====================================
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group1 = GUICtrlCreateGroup("", 173, 31, 609, 225)
$TeamPlayer1Name_1 = GUICtrlCreateInput("", 613, 127, 153, 21,BitOR($ES_CENTER,$ES_READONLY));player 1 name - team 1
$Player1_score_game1_1 = GUICtrlCreateInput("", 541, 127, 49, 21,$ES_CENTER)
$Player1_score_game2_1 = GUICtrlCreateInput("", 488, 127, 49, 21,$ES_CENTER)
$Player1_score_game3_1 = GUICtrlCreateInput("", 433, 127, 49, 21,$ES_CENTER);;game3 team 1 input
;$Player1_round_avarege_1 = GUICtrlCreateInput("", 261, 117, 49, 21,BitOR($ES_CENTER,$ES_READONLY))
$Label2 = GUICtrlCreateLabel("Game 2", 488, 103, 43, 17)
$Label3 = GUICtrlCreateLabel("Name", 677, 103, 28, 17)
$Label5 = GUICtrlCreateLabel("Game 1", 541, 103, 43, 17)
$Label6 = GUICtrlCreateLabel("Game 3", 433, 103, 43, 17)

$TeamPlayer2Name_1 = GUICtrlCreateInput("", 613, 157, 153, 21,BitOR($ES_CENTER,$ES_READONLY))
$Player2_score_game1_1 = GUICtrlCreateInput("", 541, 157, 49, 21,$ES_CENTER)
$Player2_score_game2_1 = GUICtrlCreateInput("", 488, 157, 49, 21,$ES_CENTER)
$Player2_score_game3_1 = GUICtrlCreateInput("", 433, 157, 49, 21,$ES_CENTER)
$TeamPlayer3Name_1 = GUICtrlCreateInput("", 613, 187, 153, 21,BitOR($ES_CENTER,$ES_READONLY))
$Player3_score_game1_1 = GUICtrlCreateInput("", 541, 187, 49, 21,$ES_CENTER)
$Player3_score_game2_1 = GUICtrlCreateInput("", 488, 187, 49, 21,$ES_CENTER)
$Player3_score_game3_1 = GUICtrlCreateInput("", 433, 187, 49, 21,$ES_CENTER)
$Label8 = GUICtrlCreateLabel("Handicap", 370, 103, 59, 17)
$HandicapPlayer1_1 = GUICtrlCreateInput("", 370, 127, 49, 21,$ES_CENTER)
$HandicapPlayer2_1 = GUICtrlCreateInput("", 370, 157, 49, 21,$ES_CENTER)
$HandicapPlayer3_1 = GUICtrlCreateInput("", 370, 187, 49, 21,$ES_CENTER)

;$Label9 = GUICtrlCreateLabel("Round Average", 253, 93, 75, 17)

;$Player2_round_avarege_1 = GUICtrlCreateInput("", 261, 149, 49, 21,BitOR($ES_CENTER,$ES_READONLY))
;$Player3_round_avarege_1 = GUICtrlCreateInput("", 261, 173, 49, 21,BitOR($ES_CENTER,$ES_READONLY))
;$Label10 = GUICtrlCreateLabel("Season Average", 335, 95, 87, 17)
;$Player1_Season_Average_1 = GUICtrlCreateInput("", 335, 119, 49, 21,$ES_CENTER)
;$Player2_Season_Average_1 = GUICtrlCreateInput("", 335, 151, 49, 21,$ES_CENTER)
;$Player3_Season_Average_1 = GUICtrlCreateInput("", 335, 175, 49, 21,$ES_CENTER)
$Label11 = GUICtrlCreateLabel("Team Number", 429, 42, 75, 17)
$TeamNumber_1_inputbox = GUICtrlCreateInput("", 437, 66, 49, 21,$ES_CENTER)
;$TotalPins_Plus_Handicap_team1 = GUICtrlCreateInput("", 353, 226, 49, 21,BitOR($ES_CENTER,$ES_READONLY))
$ScoreTeam1 = GUICtrlCreateInput("", 187, 225, 49, 21,$ES_CENTER)
;$Label13 = GUICtrlCreateLabel("Team Total Pins + Handicap", 411, 226, 163, 17)
$Label14 = GUICtrlCreateLabel("Score", 240, 230, 28, 17)
;$Label25 = GUICtrlCreateLabel("Team Total Pins", 667, 220, 99, 17)
;$TotalPins_team1 = GUICtrlCreateInput("", 609, 220, 49, 21,BitOR($ES_CENTER,$ES_READONLY))
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Label26 = GUICtrlCreateLabel("VS", 460, 267, 29, 17)
$Group3 = GUICtrlCreateGroup("First time use", 840, 304, 185, 113)
$InsertPlayersNamesInitialInsertButton = GUICtrlCreateButton("Players names", 864, 328, 139, 25)
;$DivideIntoTeamsInitialInsertButton = GUICtrlCreateButton("team divider", 864, 376, 139, 25)
$InseartGamesDateButton = GUICtrlCreateButton("Games Schedule", 864, 376, 139, 25)
$editRoundScoresButton = GUICtrlCreateButton("view / edit round scores", 220, 520, 139, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
;================================================= team 1====================================
;readFromTextFile()
Global $NextIndex=0

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
        Case $CreateTablesButton
			startFunction()
		Case $InsertPlayersNamesInitialInsertButton
Run("bowlingTableTry.exe",@SCRIPTDIR)
		;	GUISetState(@SW_DISABLE,$Form1_1)
		;	_gui2()
		;	GUISetState(@SW_ENABLE,$Form1_1)
		;	InsertPlayersNamesIntoTextFile()
	;	Case $DivideIntoTeamsInitialInsertButton
	;		DivideIntoTeams()
		Case $TeamNumber_1_inputbox
            writeToInputBoxesOfTeam1_From_TeamDividerTextFile()
        Case $TeamNumber_2_inputbox
			writeToInputBoxesOfTeam2_From_TeamDividerTextFile()
		Case $InseartGamesDateButton
			;InseartDateButton()
			Run("Game_schedule_gui.exe",@SCRIPTDIR)
		Case $insertDataButton
			InsertDataButton()
		Case $RoundNumberInput
		RoundNumberInput_function()
		Case $PrintGamesCurrentDateButton
			PrintRoundGames()
		Case $Player1_score_game1_1 ;or $Player1_score_game2_1
		;CalculateAverage()
		Case $Player1_score_game2_1 ;or $Player1_score_game2_1
		;CalculateAverage()
		;Case $Player1_score_game3_1 ;or $Player1_score_game2_1
		;CalculateAverage()
		Case $Player1_score_game3_1
		;	CalculateAverage()
		Case $editRoundScoresButton
			Run("view_or_edit_scores.exe",@SCRIPTDIR&"/data")
	EndSwitch
WEnd



Func startFunction()
$gabiLampelAverage=160
$moshAverage=120
$amirAverage=130


$returnArray=0
;Global $sFileOpenDialog=FileOpenDialog("Select your file to convert",@WindowsDir & "\","All (*.*)")
;MsgBox(0,"",$sFileOpenDialog)
;_FileReadToArray($sFileOpenDialog,$returnArray);read text file into an array

;_ArrayDisplay($returnArray)
;FileChangeDir(@ScriptDir)
;$DataFromUser=GUICtrlSetData($fileName,$sFileOpenDialog)
;$excelFile=$sFileOpenDialog;
;Local $excelFile = @ScriptDir & "Excel1.xls"
;$excelObject=_Excel_Open()
;$openExcel=_Excel_BookOpen($excelObject,$excelFile,Default,Default,True) ;OPEN EXCEL FILE
;Sleep(500)
;_Excel_RangeWrite($openExcel,$openExcel.ActiveSheet,"EYAL LAMPELL","A1")
;ף_Excel_RangeWrite($openExcel, $openExcel.Activesheet, "ROW5", "A5")


; Create application object and create a new workbook
Local $openExcel = _Excel_Open()
If @error Then Exit MsgBox($MB_SYSTEMMODAL, "Excel UDF: _Excel_RangeWrite Example", "Error creating the Excel application object." & @CRLF & "@error = " & @error & ", @extended = " & @extended)
Local $excelObject = _Excel_BookNew($openExcel)
If @error Then
    MsgBox($MB_SYSTEMMODAL, "Excel UDF: _Excel_RangeWrite Example", "Error creating the new workbook." & @CRLF & "@error = " & @error & ", @extended = " & @extended)
    _Excel_Close($openExcel)
    Exit
EndIf

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
$excelObject.ActiveSheet.Columns().AutoFit

;==
$returnArray=0
_FileReadToArray(@ScriptDir&"\PlayerNames.txt",$returnArray);read text file into an array
_ArrayDelete($returnArray,0)
_Excel_RangeWrite($excelObject,$excelObject.ActiveSheet,$returnArray,"B6")

;==




EndFunc



Func InsertPlayersNamesIntoTextFile()
$returnArray=0

;MsgBox(0,"",@ScriptDir&"\PlayerNames.txt")

$PlayersNameTextFile=  FileOpen(@ScriptDir&"\PlayerNames.txt",0)
If $PlayersNameTextFile=1 then ;file exist add names
MsgBox(0,"","file exist")
_FileReadToArray(@ScriptDir&"\PlayerNames.txt",$returnArray);read text file into an array

_ArrayDisplay($returnArray)
FileChangeDir(@ScriptDir)




Else;file does not exist , create new file name
MsgBox(0,"","file dosent exists")
FileOpen(@ScriptDir&"\PlayerNames.txt",1)
ShellExecute(@ScriptDir&"\PlayerNames.txt")
EndIf

_Excel_Print

;Global $sFileOpenDialog=FileOpenDialog("Select your file to convert",@WindowsDir & "\","All (*.*)")
;MsgBox(0,"",$sFileOpenDialog)
;_FileReadToArray($sFileOpenDialog,$returnArray);read text file into an array

;_ArrayDisplay($returnArray)
FileChangeDir(@ScriptDir)


FileClose($PlayersNameTextFile)
EndFunc

Func DivideIntoTeams()

$returnArray=0

;MsgBox(0,"",@ScriptDir&"\PlayerNames.txt")

$PlayersTeamsTextFile=  FileOpen(@ScriptDir&"\TeamDivder.txt",0)
If $PlayersTeamsTextFile=1 then ;file exist add names
MsgBox(0,"","file exist")
_FileReadToArray(@ScriptDir&"\TeamDivder.txt",$returnArray);read text file into an array

_ArrayDisplay($returnArray)
FileChangeDir(@ScriptDir)




Else;file does not exist , create new file name
MsgBox(0,"","file dosent exists")
FileOpen(@ScriptDir&"\TeamDivder.txt",1);write mode
ShellExecute(@ScriptDir&"\TeamDivder.txt")
EndIf



;Global $sFileOpenDialog=FileOpenDialog("Select your file to convert",@WindowsDir & "\","All (*.*)")
;MsgBox(0,"",$sFileOpenDialog)
;_FileReadToArray($sFileOpenDialog,$returnArray);read text file into an array

;_ArrayDisplay($returnArray)
FileChangeDir(@ScriptDir)
FileClose($PlayersTeamsTextFile)
EndFunc


Func writeToInputBoxesOfTeam1_From_TeamDividerTextFile()
$returnArray=0

_FileReadToArray(@ScriptDir&"\TeamDivder.txt",$returnArray);read text file into an array
;_ArrayDisplay($returnArray)
$Team1Position= _ArraySearch($returnArray,"קבוצה 1")
$Team2Position= _ArraySearch($returnArray,"קבוצה 2")
$Team3Position= _ArraySearch($returnArray,"קבוצה 3")
$Team4Position= _ArraySearch($returnArray,"קבוצה 4")
$Team5Position= _ArraySearch($returnArray,"קבוצה 5")
$Team6Position= _ArraySearch($returnArray,"קבוצה 6")
$Team7Position= _ArraySearch($returnArray,"קבוצה 7")
$Team8Position= _ArraySearch($returnArray,"קבוצה 8")
$Team9Position= _ArraySearch($returnArray,"קבוצה 9")
$Team10Position= _ArraySearch($returnArray,"קבוצה 10")
$Team11Position= _ArraySearch($returnArray,"קבוצה 11")
$Team12Position= _ArraySearch($returnArray,"קבוצה 12")


;
$UserSelectedTeamNumber=GUICtrlRead($TeamNumber_1_inputbox)


Switch $UserSelectedTeamNumber
	Case "1"
        GUICtrlSetData($TeamPlayer1Name_1,$returnArray[$Team1Position+1])
		GUICtrlSetData($TeamPlayer2Name_1,$returnArray[$Team1Position+2])
		GUICtrlSetData($TeamPlayer3Name_1,$returnArray[$Team1Position+3])

	Case "2"
       GUICtrlSetData($TeamPlayer1Name_1,$returnArray[$Team2Position+1])
		GUICtrlSetData($TeamPlayer2Name_1,$returnArray[$Team2Position+2])
		GUICtrlSetData($TeamPlayer3Name_1,$returnArray[$Team2Position+3])

	Case "3"
       GUICtrlSetData($TeamPlayer1Name_1,$returnArray[$Team3Position+1])
		GUICtrlSetData($TeamPlayer2Name_1,$returnArray[$Team3Position+2])
		GUICtrlSetData($TeamPlayer3Name_1,$returnArray[$Team3Position+3])

	Case "4"
       GUICtrlSetData($TeamPlayer1Name_1,$returnArray[$Team4Position+1])
		GUICtrlSetData($TeamPlayer2Name_1,$returnArray[$Team4Position+2])
		GUICtrlSetData($TeamPlayer3Name_1,$returnArray[$Team4Position+3])
	Case "5"
       GUICtrlSetData($TeamPlayer1Name_1,$returnArray[$Team5Position+1])
		GUICtrlSetData($TeamPlayer2Name_1,$returnArray[$Team5Position+2])
		GUICtrlSetData($TeamPlayer3Name_1,$returnArray[$Team5Position+3])

	Case "6"
       GUICtrlSetData($TeamPlayer1Name_1,$returnArray[$Team6Position+1])
		GUICtrlSetData($TeamPlayer2Name_1,$returnArray[$Team6Position+2])
		GUICtrlSetData($TeamPlayer3Name_1,$returnArray[$Team6Position+3])

	Case "7"
        GUICtrlSetData($TeamPlayer1Name_1,$returnArray[$Team7Position+1])
		GUICtrlSetData($TeamPlayer2Name_1,$returnArray[$Team7Position+2])
		GUICtrlSetData($TeamPlayer3Name_1,$returnArray[$Team7Position+3])

	Case "8"
       GUICtrlSetData($TeamPlayer1Name_1,$returnArray[$Team8Position+1])
		GUICtrlSetData($TeamPlayer2Name_1,$returnArray[$Team8Position+2])
		GUICtrlSetData($TeamPlayer3Name_1,$returnArray[$Team8Position+3])

	Case "9"
       GUICtrlSetData($TeamPlayer1Name_1,$returnArray[$Team9Position+1])
		GUICtrlSetData($TeamPlayer2Name_1,$returnArray[$Team9Position+2])
		GUICtrlSetData($TeamPlayer3Name_1,$returnArray[$Team9Position+3])

	Case "10"
       GUICtrlSetData($TeamPlayer1Name_1,$returnArray[$Team10Position+1])
		GUICtrlSetData($TeamPlayer2Name_1,$returnArray[$Team10Position+2])
		GUICtrlSetData($TeamPlayer3Name_1,$returnArray[$Team10Position+3])

	Case "11"
       GUICtrlSetData($TeamPlayer1Name_1,$returnArray[$Team11Position+1])
		GUICtrlSetData($TeamPlayer2Name_1,$returnArray[$Team1Position+2])
		GUICtrlSetData($TeamPlayer3Name_1,$returnArray[$Team11Position+3])

	Case "12"
       GUICtrlSetData($TeamPlayer1Name_1,$returnArray[$Team12Position+1])
		GUICtrlSetData($TeamPlayer2Name_1,$returnArray[$Team12Position+2])
		GUICtrlSetData($TeamPlayer3Name_1,$returnArray[$Team12Position+3])
EndSwitch
;$arrayRows=UBound($returnArray,$UBOUND_ROWS )
;$arrayCols=UBound($returnArray, $UBOUND_COLUMNS  ); this is 0

;MsgBox(0,"",$arrayRows)
;MsgBox(0,"",$arrayCols)

;$name1Extract=_ArrayExtract($returnArray,1,4,1,9)



;For $i=1 To 3



;Next


;$Team1Position=StringInStr($returnArray,"קבוצה 1",0,1)
;MsgBox(0,"Team 1:",$Team1Position)
;MsgBox(0,"Team 2:",$Team2Position)
;MsgBox(0,"Team 3:",$Team3Position)

EndFunc


Func writeToInputBoxesOfTeam2_From_TeamDividerTextFile()
$returnArray=0

_FileReadToArray(@ScriptDir&"\TeamDivder.txt",$returnArray);read text file into an array
$Team1Position= _ArraySearch($returnArray,"קבוצה 1")
$Team2Position= _ArraySearch($returnArray,"קבוצה 2")
$Team3Position= _ArraySearch($returnArray,"קבוצה 3")
$Team4Position= _ArraySearch($returnArray,"קבוצה 4")
$Team5Position= _ArraySearch($returnArray,"קבוצה 5")
$Team6Position= _ArraySearch($returnArray,"קבוצה 6")
$Team7Position= _ArraySearch($returnArray,"קבוצה 7")
$Team8Position= _ArraySearch($returnArray,"קבוצה 8")
$Team9Position= _ArraySearch($returnArray,"קבוצה 9")
$Team10Position= _ArraySearch($returnArray,"קבוצה 10")
$Team11Position= _ArraySearch($returnArray,"קבוצה 11")
$Team12Position= _ArraySearch($returnArray,"קבוצה 12")



;
$UserSelectedTeamNumber=GUICtrlRead($TeamNumber_2_inputbox)


Switch $UserSelectedTeamNumber
	Case "1"
        GUICtrlSetData($TeamPlayer1Name_2,$returnArray[$Team1Position+1])
		GUICtrlSetData($TeamPlayer2Name_2,$returnArray[$Team1Position+2])
		GUICtrlSetData($TeamPlayer3Name_2,$returnArray[$Team1Position+3])

	Case "2"
       GUICtrlSetData($TeamPlayer1Name_2,$returnArray[$Team2Position+1])
		GUICtrlSetData($TeamPlayer2Name_2,$returnArray[$Team2Position+2])
		GUICtrlSetData($TeamPlayer3Name_2,$returnArray[$Team2Position+3])

	Case "3"
       GUICtrlSetData($TeamPlayer1Name_2,$returnArray[$Team3Position+1])
		GUICtrlSetData($TeamPlayer2Name_2,$returnArray[$Team3Position+2])
		GUICtrlSetData($TeamPlayer3Name_2,$returnArray[$Team3Position+3])

	Case "4"
       GUICtrlSetData($TeamPlayer1Name_2,$returnArray[$Team4Position+1])
		GUICtrlSetData($TeamPlayer2Name_2,$returnArray[$Team4Position+2])
		GUICtrlSetData($TeamPlayer3Name_2,$returnArray[$Team4Position+3])
	Case "5"
       GUICtrlSetData($TeamPlayer1Name_2,$returnArray[$Team5Position+1])
		GUICtrlSetData($TeamPlayer2Name_2,$returnArray[$Team5Position+2])
		GUICtrlSetData($TeamPlayer3Name_2,$returnArray[$Team5Position+3])
	Case "6"
       GUICtrlSetData($TeamPlayer1Name_2,$returnArray[$Team6Position+1])
		GUICtrlSetData($TeamPlayer2Name_2,$returnArray[$Team6Position+2])
		GUICtrlSetData($TeamPlayer3Name_2,$returnArray[$Team6Position+3])
	Case "7"
        GUICtrlSetData($TeamPlayer1Name_2,$returnArray[$Team7Position+1])
		GUICtrlSetData($TeamPlayer2Name_2,$returnArray[$Team7Position+2])
		GUICtrlSetData($TeamPlayer3Name_2,$returnArray[$Team7Position+3])

	Case "8"
       GUICtrlSetData($TeamPlayer1Name_2,$returnArray[$Team8Position+1])
		GUICtrlSetData($TeamPlayer2Name_2,$returnArray[$Team8Position+2])
		GUICtrlSetData($TeamPlayer3Name_2,$returnArray[$Team8Position+3])

	Case "9"
       GUICtrlSetData($TeamPlayer1Name_2,$returnArray[$Team9Position+1])
		GUICtrlSetData($TeamPlayer2Name_2,$returnArray[$Team9Position+2])
		GUICtrlSetData($TeamPlayer3Name_2,$returnArray[$Team9Position+3])

	Case "10"
       GUICtrlSetData($TeamPlayer1Name_2,$returnArray[$Team10Position+1])
		GUICtrlSetData($TeamPlayer2Name_2,$returnArray[$Team10Position+2])
		GUICtrlSetData($TeamPlayer3Name_2,$returnArray[$Team10Position+3])

	Case "11"
       GUICtrlSetData($TeamPlayer1Name_2,$returnArray[$Team11Position+1])
		GUICtrlSetData($TeamPlayer2Name_2,$returnArray[$Team11Position+2])
		GUICtrlSetData($TeamPlayer3Name_2,$returnArray[$Team11Position+3])

	Case "12"
       GUICtrlSetData($TeamPlayer1Name_2,$returnArray[$Team12Position+1])
		GUICtrlSetData($TeamPlayer2Name_2,$returnArray[$Team12Position+2])
		GUICtrlSetData($TeamPlayer3Name_2,$returnArray[$Team12Position+3])

EndSwitch



EndFunc


Func InseartDateButton()
$returnArray=0

;MsgBox(0,"",@ScriptDir&"\PlayerNames.txt")

$GamesdateTextFile= 0
_FileReadToArray(@ScriptDir&"\Game_Schedule.txt",$GamesdateTextFile)
_ArrayDisplay($GamesdateTextFile)


$GamesdateTextFile=  FileOpen(@ScriptDir&"\GamesDate.txt",0)
If $GamesdateTextFile=1 then ;file exist add names
MsgBox(0,"","file exist")
_FileReadToArray(@ScriptDir&"\GamesDate.txt",$returnArray);read text file into an array

_ArrayDisplay($returnArray)
FileChangeDir(@ScriptDir)




Else;file does not exist , create new file name
MsgBox(0,"","file dosent exists")
FileOpen(@ScriptDir&"\GamesDate.txt",1)
ShellExecute(@ScriptDir&"\GamesDate.txt")
EndIf
FileClose($GamesdateTextFile)
EndFunc

;===============================;
Func InsertDataButton()
	Local $Player1_Score_1[6] , $Player2_Score_1[6],$Player3_Score_1[6],$Player1_Score_2[6] , $Player2_Score_2[6],$Player3_Score_2[6]
$roundNumber=GUICtrlRead($RoundNumberInput)
$teamNumber_1=GUICtrlRead($TeamNumber_1_inputbox)
$teamNumber_2=GUICtrlRead($TeamNumber_2_inputbox)

$Player1_Score_1[0]="round " & $roundNumber
$Player1_Score_1[1]="teamNumber: " & $teamNumber_1
$Player1_Score_1[2]=GUICtrlRead($TeamPlayer1Name_1)
$Player1_Score_1[3]=GUICtrlRead($Player1_score_game1_1 )
$Player1_Score_1[4]=GUICtrlRead($Player1_score_game2_1 )
$Player1_Score_1[5]=GUICtrlRead($Player1_score_game3_1 )

$Player2_Score_1[0]="round " & $roundNumber
$Player2_Score_1[1]="teamNumber: " & $teamNumber_1
$Player2_Score_1[2]=GUICtrlRead($TeamPlayer2Name_1)
$Player2_Score_1[3]=GUICtrlRead($Player2_score_game1_1 )
$Player2_Score_1[4]=GUICtrlRead($Player2_score_game2_1 )
$Player2_Score_1[5]=GUICtrlRead($Player2_score_game3_1 )

$Player3_Score_1[0]="round " & $roundNumber
$Player3_Score_1[1]="teamNumber: " & $teamNumber_1
$Player3_Score_1[2]=GUICtrlRead($TeamPlayer3Name_1)
$Player3_Score_1[3]=GUICtrlRead($Player3_score_game1_1 )
$Player3_Score_1[4]=GUICtrlRead($Player3_score_game2_1 )
$Player3_Score_1[5]=GUICtrlRead($Player3_score_game3_1 )

$Player1_Score_2[0]="round " & $roundNumber
$Player1_Score_2[1]="teamNumber: " & $teamNumber_2
$Player1_Score_2[2]=GUICtrlRead($TeamPlayer1Name_2)
$Player1_Score_2[3]=GUICtrlRead($Player1_score_game1_2 )
$Player1_Score_2[4]=GUICtrlRead($Player1_score_game2_2 )
$Player1_Score_2[5]=GUICtrlRead($Player1_score_game3_2 )

$Player2_Score_2[0]="round " & $roundNumber
$Player2_Score_2[1]="teamNumber: " & $teamNumber_2
$Player2_Score_2[2]=GUICtrlRead($TeamPlayer2Name_2)
$Player2_Score_2[3]=GUICtrlRead($Player2_score_game1_2 )
$Player2_Score_2[4]=GUICtrlRead($Player2_score_game2_2 )
$Player2_Score_2[5]=GUICtrlRead($Player2_score_game3_2 )

$Player3_Score_2[0]="round " & $roundNumber
$Player3_Score_2[1]="teamNumber: " & $teamNumber_2
$Player3_Score_2[2]=GUICtrlRead($TeamPlayer3Name_2)
$Player3_Score_2[3]=GUICtrlRead($Player3_score_game1_2 )
$Player3_Score_2[4]=GUICtrlRead($Player3_score_game2_2 )
$Player3_Score_2[5]=GUICtrlRead($Player3_score_game3_2 )

	If $NextIndex=5 Then;added 11.08.16 17:00
	$NextIndex=0
	Else
	$NextIndex+=1
	EndIf

	$returnArray=0
$roundNumber=GUICtrlRead($RoundNumberInput)
If $roundNumber="" Then
MsgBox(0,"You Have To Enter Round Number","You Did not entered round number")
$NextIndex=0
Else

$FileName="round_"&$roundNumber&"_team_"&$teamNumber_1&"_vs_"&$teamNumber_2&".txt"
;MsgBox(0,"",$FileName)
$ScoreTextFile=  FileOpen(@ScriptDir&"\data\"&$FileName,2)
;_FileWriteToLine(@ScriptDir&"\DATA\PlayersScore.txt",0,"kkk",True)
For $i=0 To 5
	FileWriteLine($ScoreTextFile,$Player1_Score_1[$i])
Next

For $i=0 To 5
	FileWriteLine($ScoreTextFile,$Player2_Score_1[$i])
Next

For $i=0 To 5
	FileWriteLine($ScoreTextFile,$Player3_Score_1[$i])
Next

For $i=0 To 5
	FileWriteLine($ScoreTextFile,$Player1_Score_2[$i])
Next

For $i=0 To 5
	FileWriteLine($ScoreTextFile,$Player2_Score_2[$i])
Next

For $i=0 To 5
	FileWriteLine($ScoreTextFile,$Player3_Score_2[$i])
Next

$Team1_points=GUICtrlRead($ScoreTeam1)
$Team2_points=GUICtrlRead($ScoreTeam2)

FileWriteLine($ScoreTextFile,"final Score:")
FileWriteLine($ScoreTextFile,$Player1_Score_1[1])
FileWriteLine($ScoreTextFile,$Team1_points &" points")

FileWriteLine($ScoreTextFile,$Player1_Score_2[1])
FileWriteLine($ScoreTextFile,$Team2_points&" points")

If $ScoreTextFile=1 then ;file exist add names
;MsgBox(0,"","file exist")
;_FileReadToArray(@ScriptDir&"\PlayersScore.txt",$returnArray);read text file into an array
;_ArrayDisplay($Player1_Score_2)
;_ArrayDisplay($Player2_Score_2)
;_ArrayDisplay($Player3_Score_2)
_FileWriteFromArray(@ScriptDir&"\PlayersScore.txt",$Player1_Score_1)


;_ArrayDisplay($returnArray)

Else;file does not exist , create new file name
;MsgBox(0,"","file dosent exists")
;$ScoreTextFile= FileOpen(@ScriptDir&"\data\PlayersScore.txt",1)

EndIf
FileClose($ScoreTextFile)


EndIf
RoundNumberInput_function()
deleteScore()
EndFunc
;===============================;

Func deleteScore()

GUICtrlSetData($Player1_score_game1_1 ,"")
GUICtrlSetData($Player1_score_game2_1,"" )
GUICtrlSetData($Player1_score_game3_1 ,"")

GUICtrlSetData($Player2_score_game1_1 ,"")
GUICtrlSetData($Player2_score_game2_1 ,"")
GUICtrlSetData($Player2_score_game3_1 ,"")


GUICtrlSetData($Player3_score_game1_1 ,"")
GUICtrlSetData($Player3_score_game2_1 ,"")
GUICtrlSetData($Player3_score_game3_1 ,"")

GUICtrlSetData($Player1_score_game1_2 ,"")
GUICtrlSetData($Player1_score_game2_2 ,"")
GUICtrlSetData($Player1_score_game3_2 ,"")


GUICtrlSetData($Player2_score_game1_2 ,"")
GUICtrlSetData($Player2_score_game2_2 ,"")
GUICtrlSetData($Player2_score_game3_2 ,"")

GUICtrlSetData($Player3_score_game1_2 ,"")
GUICtrlSetData($Player3_score_game2_2 ,"")
GUICtrlSetData($Player3_score_game3_2 ,"")

GUICtrlSetData($ScoreTeam1 ,"" )
GUICtrlSetData($ScoreTeam2 ,"" )


EndFunc

Func RoundNumberInput_function()
	$returnArray=0
;$NextIndex=0
_FileReadToArray(@ScriptDir&"\GamesDate.txt",$returnArray);read text file into an array

$Round1Position= _ArraySearch($returnArray,"round 1")
$Round2Position= _ArraySearch($returnArray,"round 2")
$Round3Position= _ArraySearch($returnArray,"round 3")
$Round4Position= _ArraySearch($returnArray,"round 4")



$splitStringArray_Team_vs_Team_round1=StringSplit($returnArray[$Round1Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round2=StringSplit($returnArray[$Round2Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round3=StringSplit($returnArray[$Round3Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round4=StringSplit($returnArray[$Round4Position+3+$NextIndex*2]," vs")

;_ArrayDisplay($splitStringArray_Team_vs_Team_round2)

$roundNumber=GUICtrlRead($RoundNumberInput)

Switch $roundNumber
	Case "1"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round1[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round1[5])

	Case "2"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round2[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round2[5])
	Case "3"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round3[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round3[5])
	Case "4"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round4[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round4[5])

EndSwitch
writeToInputBoxesOfTeam1_From_TeamDividerTextFile()
writeToInputBoxesOfTeam2_From_TeamDividerTextFile()

EndFunc

Func PrintRoundGames()
$roundNumber=GUICtrlRead($RoundNumberInput)
If $roundNumber="" Then
MsgBox(0,"You Have To Enter Round Number","You Did not entered round number")


Else

EndIf

EndFunc



Func CalculateAverage()
$Player1_Score_Game1_1=GUICtrlRead($Player1_score_game1_1 )
$Player1_Score_Game2_1=GUICtrlRead($Player1_score_game2_1 )
$Player1_Score_Game3_1=GUICtrlRead($Player1_score_game3_1 )
$Player1_round_average=($Player1_Score_Game1_1+$Player1_Score_Game2_1+$Player1_Score_Game3_1)/3
;MsgBox(0,"",$Player1_round_average)

;GUICtrlSetData($Player1_round_avarege_1 ,$Player1_round_average)
MsgBox(0,"",$Player1_round_average)
EndFunc

