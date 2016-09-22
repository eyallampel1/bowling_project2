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
#include "rawData/GUIListViewEx.au3"

;======;
#Region ### START Koda GUI section ### Form=D:\bowling_project2\Fwd_Bowling_ver2\Fwd__bowling\bowling.kxf
$Form1_1 = GUICreate("Ahsdod Bowling", 1127, 575, 196, 106)
$CreateTablesButton = GUICtrlCreateButton("Create tables", 378, 520, 75, 25)
$insertDataButton = GUICtrlCreateButton("Enter Data", 610, 520, 75, 25)



$Label15 = GUICtrlCreateLabel("Round Number", 894, 39, 86, 17)
$RoundNumberInput = GUICtrlCreateInput("", 907, 58, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$PrintGamesCurrentDateButton = GUICtrlCreateButton("Print Round", 472, 520, 123, 25)
$Group2 = GUICtrlCreateGroup("", 176, 290, 609, 225)
$Player1_score_game1_1 = GUICtrlCreateInput("", 536, 135, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player1_score_game2_1 = GUICtrlCreateInput("", 483, 135, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player1_score_game3_1 = GUICtrlCreateInput("", 430, 135, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player2_score_game1_1 = GUICtrlCreateInput("", 536, 165, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player2_score_game2_1 = GUICtrlCreateInput("", 483, 165, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player2_score_game3_1 = GUICtrlCreateInput("", 430, 165, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player3_score_game1_1 = GUICtrlCreateInput("", 536, 195, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player3_score_game2_1 = GUICtrlCreateInput("", 483, 195, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player3_score_game3_1 = GUICtrlCreateInput("", 430, 195, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))

$Player1_score_game1_2 = GUICtrlCreateInput("", 539, 386, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player1_score_game2_2 = GUICtrlCreateInput("", 486, 386, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player1_score_game3_2 = GUICtrlCreateInput("", 433, 386, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player2_score_game1_2 = GUICtrlCreateInput("", 539, 416, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player2_score_game2_2 = GUICtrlCreateInput("", 486, 416, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player2_score_game3_2 = GUICtrlCreateInput("", 433, 416, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player3_score_game1_2 = GUICtrlCreateInput("", 539, 446, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player3_score_game2_2 = GUICtrlCreateInput("", 486, 446, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player3_score_game3_2 = GUICtrlCreateInput("", 433, 446, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))

$Player1_AVG_1 = GUICtrlCreateInput("", 324, 135, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player2_AVG_1 = GUICtrlCreateInput("", 324, 165, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player3_AVG_1 = GUICtrlCreateInput("", 324, 195, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))

$Player1_AVG_2 = GUICtrlCreateInput("", 327, 386, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player2_AVG_2 = GUICtrlCreateInput("", 327, 416, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Player3_AVG_2 = GUICtrlCreateInput("", 327, 446, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))

$HandicapPlayer1_2 = GUICtrlCreateInput("", 380, 386, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$HandicapPlayer2_2 = GUICtrlCreateInput("", 380, 416, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$HandicapPlayer3_2 = GUICtrlCreateInput("", 380, 446, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$ScoreTeam2 = GUICtrlCreateInput("", 190, 484, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$TeamPlayer3Name_2 = GUICtrlCreateInput("", 613, 446, 153, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$TeamPlayer1Name_2 = GUICtrlCreateInput("", 613, 386, 153, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$Label4 = GUICtrlCreateLabel("Game 2", 489, 362, 43, 17)
$Label16 = GUICtrlCreateLabel("Name", 680, 362, 28, 17)
$Label17 = GUICtrlCreateLabel("Game 1", 544, 362, 43, 17)
$Label18 = GUICtrlCreateLabel("Game 3", 436, 362, 43, 17)
$TeamPlayer2Name_2 = GUICtrlCreateInput("", 613, 416, 153, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$Label19 = GUICtrlCreateLabel("Handicap", 381, 362, 51, 17)
$Label22 = GUICtrlCreateLabel("Team Number", 432, 301, 75, 17)
$MissingPlayersInTeam2_Label= GUICtrlCreateLabel("Missing Players=3"&@CRLF&"Team2 - Technical Lost", 187, 301, 175, 57)
GUICtrlSetFont($MissingPlayersInTeam2_Label,Default,700 )
$TeamNumber_2_inputbox = GUICtrlCreateInput("", 440, 325, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$Label24 = GUICtrlCreateLabel("Score", 243, 489, 28, 17)

$Label7 = GUICtrlCreateLabel("Player AVG", 321, 362, 59, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group1 = GUICtrlCreateGroup("", 173, 39, 609, 225)

$HandicapPlayer1_1 = GUICtrlCreateInput("", 377, 135, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$HandicapPlayer2_1 = GUICtrlCreateInput("", 377, 165, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$HandicapPlayer3_1 = GUICtrlCreateInput("", 377, 195, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$ScoreTeam1 = GUICtrlCreateInput("", 187, 233, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$TeamPlayer1Name_1 = GUICtrlCreateInput("", 613, 135, 153, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$Label2 = GUICtrlCreateLabel("Game 2", 486, 111, 43, 17)
$Label3 = GUICtrlCreateLabel("Name", 677, 111, 28, 17)
$Label5 = GUICtrlCreateLabel("Game 1", 541, 111, 43, 17)
$Label6 = GUICtrlCreateLabel("Game 3", 433, 111, 43, 17)
$TeamPlayer2Name_1 = GUICtrlCreateInput("", 613, 165, 153, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$TeamPlayer3Name_1 = GUICtrlCreateInput("", 613, 195, 153, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$Label8 = GUICtrlCreateLabel("Handicap", 378, 111, 51, 17)
$Label11 = GUICtrlCreateLabel("Team Number", 429, 50, 75, 17)
$MissingPlayersInTeam1_Label= GUICtrlCreateLabel("Missing Players=3"&@CRLF&"Team1 - Technical Lost", 187, 50, 175, 57)
GUICtrlSetFont($MissingPlayersInTeam1_Label,Default,700 )
$TeamNumber_1_inputbox = GUICtrlCreateInput("", 437, 74, 49, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER,$ES_READONLY))
$Label14 = GUICtrlCreateLabel("Score", 240, 238, 28, 17)
$Label1 = GUICtrlCreateLabel("Player AVG", 318, 111, 59, 17)

GUICtrlCreateGroup("", -99, -99, 1, 1)
$Label26 = GUICtrlCreateLabel("VS", 460, 272, 29, 17)
$Group3 = GUICtrlCreateGroup("First time use", 840, 290, 185, 115)
$InsertPlayersNamesInitialInsertButton = GUICtrlCreateButton("Players names", 864, 314, 139, 25)
$InseartGamesDateButton = GUICtrlCreateButton("Games Schedule", 864, 362, 139, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$editRoundScoresButton = GUICtrlCreateButton("view / edit round scores", 220, 520, 139, 25)
$Handicap_groupBox = GUICtrlCreateGroup("For Handicap Calculation", 840, 87, 185, 169)
$LeagueAVG_Label = GUICtrlCreateLabel("SET League AVG", 888, 119, 89, 17)
$League_AVG_InputBox = GUICtrlCreateInput("", 872, 143, 121, 21,BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$HandicapPrecentFromLeague_Label = GUICtrlCreateLabel("Handicap % ", 905, 188, 64, 17)
$Handicap_Precent_InputBox = GUICtrlCreateInput("", 873, 212, 121, 21,BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
GUICtrlCreateGroup("", -99, -99, 1, 1)
$LeagueYear_Label = GUICtrlCreateLabel("League year:", 189, 14, 70, 17)
$LeagueYear_InputBox = GUICtrlCreateInput("2016-2017", 261, 12, 97, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$LeagueName_Label = GUICtrlCreateLabel("League Name:", 495, 14, 70, 17)
$LeagueName_inputBox = GUICtrlCreateInput("עמותת כדורת אשדוד", 567, 12, 185, 21, BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$Operation_Mode_Label = GUICtrlCreateLabel("Operation Mode:", 45, 200, 98, 17)
$Operation_Mode_Label2 = GUICtrlCreateLabel("NORMAL", 65, 220, 98, 17)
GUICtrlSetFont($Operation_Mode_Label2,Default,700 )
$DeleteALLScoresButton = GUICtrlCreateButton("Restart - League"&@CRLF&"Delete All Scores", 950, 520, 130, 45, $BS_MULTILINE)

GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

;======;
;================================================= team 1====================================
GUICtrlSetState($Player1_score_game1_1, $GUI_FOCUS)
GUIRegisterMsg($WM_COMMAND, "WM_COMMAND")
;readFromTextFile()
Global $NextIndex=0
Global $DO_SCORE_CALCULATION=1
Global $readmeFlage=1
Global $Team1_Missing_Players=0
Global $Team2_Missing_Players=0


$LeagueInformationArray=0
_FileReadToArray(@ScriptDir&"\rawData\League_Information.txt",$LeagueInformationArray)

If IsArray($LeagueInformationArray) Then
GUICtrlSetData($LeagueYear_InputBox,$LeagueInformationArray[1])
GUICtrlSetData($LeagueName_InputBox,$LeagueInformationArray[2])
GUICtrlSetData($League_AVG_InputBox,$LeagueInformationArray[3])
GUICtrlSetData($Handicap_Precent_InputBox,$LeagueInformationArray[4])
EndIf

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
				$LeagueName_LeagueYears_Handicap_Phandicap_TextFile=FileOpen(@ScriptDir&"\rawData\League_Information.txt",2)
				FileWriteLine($LeagueName_LeagueYears_Handicap_Phandicap_TextFile,GUICtrlRead($LeagueYear_InputBox))
				FileWriteLine($LeagueName_LeagueYears_Handicap_Phandicap_TextFile,GUICtrlRead($LeagueName_InputBox))
				FileWriteLine($LeagueName_LeagueYears_Handicap_Phandicap_TextFile,GUICtrlRead($League_AVG_InputBox))
				FileWriteLine($LeagueName_LeagueYears_Handicap_Phandicap_TextFile,GUICtrlRead($Handicap_Precent_InputBox))

			Exit
        Case $CreateTablesButton
			;startFunction()
		;	MsgBox(0,"",@SCRIPTDIR&"\rawData\"&"dataToExcel.exe")
		Run(@SCRIPTDIR&"\rawData\"&"dataToExcel.exe","")
		;Run('"' & @AutoItExe & '" /AutoIt3ExecuteScript "' & @SCRIPTDIR&"\rawData\"&"dataToExcel.au3"& ' " ', "", @SW_SHOW, 0)
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
		calculateScore()

		Case $PrintGamesCurrentDateButton
			PrintRoundGames()
		Case $Player1_score_game1_1 ;or $Player1_score_game2_1
		;CalculateAverage()
		Case $Player1_score_game2_1 ;or $Player1_score_game2_1
		;CalculateAverage()
		Case $DeleteALLScoresButton
		deleteAll_Scores()

;Case $Player1_score_game3_1 ;or $Player1_score_game2_1
		;CalculateAverage()
		Case $Player1_score_game3_1
		;	CalculateAverage()
		Case $editRoundScoresButton
			Run(@SCRIPTDIR&"\rawData\data\" &"view_or_edit_scores.exe",@SCRIPTDIR)

		Case $HandicapPlayer1_1 Or $HandicapPlayer2_1 Or $HandicapPlayer3_1 Or $HandicapPlayer1_2 Or $HandicapPlayer2_2 Or $HandicapPlayer3_2
			calculateScore()


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
createTeam_Points_TextFile()
	createPlayerAvgTextFile()



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
FileWriteLine($ScoreTextFile,$Team1_points &"points")

FileWriteLine($ScoreTextFile,$Player1_Score_2[1])
FileWriteLine($ScoreTextFile,$Team2_points&"points")


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

GUICtrlSetData($Player1_AVG_1,"")
GUICtrlSetData($Player2_AVG_1,"")
GUICtrlSetData($Player3_AVG_1,"")
GUICtrlSetData($Player1_AVG_2,"")
GUICtrlSetData($Player2_AVG_2,"")
GUICtrlSetData($Player3_AVG_2,"")

GUICtrlSetData($HandicapPlayer1_1,"")
GUICtrlSetData($HandicapPlayer2_1,"")
GUICtrlSetData($HandicapPlayer3_1,"")
GUICtrlSetData($HandicapPlayer1_2,"")
GUICtrlSetData($HandicapPlayer2_2,"")
GUICtrlSetData($HandicapPlayer3_2,"")

EndFunc

Func RoundNumberInput_function()

	If  ((GUICtrlRead( $RoundNumberInput)="1") And ($NextIndex=0) And $readmeFlage=1) Then
$readmeFlage=0
MsgBox(0,"READ ME","In the first and the second rounds"&@CRLF&"You need to manually add players LAST YEAR averages"&@CRLF&"This is for Handicap calculation."&@CRLF&"After the second round the system will calculate the real player average" )
	EndIf
	$returnArray=0
;$NextIndex=0
_FileReadToArray(@ScriptDir&"\rawData\GamesDate.txt",$returnArray);read text file into an array

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
calculateScore()



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

Func WM_COMMAND($hWnd, $Msg, $wParam, $lParam)
    $nNotifyCode = BitShift($wParam, 16)
    $nID = BitAnd($wParam, 0x0000FFFF)

    Switch $nNotifyCode
		Case $EN_UPDATE
			calculateHandicap()

        $PreviousTitle=GUICtrlRead($nID-1)
;MsgBox(0,"-1",$PreviousTitle)
;If $CurrentTitle<>"2016-2017" Then
If GUICtrlRead($nID)="E" Then
	$DO_SCORE_CALCULATION=0
	GUICtrlSetData($Operation_Mode_Label2,"EDIT")
	MsgBox(0,"EDIT MODE","THIS IS EDIT MODE , YOU CAN ENTER ANY DATA YOU WANT ,"&@CRLF& "HIT 'ENTER DATA' TO SAVE"&@CRLF&"NO CALCULATION WILL BE MADE IN EDIT MODE "&@CRLF&"THE ONLY WAY TO EXIT EDIT MODE IS BY EXITING THE PROGRAM")
	GUICtrlSetStyle($ScoreTeam1 ,BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
	GUICtrlSetStyle($ScoreTeam2 ,BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
	GUICtrlSetStyle($HandicapPlayer1_1,BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
	GUICtrlSetStyle($HandicapPlayer2_1,BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
	GUICtrlSetStyle($HandicapPlayer3_1,BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
	GUICtrlSetStyle($HandicapPlayer1_2,BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
	GUICtrlSetStyle($HandicapPlayer2_2,BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
	GUICtrlSetStyle($HandicapPlayer3_2,BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
	GUICtrlSetData($nID,"")
EndIf

If GUICtrlRead($nID)="H" Then
	If $DO_SCORE_CALCULATION=1 Then
	GUICtrlSetData($Operation_Mode_Label2,"HASLAMA")
	MsgBox(0,"HASLAMA MODE","The system is entering HASLAMA Mode , NO SCORE CALCULATION WILL BE MADE!!"&@CRLF&"You can return to normal mode by pressing H again")
	$DO_SCORE_CALCULATION=0
	Else
	GUICtrlSetData($Operation_Mode_Label2,"NORMAL")
	MsgBox(0,"NORMAL MODE","The system is Returning to normal Mode")
	$DO_SCORE_CALCULATION=1
	EndIf
	 GUICtrlSetData($nID,"")
EndIf

If ($PreviousTitle<>"League year:") Then;;igonre warning for this input boxes
	If ($PreviousTitle<>"League Name:") Then
            If StringLen(GUICtrlRead($nID)) = 3 Then
$checkIfDecimalNumber=GUICtrlRead($nID)
$checkIfDecimalNumber=StringSplit($checkIfDecimalNumber,".")
			If $checkIfDecimalNumber[0]<>2 Then;only if not decimal number
					If (Int(GUICtrlRead($nID))>300 Or Int(GUICtrlRead($nID))<0 ) Then

						MsgBox(0,"ERROR","Only LAMPEL can score more then 300")
						GUICtrlSetState($nID, $GUI_FOCUS)

				;	ElseIf Not((StringIsDigit(GUICtrlRead($nID)))) Then
				;	    MsgBox(0,"ERROR","ONLY numbers are allowed")
				;		GUICtrlSetState($nID, $GUI_FOCUS)
					Else
		;				calculateScore()
						GUICtrlSetState($nID+1, $GUI_FOCUS)
					EndIf
			EndIf
			EndIf
	EndIf
	EndIf
		EndSwitch
EndFunc


Func calculateScore()
;InputBox ( "title", "prompt")
$Team1_Missing_Players=0
$Team2_Missing_Players=0

If GUICtrlRead($Player1_score_game1_1)="" Then
$Player1_1_missing=1
$Team1_Missing_Players+=1

EndIf

If $DO_SCORE_CALCULATION=1 Then

$ScoreTeam1_func=0
$ScoreTeam2_func=0



If (   (Int(GUICtrlRead($HandicapPlayer1_1))+Int(GUICtrlRead($HandicapPlayer2_1))+Int(GUICtrlRead($HandicapPlayer3_1))+Int(GUICtrlRead($Player1_score_game1_1))+Int(GUICtrlRead($Player2_score_game1_1))+Int(GUICtrlRead($Player3_score_game1_1)))  = (Int(GUICtrlRead($Player1_score_game1_2))+Int(GUICtrlRead($Player2_score_game1_2))+Int(GUICtrlRead($Player3_score_game1_2))+Int(GUICtrlRead($HandicapPlayer1_2))+Int(GUICtrlRead($HandicapPlayer2_2))+Int(GUICtrlRead($HandicapPlayer3_2))) ) Then
$ScoreTeam1_func+=0.5
$ScoreTeam2_func+=0.5
ElseIf  ( (Int(GUICtrlRead($HandicapPlayer1_1))+Int(GUICtrlRead($HandicapPlayer2_1))+Int(GUICtrlRead($HandicapPlayer3_1))+Int(GUICtrlRead($Player1_score_game1_1))+Int(GUICtrlRead($Player2_score_game1_1))+Int(GUICtrlRead($Player3_score_game1_1)))  > (Int(GUICtrlRead($Player1_score_game1_2))+Int(GUICtrlRead($Player2_score_game1_2))+Int(GUICtrlRead($Player3_score_game1_2))+Int(GUICtrlRead($HandicapPlayer1_2))+Int(GUICtrlRead($HandicapPlayer2_2))+Int(GUICtrlRead($HandicapPlayer3_2))) ) Then

	$ScoreTeam1_func+=1
	Else
$ScoreTeam2_func+=1
EndIf

If (   (Int(GUICtrlRead($HandicapPlayer1_1))+Int(GUICtrlRead($HandicapPlayer2_1))+Int(GUICtrlRead($HandicapPlayer3_1))+Int(GUICtrlRead($Player1_score_game2_1))+Int(GUICtrlRead($Player2_score_game2_1))+Int(GUICtrlRead($Player3_score_game2_1)))  = (Int(GUICtrlRead($Player1_score_game2_2))+Int(GUICtrlRead($Player2_score_game2_2))+Int(GUICtrlRead($Player3_score_game2_2))+Int(GUICtrlRead($HandicapPlayer1_2))+Int(GUICtrlRead($HandicapPlayer2_2))+Int(GUICtrlRead($HandicapPlayer3_2))) ) Then
$ScoreTeam1_func+=0.5
$ScoreTeam2_func+=0.5

ElseIf (   (Int(GUICtrlRead($HandicapPlayer1_1))+Int(GUICtrlRead($HandicapPlayer2_1))+Int(GUICtrlRead($HandicapPlayer3_1))+Int(GUICtrlRead($Player1_score_game2_1))+Int(GUICtrlRead($Player2_score_game2_1))+Int(GUICtrlRead($Player3_score_game2_1)))  > (Int(GUICtrlRead($Player1_score_game2_2))+Int(GUICtrlRead($Player2_score_game2_2))+Int(GUICtrlRead($Player3_score_game2_2))+Int(GUICtrlRead($HandicapPlayer1_2))+Int(GUICtrlRead($HandicapPlayer2_2))+Int(GUICtrlRead($HandicapPlayer3_2))) ) Then

	$ScoreTeam1_func+=1
	Else
$ScoreTeam2_func+=1
EndIf

If (   (Int(GUICtrlRead($HandicapPlayer1_1))+Int(GUICtrlRead($HandicapPlayer2_1))+Int(GUICtrlRead($HandicapPlayer3_1))+Int(GUICtrlRead($Player1_score_game3_1))+Int(GUICtrlRead($Player2_score_game3_1))+Int(GUICtrlRead($Player3_score_game3_1)))  = (Int(GUICtrlRead($Player1_score_game3_2))+Int(GUICtrlRead($Player2_score_game3_2))+Int(GUICtrlRead($Player3_score_game3_2))+Int(GUICtrlRead($HandicapPlayer1_2))+Int(GUICtrlRead($HandicapPlayer2_2))+Int(GUICtrlRead($HandicapPlayer3_2))) ) Then
$ScoreTeam1_func+=0.5
$ScoreTeam2_func+=0.5
ElseIf (   (Int(GUICtrlRead($HandicapPlayer1_1))+Int(GUICtrlRead($HandicapPlayer2_1))+Int(GUICtrlRead($HandicapPlayer3_1))+Int(GUICtrlRead($Player1_score_game3_1))+Int(GUICtrlRead($Player2_score_game3_1))+Int(GUICtrlRead($Player3_score_game3_1)))  > (Int(GUICtrlRead($Player1_score_game3_2))+Int(GUICtrlRead($Player2_score_game3_2))+Int(GUICtrlRead($Player3_score_game3_2))+Int(GUICtrlRead($HandicapPlayer1_2))+Int(GUICtrlRead($HandicapPlayer2_2))+Int(GUICtrlRead($HandicapPlayer3_2))) ) Then


	$ScoreTeam1_func+=1
	Else
$ScoreTeam2_func+=1
	EndIf

;%%%%%%%%%%%%%%%%%
;ask aria if handicap is times 3 or not
;%%%%%%%%%%%%%%%%%;
;now calc total pins to see who will get extra 3 points

$totalPins_Plus_handicap_team1=(Int(GUICtrlRead($HandicapPlayer1_1)) + Int(GUICtrlRead($HandicapPlayer2_1)) + Int(GUICtrlRead($HandicapPlayer3_1)))*3 + Int(GUICtrlRead($Player1_Score_Game1_1))+Int(GUICtrlRead($Player1_Score_Game2_1))+Int(GUICtrlRead($Player1_Score_Game3_1))+ Int(GUICtrlRead($Player2_Score_Game1_1))+Int(GUICtrlRead($Player2_Score_Game2_1))+Int(GUICtrlRead($Player2_Score_Game3_1))+ Int(GUICtrlRead($Player3_Score_Game1_1))+Int(GUICtrlRead($Player3_Score_Game2_1))+Int(GUICtrlRead($Player3_Score_Game3_1))
$totalPins_Plus_handicap_team2=(Int(GUICtrlRead($HandicapPlayer1_2)) + Int(GUICtrlRead($HandicapPlayer2_2)) + Int(GUICtrlRead($HandicapPlayer3_2)))*3 + Int(GUICtrlRead($Player1_Score_Game1_2))+Int(GUICtrlRead($Player1_Score_Game2_2))+Int(GUICtrlRead($Player1_Score_Game3_2))+ Int(GUICtrlRead($Player2_Score_Game1_2))+Int(GUICtrlRead($Player2_Score_Game2_2))+Int(GUICtrlRead($Player2_Score_Game3_2))+ Int(GUICtrlRead($Player3_Score_Game1_2))+Int(GUICtrlRead($Player3_Score_Game2_2))+Int(GUICtrlRead($Player3_Score_Game3_2))


If $totalPins_Plus_handicap_team1=$totalPins_Plus_handicap_team2 Then
	$ScoreTeam1_func+=1
$ScoreTeam2_func+=1
ElseIf $totalPins_Plus_handicap_team1>$totalPins_Plus_handicap_team2 Then
	$ScoreTeam1_func+=2
Else
	$ScoreTeam2_func+=2
EndIf


If Int(GUICtrlRead($Player1_Score_Game1_1))>249 Then
	$ScoreTeam1_func+=1
	ElseIf Int(GUICtrlRead($Player1_Score_Game1_1))>224 Then
	$ScoreTeam1_func+=0.5
EndIf

If Int(GUICtrlRead($Player1_Score_Game2_1))>249 Then
	$ScoreTeam1_func+=1
	ElseIf Int(GUICtrlRead($Player1_Score_Game2_1))>224 Then
	$ScoreTeam1_func+=0.5
	EndIf


	If Int(GUICtrlRead($Player1_Score_Game3_1))>249 Then
	$ScoreTeam1_func+=1
	ElseIf Int(GUICtrlRead($Player1_Score_Game3_1))>224 Then
	$ScoreTeam1_func+=0.5
EndIf

If Int(GUICtrlRead($Player2_Score_Game1_1))>249 Then
	$ScoreTeam1_func+=1
	ElseIf Int(GUICtrlRead($Player2_Score_Game1_1))>224 Then
	$ScoreTeam1_func+=0.5
EndIf

If Int(GUICtrlRead($Player2_Score_Game2_1))>249 Then
	$ScoreTeam1_func+=1
	ElseIf Int(GUICtrlRead($Player2_Score_Game2_1))>224 Then
	$ScoreTeam1_func+=0.5
	EndIf


	If Int(GUICtrlRead($Player2_Score_Game3_1))>249 Then
	$ScoreTeam1_func+=1
	ElseIf Int(GUICtrlRead($Player2_Score_Game3_1))>224 Then
	$ScoreTeam1_func+=0.5
EndIf

If Int(GUICtrlRead($Player3_Score_Game1_1))>249 Then
	$ScoreTeam1_func+=1
	ElseIf Int(GUICtrlRead($Player3_Score_Game1_1))>224 Then
	$ScoreTeam1_func+=0.5
EndIf

If Int(GUICtrlRead($Player3_Score_Game2_1))>249 Then
	$ScoreTeam1_func+=1
	ElseIf Int(GUICtrlRead($Player3_Score_Game2_1))>224 Then
	$ScoreTeam1_func+=0.5
	EndIf


	If Int(GUICtrlRead($Player3_Score_Game3_1))>249 Then
	$ScoreTeam1_func+=1
	ElseIf Int(GUICtrlRead($Player3_Score_Game3_1))>224 Then
	$ScoreTeam1_func+=0.5
EndIf

;===;
If Int(GUICtrlRead($Player1_Score_Game1_2))>249 Then
	$ScoreTeam2_func+=1
	ElseIf Int(GUICtrlRead($Player1_Score_Game1_2))>224 Then
	$ScoreTeam2_func+=0.5
EndIf

If Int(GUICtrlRead($Player1_Score_Game2_2))>249 Then
	$ScoreTeam2_func+=1
	ElseIf Int(GUICtrlRead($Player1_Score_Game2_2))>224 Then
	$ScoreTeam2_func+=0.5
	EndIf


	If Int(GUICtrlRead($Player1_Score_Game3_2))>249 Then
	$ScoreTeam2_func+=1
	ElseIf Int(GUICtrlRead($Player1_Score_Game3_2))>224 Then
	$ScoreTeam2_func+=0.5
EndIf

If Int(GUICtrlRead($Player2_Score_Game1_2))>249 Then
	$ScoreTeam2_func+=1
	ElseIf Int(GUICtrlRead($Player2_Score_Game1_2))>224 Then
	$ScoreTeam2_func+=0.5
EndIf

If Int(GUICtrlRead($Player2_Score_Game2_2))>249 Then
	$ScoreTeam2_func+=1
	ElseIf Int(GUICtrlRead($Player2_Score_Game2_2))>224 Then
	$ScoreTeam2_func+=0.5
	EndIf


	If Int(GUICtrlRead($Player2_Score_Game3_2))>249 Then
	$ScoreTeam2_func+=1
	ElseIf Int(GUICtrlRead($Player2_Score_Game3_2))>224 Then
	$ScoreTeam2_func+=0.5
EndIf

If Int(GUICtrlRead($Player3_Score_Game1_2))>249 Then
	$ScoreTeam2_func+=1
	ElseIf Int(GUICtrlRead($Player3_Score_Game1_2))>224 Then
	$ScoreTeam2_func+=0.5
EndIf

If Int(GUICtrlRead($Player3_Score_Game2_2))>249 Then
	$ScoreTeam2_func+=1
	ElseIf Int(GUICtrlRead($Player3_Score_Game2_2))>224 Then
	$ScoreTeam2_func+=0.5
	EndIf


	If Int(GUICtrlRead($Player3_Score_Game3_2))>249 Then
	$ScoreTeam2_func+=1
	ElseIf Int(GUICtrlRead($Player3_Score_Game3_2))>224 Then
	$ScoreTeam2_func+=0.5
EndIf


;===;

GUICtrlSetData($ScoreTeam1,$ScoreTeam1_func)
GUICtrlSetData($ScoreTeam2,$ScoreTeam2_func)

EndIf



EndFunc


Func calculateHandicap()
;========;
If GUICtrlRead($Player1_AVG_1)<>"" Then

$CalculatedHandicap=Round((Int(GUICtrlRead($League_AVG_InputBox))-Int(GUICtrlRead($Player1_AVG_1)) )*( Int(GUICtrlRead($Handicap_Precent_InputBox))/100))

	If (Int(GUICtrlRead($League_AVG_InputBox))-Int(GUICtrlRead($Player1_AVG_1)))<0 Then
	$CalculatedHandicap=0
	EndIf

GUICtrlSetData($HandicapPlayer1_1,$CalculatedHandicap)
EndIf
;========;
If GUICtrlRead($Player2_AVG_1)<>"" Then

$CalculatedHandicap=Round((Int(GUICtrlRead($League_AVG_InputBox))-Int(GUICtrlRead($Player2_AVG_1)) )*( Int(GUICtrlRead($Handicap_Precent_InputBox))/100))

	If (Int(GUICtrlRead($League_AVG_InputBox))-Int(GUICtrlRead($Player2_AVG_1)))<0 Then
	$CalculatedHandicap=0
	EndIf

GUICtrlSetData($HandicapPlayer2_1,$CalculatedHandicap)
EndIf
;========;
If GUICtrlRead($Player3_AVG_1)<>"" Then

$CalculatedHandicap=Round((Int(GUICtrlRead($League_AVG_InputBox))-Int(GUICtrlRead($Player3_AVG_1)) )*( Int(GUICtrlRead($Handicap_Precent_InputBox))/100))

	If (Int(GUICtrlRead($League_AVG_InputBox))-Int(GUICtrlRead($Player3_AVG_1)))<0 Then
	$CalculatedHandicap=0
	EndIf

GUICtrlSetData($HandicapPlayer3_1,$CalculatedHandicap)
EndIf
;============;
;========;
If GUICtrlRead($Player1_AVG_2)<>"" Then

$CalculatedHandicap=Round((Int(GUICtrlRead($League_AVG_InputBox))-Int(GUICtrlRead($Player1_AVG_2)) )*( Int(GUICtrlRead($Handicap_Precent_InputBox))/100))

	If (Int(GUICtrlRead($League_AVG_InputBox))-Int(GUICtrlRead($Player1_AVG_2)))<0 Then
	$CalculatedHandicap=0
	EndIf

GUICtrlSetData($HandicapPlayer1_2,$CalculatedHandicap)
EndIf
;========;
If GUICtrlRead($Player2_AVG_2)<>"" Then

$CalculatedHandicap=Round((Int(GUICtrlRead($League_AVG_InputBox))-Int(GUICtrlRead($Player2_AVG_2)) )*( Int(GUICtrlRead($Handicap_Precent_InputBox))/100))

	If (Int(GUICtrlRead($League_AVG_InputBox))-Int(GUICtrlRead($Player2_AVG_2)))<0 Then
	$CalculatedHandicap=0
	EndIf

GUICtrlSetData($HandicapPlayer2_2,$CalculatedHandicap)
EndIf
;========;
If GUICtrlRead($Player3_AVG_2)<>"" Then

$CalculatedHandicap=Round((Int(GUICtrlRead($League_AVG_InputBox))-Int(GUICtrlRead($Player3_AVG_2)) )*( Int(GUICtrlRead($Handicap_Precent_InputBox))/100))

	If (Int(GUICtrlRead($League_AVG_InputBox))-Int(GUICtrlRead($Player3_AVG_2)))<0 Then
	$CalculatedHandicap=0
	EndIf

GUICtrlSetData($HandicapPlayer3_2,$CalculatedHandicap)
EndIf
;============;

EndFunc



Func createPlayerAvgTextFile()



;$PlayersAVG_TextFile=FileOpen(@ScriptDir&"\rawData\data\PlayersAVG.txt",2)
;FileWriteLine($PlayersAVG_TextFile,"round "&$roundNumber)



EndFunc

Func createTeam_Points_TextFile()


;=============================team points;=================================
;==========================================================================
Local $TeamPointsArray[11][100]
Local $TeamHighest3GameTotalArray[11][100]
Local $TeamHighest1GameTotalArray[11][100]



$teamNum_1= GUICtrlRead($TeamNumber_1_inputbox)
$teamNum_2= GUICtrlRead($TeamNumber_2_inputbox)
$roundNumberr=GUICtrlRead($RoundNumberInput)
$Team_Points_1=GUICtrlRead($ScoreTeam1)
$Team_Points_2=GUICtrlRead($ScoreTeam2)

_FileReadToArray(@ScriptDir&"\rawData\data\Teams_Points.txt",$TeamPointsArray,0,",")

If Not(IsArray($TeamPointsArray)) Then
	FileCopy(@ScriptDir&"\rawData\"&"Teams_Points_dont_delete_me_critical_file.txt",@ScriptDir&"\rawData\data\Teams_Points.txt")
_FileReadToArray(@ScriptDir&"\rawData\data\Teams_Points.txt",$TeamPointsArray,0,",")
EndIf

$TeamPointsArray[ Int($teamNum_1) ][Int($roundNumberr)]=$Team_Points_1
$TeamPointsArray[ Int($teamNum_2) ][Int($roundNumberr)]=$Team_Points_2

_FileWriteFromArray(@ScriptDir&"\rawData\data\Teams_Points.txt",$TeamPointsArray,Default,Default,",")

;=============================team points;=================================
;==========================================================================





;=============================team - highest- 3 games;=================================
;======================================================================================


_FileReadToArray(@ScriptDir&"\rawData\data\Teams_Points_Highest_3_Games.txt",$TeamHighest3GameTotalArray,0,",")
If Not(IsArray($TeamHighest3GameTotalArray)) Then
FileCopy(@ScriptDir&"\rawData\"&"Teams_Points_dont_delete_me_critical_file.txt",@ScriptDir&"\rawData\data\Teams_Points_Highest_3_Games.txt")
_FileReadToArray(@ScriptDir&"\rawData\data\Teams_Points_Highest_3_Games.txt",$TeamHighest3GameTotalArray,0,",")
EndIf

If $Team1_Missing_Players=0 Then ;;;highest 3 games can be earned ONLY if all Players in a certin team has arrived!!!!
$totalPins_WIthout_handicap_team1=Int(GUICtrlRead($Player1_Score_Game1_1))+Int(GUICtrlRead($Player1_Score_Game2_1))+Int(GUICtrlRead($Player1_Score_Game3_1))+ Int(GUICtrlRead($Player2_Score_Game1_1))+Int(GUICtrlRead($Player2_Score_Game2_1))+Int(GUICtrlRead($Player2_Score_Game3_1))+ Int(GUICtrlRead($Player3_Score_Game1_1))+Int(GUICtrlRead($Player3_Score_Game2_1))+Int(GUICtrlRead($Player3_Score_Game3_1))
Else
$totalPins_WIthout_handicap_team1=0
EndIf


If $Team2_Missing_Players=0 Then ;;;highest 3 games can be earned ONLY if all Players in a certin team has arrived!!!!
$totalPins_WIthout_handicap_team2= Int(GUICtrlRead($Player1_Score_Game1_2))+Int(GUICtrlRead($Player1_Score_Game2_2))+Int(GUICtrlRead($Player1_Score_Game3_2))+ Int(GUICtrlRead($Player2_Score_Game1_2))+Int(GUICtrlRead($Player2_Score_Game2_2))+Int(GUICtrlRead($Player2_Score_Game3_2))+ Int(GUICtrlRead($Player3_Score_Game1_2))+Int(GUICtrlRead($Player3_Score_Game2_2))+Int(GUICtrlRead($Player3_Score_Game3_2))
Else
$totalPins_WIthout_handicap_team2=0
EndIf


$TeamHighest3GameTotalArray[ Int($teamNum_1) ][Int($roundNumberr)]=$totalPins_WIthout_handicap_team1
$TeamHighest3GameTotalArray[ Int($teamNum_2) ][Int($roundNumberr)]=$totalPins_WIthout_handicap_team2

_FileWriteFromArray(@ScriptDir&"\rawData\data\Teams_Points_Highest_3_Games.txt",$TeamHighest3GameTotalArray,Default,Default,",")

;_ArrayDisplay($TeamHighest3GameTotalArray)


;=============================team - highest- 3 games;=================================
;======================================================================================



;=============================team - highest- 1 game total;=================================
;======================================================================================


_FileReadToArray(@ScriptDir&"\rawData\data\Teams_Points_Highest_1_Game_total.txt",$TeamHighest1GameTotalArray,0,",")
If Not(IsArray($TeamHighest1GameTotalArray)) Then
FileCopy(@ScriptDir&"\rawData\"&"Teams_Points_dont_delete_me_critical_file.txt",@ScriptDir&"\rawData\data\Teams_Points_Highest_1_Game_total.txt")
_FileReadToArray(@ScriptDir&"\rawData\data\Teams_Points_Highest_1_Game_total.txt",$TeamHighest1GameTotalArray,0,",")
EndIf

If $Team1_Missing_Players=0 Then ;;;highest 3 games can be earned ONLY if all Players in a certin team has arrived!!!!
$totalPinsSigalGame1_WIthout_handicap_team1=Int(GUICtrlRead($Player1_Score_Game1_1))+ Int(GUICtrlRead($Player2_Score_Game1_1))+ Int(GUICtrlRead($Player3_Score_Game1_1))
$totalPinsSigalGame2_WIthout_handicap_team1=Int(GUICtrlRead($Player1_Score_Game2_1))+ Int(GUICtrlRead($Player2_Score_Game2_1))+ Int(GUICtrlRead($Player3_Score_Game2_1))
$totalPinsSigalGame3_WIthout_handicap_team1=Int(GUICtrlRead($Player1_Score_Game3_1))+ Int(GUICtrlRead($Player2_Score_Game3_1))+ Int(GUICtrlRead($Player3_Score_Game3_1))
$Team1_max_between1_2=_Max($totalPinsSigalGame1_WIthout_handicap_team1,$totalPinsSigalGame2_WIthout_handicap_team1)
$Team1_Max_total_pins_for_a_single_game_in_this_round=_Max($Team1_max_between1_2,$totalPinsSigalGame3_WIthout_handicap_team1)



Else
$Team1_Max_total_pins_for_a_single_game_in_this_round=0
EndIf


If $Team2_Missing_Players=0 Then ;;;highest 3 games can be earned ONLY if all Players in a certin team has arrived!!!!
$totalPinsSigalGame1_WIthout_handicap_team2=Int(GUICtrlRead($Player1_Score_Game1_2))+ Int(GUICtrlRead($Player2_Score_Game1_2))+ Int(GUICtrlRead($Player3_Score_Game1_2))
$totalPinsSigalGame2_WIthout_handicap_team2=Int(GUICtrlRead($Player1_Score_Game2_2))+ Int(GUICtrlRead($Player2_Score_Game2_2))+ Int(GUICtrlRead($Player3_Score_Game2_2))
$totalPinsSigalGame3_WIthout_handicap_team2=Int(GUICtrlRead($Player1_Score_Game3_2))+ Int(GUICtrlRead($Player2_Score_Game3_2))+ Int(GUICtrlRead($Player3_Score_Game3_2))

$Team2_max_between1_2=_Max($totalPinsSigalGame1_WIthout_handicap_team2,$totalPinsSigalGame2_WIthout_handicap_team2)
$Team2_Max_total_pins_for_a_single_game_in_this_round=_Max($Team2_max_between1_2,$totalPinsSigalGame3_WIthout_handicap_team2)
Else
$Team2_Max_total_pins_for_a_single_game_in_this_round=0
EndIf


$TeamHighest1GameTotalArray[ Int($teamNum_1) ][Int($roundNumberr)]=$Team1_Max_total_pins_for_a_single_game_in_this_round
$TeamHighest1GameTotalArray[ Int($teamNum_2) ][Int($roundNumberr)]=$Team2_Max_total_pins_for_a_single_game_in_this_round

_FileWriteFromArray(@ScriptDir&"\rawData\data\Teams_Points_Highest_1_Game_total.txt",$TeamHighest1GameTotalArray,Default,Default,",")

_ArrayDisplay($TeamHighest1GameTotalArray)


;=============================team - highest- 1 game total;=================================
;======================================================================================


EndFunc


Func deleteAll_Scores()
        $user_answer=MsgBox(1,"Delete all scores","Are You sure You want do delete all scores and start a new league ?")

		If $user_answer=1 Then;user pressed yes

		$user_answer2=MsgBox(1,"Confirm Delete","CAUTION This Process cannot be undo "&@CRLF&"I will save a backup of Score files IN"&@crlf&@ScriptDir&@CRLF&"Continue??")
				If $user_answer2=1 Then

				EndIf
		EndIf




EndFunc
