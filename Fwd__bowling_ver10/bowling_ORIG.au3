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
#include "rawData/GUIListViewEx.au3"

#Region ### START Koda GUI section ### Form=c:\users\hilalampel\documents\bowling.kxf
$Form1_1 = GUICreate("Ahsdod Bowling", 1125, 647, 118, 12)
GUISetIcon(@ScriptDir&"\pic\download.ico")
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
$TeamNumber_2_inputbox = GUICtrlCreateInput("", 440, 325, 49, 21,BitOR($ES_CENTER,$ES_READONLY))
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
$TeamNumber_1_inputbox = GUICtrlCreateInput("", 437, 66, 49, 21,BitOR($ES_CENTER,$ES_READONLY))
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
			;startFunction()
		;Run(@SCRIPTDIR&"\rawData\"&"dataToExcel.exe","")
		Run('"'&@AutoItExe&'"/AutoIt3ExecuteScript "' &@SCRIPTDIR&"\rawData\"&"dataToExcel.au3" & '"',"",@SW_SHOW ,0)

		Case $InsertPlayersNamesInitialInsertButton
			;	MsgBox(0,"",@SCRIPTDIR&"\rawData")
Run(@SCRIPTDIR&"\rawData\" & "bowlingTableTry.exe","");@SCRIPTDIR&"\rawData")
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
			Run(@SCRIPTDIR&"\rawData\"&"Game_schedule_gui.exe",@SCRIPTDIR)
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

			Run(@SCRIPTDIR&"\rawData\data\" &"view_or_edit_scores.exe",@SCRIPTDIR)
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
_FileReadToArray(@ScriptDir&"\rawData\PlayerNames.txt",$returnArray);read text file into an array
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
_FileReadToArray(@ScriptDir&"\rawData\PlayerNames.txt",$returnArray);read text file into an array

_ArrayDisplay($returnArray)
FileChangeDir(@ScriptDir)




Else;file does not exist , create new file name
MsgBox(0,"","file dosent exists")
FileOpen(@ScriptDir&"\rawData\PlayerNames.txt",1)
ShellExecute(@ScriptDir&"\rawData\PlayerNames.txt")
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

$PlayersTeamsTextFile=  FileOpen(@ScriptDir&"\rawData\TeamDivder.txt",0)
If $PlayersTeamsTextFile=1 then ;file exist add names
MsgBox(0,"","file exist")
_FileReadToArray(@ScriptDir&"\rawData\TeamDivder.txt",$returnArray);read text file into an array

_ArrayDisplay($returnArray)
FileChangeDir(@ScriptDir)



Else;file does not exist , create new file name
MsgBox(0,"","file dosent exists")
FileOpen(@ScriptDir&"\rawData\TeamDivder.txt",1);write mode
ShellExecute(@ScriptDir&"\rawData\TeamDivder.txt")
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

_FileReadToArray(@ScriptDir&"\rawData\TeamDivder.txt",$returnArray);read text file into an array
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

EndFunc


Func writeToInputBoxesOfTeam2_From_TeamDividerTextFile()
$returnArray=0

_FileReadToArray(@ScriptDir&"\rawData\TeamDivder.txt",$returnArray);read text file into an array
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
_FileReadToArray(@ScriptDir&"\rawData\Game_Schedule.txt",$GamesdateTextFile)
_ArrayDisplay($GamesdateTextFile)


$GamesdateTextFile=  FileOpen(@ScriptDir&"\rawData\GamesDate.txt",0)
If $GamesdateTextFile=1 then ;file exist add names
MsgBox(0,"","file exist")
_FileReadToArray(@ScriptDir&"\rawData\GamesDate.txt",$returnArray);read text file into an array

_ArrayDisplay($returnArray)
FileChangeDir(@ScriptDir)




Else;file does not exist , create new file name
MsgBox(0,"","file dosent exists")
FileOpen(@ScriptDir&"\rawData\GamesDate.txt",1)
ShellExecute(@ScriptDir&"\rawData\GamesDate.txt")
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

	If $NextIndex=4 Then;added 11.08.16 17:00
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
$roundTextFile=FileOpen(@ScriptDir&"\rawData\data\roundNumber.txt",2)
FileWriteLine($roundTextFile,"round "&$roundNumber)


$FileName="round_"&$roundNumber&"_team_"&$teamNumber_1&"_vs_"&$teamNumber_2&".txt"
;MsgBox(0,"",$FileName)
$ScoreTextFile=  FileOpen(@ScriptDir&"\rawData\data\"&$FileName,2)
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
_FileWriteFromArray(@ScriptDir&"\rawData\PlayersScore.txt",$Player1_Score_1)


;_ArrayDisplay($returnArray)

Else;file does not exist , create new file name
;MsgBox(0,"","file dosent exists")
;$ScoreTextFile= FileOpen(@ScriptDir&"\data\PlayersScore.txt",1)

EndIf
FileClose($ScoreTextFile)


EndIf
RoundNumberInput_function()
deleteScore()

setScoreAtEditBox_TakeFrom_RawData_Files();look her
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
_FileReadToArray(@ScriptDir&"\rawData\GamesDate.txt",$returnArray);read text file into an array
_ArrayDisplay($returnArray)


$Round1Position= _ArraySearch($returnArray,"round 1")
$Round2Position= _ArraySearch($returnArray,"round 2")
$Round3Position= _ArraySearch($returnArray,"round 3")
$Round4Position= _ArraySearch($returnArray,"round 4")
$Round5Position= _ArraySearch($returnArray,"round 5")
$Round6Position= _ArraySearch($returnArray,"round 6")
$Round7Position= _ArraySearch($returnArray,"round 7")
$Round8Position= _ArraySearch($returnArray,"round 8")
$Round9Position= _ArraySearch($returnArray,"round 9")
$Round10Position= _ArraySearch($returnArray,"round 10")
$Round11Position= _ArraySearch($returnArray,"round 11")
$Round12Position= _ArraySearch($returnArray,"round 12")
$Round13Position= _ArraySearch($returnArray,"round 13")
$Round14Position= _ArraySearch($returnArray,"round 14")
$Round15Position= _ArraySearch($returnArray,"round 15")
$Round16Position= _ArraySearch($returnArray,"round 16")
$Round17Position= _ArraySearch($returnArray,"round 17")
$Round18Position= _ArraySearch($returnArray,"round 18")
$Round19Position= _ArraySearch($returnArray,"round 19")
$Round20Position= _ArraySearch($returnArray,"round 20")
$Round21Position= _ArraySearch($returnArray,"round 21")
$Round22Position= _ArraySearch($returnArray,"round 22")
$Round23Position= _ArraySearch($returnArray,"round 23")
$Round24Position= _ArraySearch($returnArray,"round 24")
$Round25Position= _ArraySearch($returnArray,"round 25")
$Round26Position= _ArraySearch($returnArray,"round 26")
$Round27Position= _ArraySearch($returnArray,"round 27")
$Round28Position= _ArraySearch($returnArray,"round 28")
$Round29Position= _ArraySearch($returnArray,"round 29")
$Round30Position= _ArraySearch($returnArray,"round 30")
$Round31Position= _ArraySearch($returnArray,"round 31")
$Round32Position= _ArraySearch($returnArray,"round 32")
$Round33Position= _ArraySearch($returnArray,"round 33")
$Round34Position= _ArraySearch($returnArray,"round 34")
$Round35Position= _ArraySearch($returnArray,"round 35")
$Round36Position= _ArraySearch($returnArray,"round 36")
$Round37Position= _ArraySearch($returnArray,"round 37")
$Round38Position= _ArraySearch($returnArray,"round 38")
$Round39Position= _ArraySearch($returnArray,"round 39")
$Round40Position= _ArraySearch($returnArray,"round 40")
$Round41Position= _ArraySearch($returnArray,"round 41")
$Round42Position= _ArraySearch($returnArray,"round 42")
$Round43Position= _ArraySearch($returnArray,"round 43")
$Round44Position= _ArraySearch($returnArray,"round 44")
$Round45Position= _ArraySearch($returnArray,"round 45")
$Round46Position= _ArraySearch($returnArray,"round 46")
$Round47Position= _ArraySearch($returnArray,"round 47")
$Round48Position= _ArraySearch($returnArray,"round 48")
$Round49Position= _ArraySearch($returnArray,"round 49")
$Round50Position= _ArraySearch($returnArray,"round 50")
$Round51Position= _ArraySearch($returnArray,"round 51")
$Round52Position= _ArraySearch($returnArray,"round 52")
$Round53Position= _ArraySearch($returnArray,"round 53")
$Round54Position= _ArraySearch($returnArray,"round 54")
$Round55Position= _ArraySearch($returnArray,"round 55")
$Round56Position= _ArraySearch($returnArray,"round 56")
$Round57Position= _ArraySearch($returnArray,"round 57")
$Round58Position= _ArraySearch($returnArray,"round 58")
$Round59Position= _ArraySearch($returnArray,"round 59")
$Round60Position= _ArraySearch($returnArray,"round 60")
$Round61Position= _ArraySearch($returnArray,"round 61")
$Round62Position= _ArraySearch($returnArray,"round 62")
$Round63Position= _ArraySearch($returnArray,"round 63")



$splitStringArray_Team_vs_Team_round1=StringSplit($returnArray[$Round1Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round2=StringSplit($returnArray[$Round2Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round3=StringSplit($returnArray[$Round3Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round4=StringSplit($returnArray[$Round4Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round5=StringSplit($returnArray[$Round5Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round6=StringSplit($returnArray[$Round6Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round7=StringSplit($returnArray[$Round7Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round8=StringSplit($returnArray[$Round8Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round9=StringSplit($returnArray[$Round9Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round10=StringSplit($returnArray[$Round10Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round11=StringSplit($returnArray[$Round11Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round12=StringSplit($returnArray[$Round12Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round13=StringSplit($returnArray[$Round13Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round14=StringSplit($returnArray[$Round14Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round15=StringSplit($returnArray[$Round15Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round16=StringSplit($returnArray[$Round16Position+3+$NextIndex*2]," vs")

$splitStringArray_Team_vs_Team_round17=StringSplit($returnArray[$Round17Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round18=StringSplit($returnArray[$Round18Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round19=StringSplit($returnArray[$Round19Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round20=StringSplit($returnArray[$Round20Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round21=StringSplit($returnArray[$Round21Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round22=StringSplit($returnArray[$Round22Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round23=StringSplit($returnArray[$Round23Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round24=StringSplit($returnArray[$Round24Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round25=StringSplit($returnArray[$Round25Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round26=StringSplit($returnArray[$Round26Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round27=StringSplit($returnArray[$Round27Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round28=StringSplit($returnArray[$Round28Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round29=StringSplit($returnArray[$Round29Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round30=StringSplit($returnArray[$Round30Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round31=StringSplit($returnArray[$Round31Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round32=StringSplit($returnArray[$Round32Position+3+$NextIndex*2]," vs")

$splitStringArray_Team_vs_Team_round33=StringSplit($returnArray[$Round33Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round34=StringSplit($returnArray[$Round34Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round35=StringSplit($returnArray[$Round35Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round36=StringSplit($returnArray[$Round36Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round37=StringSplit($returnArray[$Round37Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round38=StringSplit($returnArray[$Round38Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round39=StringSplit($returnArray[$Round39Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round40=StringSplit($returnArray[$Round40Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round41=StringSplit($returnArray[$Round41Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round42=StringSplit($returnArray[$Round42Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round43=StringSplit($returnArray[$Round43Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round44=StringSplit($returnArray[$Round44Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round45=StringSplit($returnArray[$Round45Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round46=StringSplit($returnArray[$Round46Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round47=StringSplit($returnArray[$Round47Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round48=StringSplit($returnArray[$Round48Position+3+$NextIndex*2]," vs")

$splitStringArray_Team_vs_Team_round49=StringSplit($returnArray[$Round49Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round50=StringSplit($returnArray[$Round50Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round51=StringSplit($returnArray[$Round51Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round52=StringSplit($returnArray[$Round52Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round53=StringSplit($returnArray[$Round53Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round54=StringSplit($returnArray[$Round54Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round55=StringSplit($returnArray[$Round55Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round56=StringSplit($returnArray[$Round56Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round57=StringSplit($returnArray[$Round57Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round58=StringSplit($returnArray[$Round58Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round59=StringSplit($returnArray[$Round59Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round60=StringSplit($returnArray[$Round60Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round61=StringSplit($returnArray[$Round61Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round62=StringSplit($returnArray[$Round62Position+3+$NextIndex*2]," vs")
$splitStringArray_Team_vs_Team_round63=StringSplit($returnArray[$Round63Position+3+$NextIndex*2]," vs")


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
	Case "5"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round5[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round5[5])

	Case "6"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round6[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round6[5])
	Case "7"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round7[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round7[5])

	Case "8"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round8[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round8[5])

	Case "9"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round9[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round9[5])

	Case "10"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round10[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round10[5])
	Case "11"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round11[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round11[5])
	Case "12"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round12[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round12[5])
	Case "13"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round13[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round13[5])

	Case "14"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round14[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round14[5])
	Case "15"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round15[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round15[5])
	Case "16"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round16[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round16[5])

	Case "17"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round17[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round17[5])
	Case "18"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round18[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round18[5])
	Case "19"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round19[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round19[5])
	Case "20"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round20[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round20[5])

	Case "21"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round21[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round21[5])
	Case "22"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round22[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round22[5])
	Case "23"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round23[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round23[5])

	Case "24"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round24[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round24[5])
	Case "25"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round25[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round25[5])
	Case "26"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round8[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round8[5])

	Case "27"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round2[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round2[5])
	Case "28"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round3[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round3[5])
	Case "29"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round4[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round4[5])
	Case "30"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round5[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round5[5])

	Case "31"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round6[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round6[5])
	Case "32"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round7[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round7[5])

EndSwitch

writeToInputBoxesOfTeam1_From_TeamDividerTextFile()
writeToInputBoxesOfTeam2_From_TeamDividerTextFile()
setScoreAtEditBox_TakeFrom_RawData_Files();;;look her
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



Func setScoreAtEditBox_TakeFrom_RawData_Files()
$returnArray3=0

$roundNumber=GUICtrlRead($RoundNumberInput)
$teamNumber_1=GUICtrlRead($TeamNumber_1_inputbox)
$teamNumber_2=GUICtrlRead($TeamNumber_2_inputbox)

$FileName="round_"&$roundNumber&"_team_"&$teamNumber_1&"_vs_"&$teamNumber_2&".txt"

If FileExists(@ScriptDir&"\rawData\data\"&$FileName) Then

_FileReadToArray(@ScriptDir&"\rawData\data\"&$FileName,$returnArray3)
;_ArrayDisplay($returnArray3)
;MsgBox(0,"","inside function")

GUICtrlSetData($Player1_score_game1_1,$returnArray3[4])
GUICtrlSetData($Player1_score_game2_1,$returnArray3[5])
GUICtrlSetData($Player1_score_game3_1,$returnArray3[6])

GUICtrlSetData($Player2_score_game1_1,$returnArray3[10])
GUICtrlSetData($Player2_score_game2_1,$returnArray3[11])
GUICtrlSetData($Player2_score_game3_1,$returnArray3[12])

GUICtrlSetData($Player3_score_game1_1,$returnArray3[16])
GUICtrlSetData($Player3_score_game2_1,$returnArray3[17])
GUICtrlSetData($Player3_score_game3_1,$returnArray3[18])

GUICtrlSetData($Player1_score_game1_2,$returnArray3[22])
GUICtrlSetData($Player1_score_game2_2,$returnArray3[23])
GUICtrlSetData($Player1_score_game3_2,$returnArray3[24])

GUICtrlSetData($Player2_score_game1_2,$returnArray3[28])
GUICtrlSetData($Player2_score_game2_2,$returnArray3[29])
GUICtrlSetData($Player2_score_game3_2,$returnArray3[30])

GUICtrlSetData($Player3_score_game1_2,$returnArray3[34])
GUICtrlSetData($Player3_score_game2_2,$returnArray3[35])
GUICtrlSetData($Player3_score_game3_2,$returnArray3[36])


$score1=StringSplit($returnArray3[39],"points")
$score2=StringSplit($returnArray3[41],"points")
;_ArrayDisplay($score1)

GUICtrlSetData($ScoreTeam1,$score1[1])
GUICtrlSetData($ScoreTeam2,$score2[1])
Else
	deleteScore()
EndIf

EndFunc



