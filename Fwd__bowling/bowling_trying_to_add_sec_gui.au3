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
#include "H:\bowling_project\GUIListViewEx_2016\GUIListViewEx.au3"

#Region ### START Koda GUI section ### Form=c:\users\hilalampel\documents\bowling.kxf
$Form1_1 = GUICreate("Ahsdod Bowling", 1125, 647, 118, 12)
$CreateTablesButton = GUICtrlCreateButton("Create tables", 616, 552, 75, 25)
;$Label1 = GUICtrlCreateLabel("Open Screen", 440, 8, 81, 17)
;$Label12 = GUICtrlCreateLabel("Date", 928, 48, 37, 17)
;$MonthCal1 = GUICtrlCreateMonthCal("2016/08/02", 848, 72, 257, 155)
$insertDataButton = GUICtrlCreateButton("Enter Data", 616, 520, 75, 25)
$Label15 = GUICtrlCreateLabel("Round Number", 926, 25, 86, 17)
$RoundNumberInput = GUICtrlCreateInput("", 870, 25, 49, 21,$ES_CENTER)
$PrintGamesCurrentDateButton = GUICtrlCreateButton("Print Round", 472, 520, 123, 25)
;================================================= team 2====================================
$Group2 = GUICtrlCreateGroup("", 176, 290, 609, 225)
$TeamPlayer1Name_2 = GUICtrlCreateInput("", 616, 386, 153, 21,$ES_CENTER)
$Player1_score_game1_2 = GUICtrlCreateInput("", 544, 386, 49, 21,$ES_CENTER)
$Player1_score_game2_2 = GUICtrlCreateInput("", 488, 386, 49, 21,$ES_CENTER)
$Player1_score_game3_2 = GUICtrlCreateInput("", 433, 387, 49, 21,$ES_CENTER)
$Label4 = GUICtrlCreateLabel("Game 2", 488, 360, 43, 17)
$Label16 = GUICtrlCreateLabel("Name", 680, 362, 28, 17)
$Label17 = GUICtrlCreateLabel("Game 1", 544, 362, 43, 17)
$Label18 = GUICtrlCreateLabel("Game 3", 433, 363, 43, 17)
$TeamPlayer2Name_2 = GUICtrlCreateInput("", 614, 416, 153, 21,$ES_CENTER)
$Player2_score_game1_2 = GUICtrlCreateInput("", 542, 416, 49, 21,$ES_CENTER)
$Player2_score_game2_2 = GUICtrlCreateInput("", 486, 416, 49, 21,$ES_CENTER)
$Player2_score_game3_2 = GUICtrlCreateInput("", 431, 417, 49, 21,$ES_CENTER)
$TeamPlayer3Name_2 = GUICtrlCreateInput("", 609, 441, 153, 21,$ES_CENTER)
$Player3_score_game1_2 = GUICtrlCreateInput("", 537, 441, 49, 21,$ES_CENTER)
$Player3_score_game2_2 = GUICtrlCreateInput("", 481, 441, 49, 21,$ES_CENTER)
$Player3_score_game3_2 = GUICtrlCreateInput("", 426, 442, 49, 21,$ES_CENTER)
$Label19 = GUICtrlCreateLabel("Handicap", 189, 354, 59, 17)
$HandicapPlayer2_2 = GUICtrlCreateInput("", 189, 410, 49, 21,$ES_CENTER)
$HandicapPlayer3_2 = GUICtrlCreateInput("", 189, 434, 49, 21,$ES_CENTER)
$HandicapPlayer1_2 = GUICtrlCreateInput("", 189, 378, 49, 21,$ES_CENTER)
$Label20 = GUICtrlCreateLabel("Round Average", 256, 352, 75, 17)
$Player1_round_avarege_2 = GUICtrlCreateInput("", 264, 376, 49, 21,$ES_CENTER)
$Player2_round_avarege_2 = GUICtrlCreateInput("", 264, 408, 49, 21,$ES_CENTER)
$Player3_round_avarege_2 = GUICtrlCreateInput("", 264, 432, 49, 21,$ES_CENTER)
$Label21 = GUICtrlCreateLabel("Season Average", 338, 354, 87, 17)
$Player1_Season_Average_2 = GUICtrlCreateInput("", 338, 378, 49, 21,$ES_CENTER)
$Player2_Season_Average_2 = GUICtrlCreateInput("", 338, 410, 49, 21,$ES_CENTER)
$Player3_Season_Average_2 = GUICtrlCreateInput("", 338, 434, 49, 21,$ES_CENTER)
$Label22 = GUICtrlCreateLabel("Team Number", 432, 301, 75, 17)
$TeamNumber_2_inputbox = GUICtrlCreateInput("", 440, 325, 49, 21,$ES_CENTER)
$TotalPins_Plus_Handicap_team2 = GUICtrlCreateInput("", 356, 485, 49, 21,$ES_CENTER)
$ScoreTeam2 = GUICtrlCreateInput("", 190, 484, 49, 21,$ES_CENTER)
$Label23 = GUICtrlCreateLabel("Team Total Pins + Handicap", 414, 485, 163, 17)
$Label24 = GUICtrlCreateLabel("Score", 243, 489, 28, 17)
$Label7 = GUICtrlCreateLabel("Team Total Pins", 670, 479, 99, 17)
$TotalPins_team2 = GUICtrlCreateInput("", 612, 479, 49, 21,$ES_CENTER);group pins b
;================================================= team 2====================================

;================================================= team 1====================================
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group1 = GUICtrlCreateGroup("", 173, 31, 609, 225)
$TeamPlayer1Name_1 = GUICtrlCreateInput("", 613, 127, 153, 21,$ES_CENTER);player 1 name - team 1
$Player1_score_game1_1 = GUICtrlCreateInput("", 541, 127, 49, 21,$ES_CENTER)
$Player1_score_game2_1 = GUICtrlCreateInput("", 485, 127, 49, 21,$ES_CENTER)
$Player1_score_game3_1 = GUICtrlCreateInput("", 430, 128, 49, 21,$ES_CENTER);;game3 team 1 input
$Player1_round_avarege_1 = GUICtrlCreateInput("", 261, 117, 49, 21,$ES_CENTER)
$Label2 = GUICtrlCreateLabel("Game 2", 485, 101, 43, 17)
$Label3 = GUICtrlCreateLabel("Name", 677, 103, 28, 17)
$Label5 = GUICtrlCreateLabel("Game 1", 541, 103, 43, 17)
$Label6 = GUICtrlCreateLabel("Game 3", 430, 104, 43, 17)

$TeamPlayer2Name_1 = GUICtrlCreateInput("", 611, 157, 153, 21,$ES_CENTER)
$Player2_score_game1_1 = GUICtrlCreateInput("", 539, 157, 49, 21,$ES_CENTER)
$Player2_score_game2_1 = GUICtrlCreateInput("", 483, 157, 49, 21,$ES_CENTER)
$Player2_score_game3_1 = GUICtrlCreateInput("", 428, 158, 49, 21,$ES_CENTER)
$TeamPlayer3Name_1 = GUICtrlCreateInput("", 606, 182, 153, 21,$ES_CENTER)
$Player3_score_game1_1 = GUICtrlCreateInput("", 534, 182, 49, 21,$ES_CENTER)
$Player3_score_game2_1 = GUICtrlCreateInput("", 478, 182, 49, 21,$ES_CENTER)
$Player3_score_game3_1 = GUICtrlCreateInput("", 423, 183, 49, 21,$ES_CENTER)
$Label8 = GUICtrlCreateLabel("Handicap", 186, 95, 59, 17)
$HandicapPlayer2_1 = GUICtrlCreateInput("", 186, 151, 49, 21,$ES_CENTER)
$HandicapPlayer3_1 = GUICtrlCreateInput("", 186, 175, 49, 21,$ES_CENTER)
$HandicapPlayer1_1 = GUICtrlCreateInput("", 186, 119, 49, 21,$ES_CENTER)
$Label9 = GUICtrlCreateLabel("Round Average", 253, 93, 75, 17)

$Player2_round_avarege_1 = GUICtrlCreateInput("", 261, 149, 49, 21,$ES_CENTER)
$Player3_round_avarege_1 = GUICtrlCreateInput("", 261, 173, 49, 21,$ES_CENTER)
$Label10 = GUICtrlCreateLabel("Season Average", 335, 95, 87, 17)
$Player1_Season_Average_1 = GUICtrlCreateInput("", 335, 119, 49, 21,$ES_CENTER)
$Player2_Season_Average_1 = GUICtrlCreateInput("", 335, 151, 49, 21,$ES_CENTER)
$Player3_Season_Average_1 = GUICtrlCreateInput("", 335, 175, 49, 21,$ES_CENTER)
$Label11 = GUICtrlCreateLabel("Team Number", 429, 42, 75, 17)
$TeamNumber_1_inputbox = GUICtrlCreateInput("", 437, 66, 49, 21,$ES_CENTER)
$TotalPins_Plus_Handicap_team1 = GUICtrlCreateInput("", 353, 226, 49, 21,$ES_CENTER)
$ScoreTeam1 = GUICtrlCreateInput("", 187, 225, 49, 21,$ES_CENTER)
$Label13 = GUICtrlCreateLabel("Team Total Pins + Handicap", 411, 226, 163, 17)
$Label14 = GUICtrlCreateLabel("Score", 240, 230, 28, 17)
$Label25 = GUICtrlCreateLabel("Team Total Pins", 667, 220, 99, 17)
$TotalPins_team1 = GUICtrlCreateInput("", 609, 220, 49, 21,$ES_CENTER)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Label26 = GUICtrlCreateLabel("VS", 460, 267, 29, 17)
$Group3 = GUICtrlCreateGroup("First time use", 840, 304, 185, 153)
$InsertPlayersNamesInitialInsertButton = GUICtrlCreateButton("Players names", 864, 328, 139, 25)
$DivideIntoTeamsInitialInsertButton = GUICtrlCreateButton("team divider", 864, 376, 139, 25)
$InseartGamesDateButton = GUICtrlCreateButton("Games Schedule", 864, 421, 139, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###
;================================================= team 1====================================


;====sec gui
Global $iCount_Left = 20, $iCount_Right = 20, $vData, $sMsg, $aLV_List_Left, $aLV_List_Right, $aRet, $iEditMode = 0

; Create GUI
$hGUI = GUICreate("Add Players", 640, 510)

$hListView_Right = _GUICtrlListView_Create($hGUI, "", 10, 40, 200, 300, BitOR($LVS_DEFAULT, $WS_BORDER))


; Read array from Right  ListView
Global $aLV_List_Right = _GUIListViewEx_ReadToArray($hListView_Right, 1)
; The array as read from Right ListView and used subsequently
;_ArrayDisplay($aLV_List_Right, "Read from Right ListView")



; Initiate LVEx - use read content as array - count parameter set - red insert mark - drag image - move edit by click + headers editable
$iLV_Right_Index = _GUIListViewEx_Init($hListView_Right, $aLV_List_Right, 1, 0xFF0000, True, 4 + 8)


; Create buttons
$cInsert_Button = GUICtrlCreateButton("Insert", 10, 350, 200, 30)
$cDelete_Button = GUICtrlCreateButton("Delete", 10, 390, 200, 30)
$cUp_Button = GUICtrlCreateButton("Move Up", 220, 350, 200, 30)
$cDown_Button = GUICtrlCreateButton("Move Down", 220, 390, 200, 30)
;$cEdit_Left_Button = GUICtrlCreateButton("Edit Left 1,1", 10, 430, 200, 30)
$cEdit_Right_Button = GUICtrlCreateButton("Edit Right 5,0", 220, 430, 200, 30)
;$cHeader_Left_Button = GUICtrlCreateButton("Edit Left Header 1", 10, 470, 200, 30)
$cHeader_Right_Button = GUICtrlCreateButton("Edit Right Header 0", 220, 470, 200, 30)
;$cDisplay_Left_Button = GUICtrlCreateButton("Show Left", 430, 350, 100, 30)
;$cDisplay_Right_Button = GUICtrlCreateButton("Show Right", 530, 350, 100, 30)
$cExit_Button = GUICtrlCreateButton("Exit", 430, 390, 200, 110)


;======


;readFromTextFile()
Global $NextIndex=0


Local $aMsg = 0
;both guis
    While 1
        ; Assign to $aMsg the advanced GUI messages.
        $aMsg = GUIGetMsg($GUI_EVENT_ARRAY)

        ; Switch from GUIs
        Switch $aMsg[1]
            Case $Form1_1
                ; The event comes from the GUI1

                ; Switch from event ID
                Switch $aMsg[0]
                   	Case $GUI_EVENT_CLOSE
							Exit
						Case $CreateTablesButton
							startFunction()
						Case $InsertPlayersNamesInitialInsertButton
							GUISetState(@SW_SHOW,$hGUI)
							;GUISetState(@SW_ENABLE,$hGUI)
							;GUISetState(@SW_DISABLE,$Form1_1)
							_gui2()
							;GUISetState(@SW_DISABLE,$hGUI)
							GUISetState(@SW_ENABLE,$Form1_1)
							;InsertPlayersNamesIntoTextFile()
						Case $DivideIntoTeamsInitialInsertButton
							DivideIntoTeams()
						Case $TeamNumber_1_inputbox
							writeToInputBoxesOfTeam1_From_TeamDividerTextFile()
						Case $TeamNumber_2_inputbox
							writeToInputBoxesOfTeam2_From_TeamDividerTextFile()
						Case $InseartGamesDateButton
							InseartDateButton()
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
						Case $Player1_score_game3_1 ;or $Player1_score_game2_1
						;CalculateAverage()
                EndSwitch



			Case $hGUI
				; The event comes from the GUI2
							; Switch from event ID
				Switch $aMsg[0]
								Case $GUI_EVENT_CLOSE, $cExit_Button
							$aLV_List_Right = _GUIListViewEx_ReturnArray($iLV_Right_Index)
							_FileWriteFromArray(@ScriptDir&"\PlayerNames.txt",$aLV_List_Right)
						;Exit
							;GUIDelete($hGUI)
							GUISetState(@SW_HIDE,$hGUI)
					Case $cInsert_Button
						; Prepare data  for insertion
						Switch $aGLVEx_Data[0][1]
							Case 1
								; String format with multi-column native ListView
								$vData = "Tom " & $iCount_Left & "|Dick " & $iCount_Left & "|Harry " & $iCount_Left
								$iCount_Left += 1
								_GUIListViewEx_Insert($vData)
							Case 2
								; Array format with multi-column UDF ListView
								Global $vData[3] = ["Peter " & $iCount_Right, "Paul " & $iCount_Right, "Mary " & $iCount_Right]
								$iCount_Right += 1
								_GUIListViewEx_Insert($vData)
						EndSwitch

					Case $cDelete_Button
						_GUIListViewEx_Delete()

					Case $cUp_Button
						_GUIListViewEx_Up()

					Case $cDown_Button
						_GUIListViewEx_Down()


					Case $cEdit_Right_Button
						$aRet = _GUIListViewEx_EditItem($iLV_Right_Index, 5, 0, $iEditMode) ; Use combos to change EditMode
						; Check array exists
						If IsArray($aRet) Then
							; Uncomment to see returned array
							;_ArrayDisplay($aRet, @error)
						EndIf

					Case $cHeader_Right_Button
						$aHdr_Ret = _GUIListViewEx_EditHeader($iLV_Right_Index, 0)
						; Uncomment to see returned array
						;_ArrayDisplay($aHdr_Ret, @error)
                EndSwitch
        EndSwitch
    WEnd



;end both guis loop




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
;_ArrayDisplay($returnArray)
$Team1Position= _ArraySearch($returnArray,"קבוצה 1")
$Team2Position= _ArraySearch($returnArray,"קבוצה 2")
$Team3Position= _ArraySearch($returnArray,"קבוצה 3")
$Team4Position= _ArraySearch($returnArray,"קבוצה 4")
$Team5Position= _ArraySearch($returnArray,"קבוצה 5")
$Team6Position= _ArraySearch($returnArray,"קבוצה 6")



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

EndSwitch



EndFunc


Func InseartDateButton()
$returnArray=0

;MsgBox(0,"",@ScriptDir&"\PlayerNames.txt")

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
	Local $Player1_Score_1[5]
	$roundNumber=GUICtrlRead($RoundNumberInput)
$Player1_Score_1[0]="round " & $roundNumber
$Player1_Score_1[1]=GUICtrlRead($TeamPlayer1Name_1)
$Player1_Score_1[2]=GUICtrlRead($Player1_score_game1_1 )
$Player1_Score_1[3]=GUICtrlRead($Player1_score_game2_1 )
$Player1_Score_1[4]=GUICtrlRead($Player1_score_game3_1 )
$Player2_Score_Game1_1=GUICtrlRead($Player2_score_game1_1 )
$Player2_Score_Game2_1=GUICtrlRead($Player2_score_game2_1 )
$Player2_Score_Game3_1=GUICtrlRead($Player2_score_game3_1 )
$Player3_Score_Game1_1=GUICtrlRead($Player3_score_game1_1 )
$Player3_Score_Game2_1=GUICtrlRead($Player3_score_game2_1 )
$Player3_Score_Game3_1=GUICtrlRead($Player3_score_game3_1 )

	If $NextIndex=3 Then;added 11.08.16 17:00
	$NextIndex=0
	Else
	$NextIndex+=1
	EndIf

	$returnArray=0
$roundNumber=GUICtrlRead($RoundNumberInput)
If $roundNumber="" Then
MsgBox(0,"You Have To Enter Round Number","You Did not entered round number")


Else

$ScoreTextFile=  FileOpen(@ScriptDir&"\PlayersScore.txt",0)
If $ScoreTextFile=1 then ;file exist add names
;MsgBox(0,"","file exist")
;_FileReadToArray(@ScriptDir&"\PlayersScore.txt",$returnArray);read text file into an array
_ArrayDisplay($Player1_Score_1)
_FileWriteFromArray(@ScriptDir&"\PlayersScore.txt",$Player1_Score_1)


;_ArrayDisplay($returnArray)

Else;file does not exist , create new file name
;MsgBox(0,"","file dosent exists")
$ScoreTextFile= FileOpen(@ScriptDir&"\PlayersScore.txt",1)
ShellExecute(@ScriptDir&"\PlayersScore.txt")
EndIf
FileClose($ScoreTextFile)


EndIf
RoundNumberInput_function()

EndFunc
;===============================;

Func RoundNumberInput_function()
	$returnArray=0

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
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round1[7])

	Case "2"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round2[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round2[7])
	Case "3"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round3[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round3[7])
	Case "4"
		GUICtrlSetData($TeamNumber_1_inputbox,$splitStringArray_Team_vs_Team_round4[1])
		GUICtrlSetData($TeamNumber_2_inputbox,$splitStringArray_Team_vs_Team_round4[7])

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

GUICtrlSetData($Player1_round_avarege_1 ,$Player1_round_average)

EndFunc



;;=============================================================================gui 2 =============================================
;=================================================================================================================================
Func _gui2()




Local $TeamNumber[200]
; Create Right ListView
;GUICtrlCreateLabel("UDF ListView", 430, 5, 300, 30)
$returnArray=0
_FileReadToArray(@ScriptDir&"\PlayerNames.txt",$returnArray);read text file into an array
_ArrayDelete($returnArray,0)
_ArrayDelete($returnArray,0)
;_ArrayDelete($returnArray,0)



For $j=0 to UBound($returnArray)-1
$splited=StringSplit($returnArray[$j],"|")

If UBound($splited)=3 Then
$TeamNumber[$j]=$splited[2]
$returnArray[$j]=$splited[1]
EndIf
Next
;_ArrayDisplay($TeamNumber)



_GUICtrlListView_SetExtendedListViewStyle($hListView_Right, $LVS_EX_FULLROWSELECT)
_GUICtrlListView_AddColumn($hListView_Right, "שם השחקן", 117)
_GUICtrlListView_AddColumn($hListView_Right, "מספר קבוצה", 83);add column
;_GUICtrlListView_AddColumn($hListView_Right, "Mary", 83)

_GUICtrlListView_SetTextBkColor($hListView_Right, 0xFFFFFF)
_GUICtrlListView_JustifyColumn($hListView_Right,1,2)
For $i=0 to UBound($returnArray)-1
_GUICtrlListView_AddItem($hListView_Right,$returnArray[$i]);;add row 0
Next



;_GUICtrlListView_AddItem($hListView_Right, "eyal");;add row 1
;_GUICtrlListView_AddItem($hListView_Right, "eyal")

;


; Fill Right ListView
For $i = 0 To $iCount_Right
	;_GUICtrlListView_AddItem($hListView_Right, "Peter " & $i - 1)
_GUICtrlListView_AddSubItem($hListView_Right,$i,$TeamNumber[$i] , 1)
	;_GUICtrlListView_AddSubItem($hListView_Right, $i - 1, "Mary " & $i - 1, 2)
Next




; All columns editable - simple text selected on open
;_GUIListViewEx_SetEditStatus($iLV_Right_Index,"1"); "*")




; Register for sorting, dragging and editing
_GUIListViewEx_MsgRegister()

GUISetState()

; Set the left ListView as active
_GUIListViewEx_SetActive(1)

Switch _GUIListViewEx_GetActive()
	Case 0
		$sMsg = "No ListView is active"
	Case 1
		$sMsg = "The LEFT ListView is active" & @CRLF & "<--------------------------"
	Case 2
		$sMsg = "The RIGHT ListView is active" & @CRLF & "---------------------------->"
EndSwitch
;MsgBox(0, "Active ListView", $sMsg)




EndFunc

;==================================================================================================================================
;================================================================================================================================
