#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\pic\download.ico
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
#include<String.au3>
;#include "bowlingTableTry.au3"
;#include "rawData/GUIListViewEx.au3"



#Region ### START Koda GUI section ### Form=H:\bowling_project\print_gui.kxf
$Print_gui = GUICreate("Print", 691, 297, 297, 127)
$Before_The_Round_GroupBox = GUICtrlCreateGroup("Before The Round", 16, 32, 225, 65)
$Which_Round_To_Print_Before_input = GUICtrlCreateInput("", 152, 62, 65, 21,BitOR($GUI_SS_DEFAULT_INPUT,$ES_CENTER))
$RoundToPrint_label = GUICtrlCreateLabel("Which Round To Print:", 24, 64, 121, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$After_The_Round_Groupbox = GUICtrlCreateGroup("After The Round", 248, 32, 417, 241)
$PersonalBestGame_checkbox = GUICtrlCreateCheckbox("Personal Best Game", 259, 136, 123, 17)
GUICtrlSetState(-1,$GUI_CHECKED)
$RoundScores_checkbox = GUICtrlCreateCheckbox("Round Scores", 527, 95, 123, 17)
GUICtrlSetState(-1,$GUI_CHECKED)
$GroupScores_checkbox = GUICtrlCreateCheckbox("Group Scores", 391, 95, 123, 17)
GUICtrlSetState(-1,$GUI_CHECKED)
$PersonalScoresSheet_checkbox = GUICtrlCreateCheckbox("Personal Scores", 259, 95, 123, 17)
GUICtrlSetState(-1,$GUI_CHECKED)
$WhichPageToPrint_label = GUICtrlCreateLabel("Which Pages Do You want to print?", 339, 64, 174, 17)
$browse_input = GUICtrlCreateInput("", 253, 237, 305, 21)
$Browse_button = GUICtrlCreateButton("Browse", 567, 236, 75, 25)
$selectExcelfile_label = GUICtrlCreateLabel("Select Excel Output file", 369, 213, 114, 17)
$Personal_best_3_games_checkbox = GUICtrlCreateCheckbox("Personal Best 3 Games", 391, 136, 127, 17)
GUICtrlSetState(-1,$GUI_CHECKED)
$Group_Best_Game_Checkbox = GUICtrlCreateCheckbox("Group Best Game", 527, 137, 123, 17)
GUICtrlSetState(-1,$GUI_CHECKED)
$GroupBest3games_checkbox = GUICtrlCreateCheckbox("Group Best 3 Games", 259, 172, 123, 17)
GUICtrlSetState(-1,$GUI_CHECKED)
$Game_Schedule_checkbox = GUICtrlCreateCheckbox("Game Schedule", 391, 172, 123, 17)
GUICtrlCreateGroup("", -99, -99, 1, 1)
$FinalPrint_groupbox = GUICtrlCreateGroup("", 16, 140, 225, 134)
$Print_Button = GUICtrlCreateButton("Print Button", 23, 222, 75, 25)
$PrintAfter_radiobutton = GUICtrlCreateRadio("After Sheets", 120, 240, 113, 17)
$PrintBefore_radioButton_Checkbox= GUICtrlCreateRadio("Before Sheets", 120, 216, 113, 17)
$PrintPreview_Checkbox = GUICtrlCreateCheckbox("Print Preview", 20, 176, 127, 17)
$PrinterSelection_Checkbox = GUICtrlCreateCheckbox("Select Printer", 20, 156, 127, 17)
GUICtrlSetState(-1,$GUI_CHECKED)
GUICtrlSetState($PrintBefore_radioButton_checkbox, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


$showPreviewFlag=False ;show preview
$showPrinterSelcetion=True

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg

		Case $GUI_EVENT_CLOSE
			Exit
		Case $PrintPreview_Checkbox
			If _IsChecked($PrintPreview_Checkbox) Then
			$showPreviewFlag=True ;show preview

			Else
			$showPreviewFlag=False ;show preview
			EndIf

		Case $Browse_button
			BrowseSequence()

		Case $Print_Button
					If _IsChecked($PrintAfter_radiobutton) Then
							If GUICtrlRead($browse_input)="" Then
								MsgBox(16,"Please Select an Excel File","You did not Selected an Excel File ")

							Else
								Print_After_Function()
							EndIf
					Else
						Print_Before_Function()
					EndIf
	EndSwitch
WEnd







	Func BrowseSequence()

	     FileChangeDir(@scriptdir&"/../Output_Excel_Files/")
		 $PathUserChose=FileOpenDialog("Select Excel Output File",@WorkingDir,"Excel file (*.xls)" )
         GUICtrlSetData($browse_input,$PathUserChose)

	EndFunc


Func Print_After_Function()


;_Excel_BookClose()
ProcessClose("excel.exe")

; Create application object and create a new workbook
Local $oExcel = _Excel_Open()

; *****************************************************************************
; Open an existing workbook and return its object identifier.
; *****************************************************************************
Local $sWorkbook =GUICtrlRead($browse_input); @ScriptDir & "\..\Output_Excel_Files\round1.xls"
Local $oWorkbook = _Excel_BookOpen($oExcel, $sWorkbook)
If @error Then Exit MsgBox($MB_SYSTEMMODAL, "Excel UDF: _Excel_BookOpen Example 1", "Error opening '" & $sWorkbook & "'." & @CRLF & "@error = " & @error & ", @extended = " & @extended)
;MsgBox($MB_SYSTEMMODAL, "Excel UDF: _Excel_BookOpen Example 1", "Workbook '" & $sWorkbook & "' has been opened successfully." & @CRLF & @CRLF & "Creation Date: " & $oWorkbook.BuiltinDocumentProperties("Creation Date").Value)


If _IsChecked($PersonalScoresSheet_checkbox) Then
$oWorkbook.Sheets (1).Select
With $oWorkbook.Activesheet.PageSetup
.PrintTitleRows="$1:$46"
.PrintTitleColumns="$A:$H"
.Zoom=False
.CenterHorizontally=True
;.Orientation=$xlLandscape
  .FitToPagesWide =1
  .FitToPagesTall =1
  .Zoom =76
; If .Zoom <30 Then .Zoom =76
EndWith

If _IsChecked($PrinterSelection_Checkbox) Then
	$xlDialogPrinterSetup = 9
$hPrinter = $oExcel.Dialogs($xlDialogPrinterSetup).Show
	_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,$hPrinter,$showPreviewFlag)
Else
_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,$showPreviewFlag);,Default,Default,True,Default,"D:\TRY")
EndIf

EndIf


If _IsChecked($GroupScores_checkbox) Then
$oWorkbook.Sheets (2).Select
With $oWorkbook.Activesheet.PageSetup
.PrintTitleRows="$1:$18"
.PrintTitleColumns="$A:$F"
.Zoom=False
.CenterHorizontally=True
;.Orientation=$xlLandscape
  .FitToPagesWide =1
  .FitToPagesTall =1
  .Zoom =80
; If .Zoom <30 Then .Zoom =76
EndWith


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,$showPreviewFlag);,Default,Default,True,Default,"D:\TRY")
EndIf


If _IsChecked($RoundScores_checkbox) Then
$oWorkbook.Sheets (3).Select
With $oWorkbook.Activesheet.PageSetup
.PrintTitleRows="$1:$46"
.PrintTitleColumns="$A:$H"
.Zoom=False
.CenterHorizontally=True
;.Orientation=$xlLandscape
  .FitToPagesWide =1
  .FitToPagesTall =1
  .Zoom =80
; If .Zoom <30 Then .Zoom =76
EndWith


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,$showPreviewFlag);,Default,Default,True,Default,"D:\TRY")
EndIf


If _IsChecked($PersonalBestGame_checkbox) Then
$oWorkbook.Sheets (4).Select
With $oWorkbook.Activesheet.PageSetup
.PrintTitleRows="$1:$46"
.PrintTitleColumns="$A:$E"
.Zoom=False
.CenterHorizontally=True
;.Orientation=$xlLandscape
  .FitToPagesWide =1
  .FitToPagesTall =1
  .Zoom =80
; If .Zoom <30 Then .Zoom =76
EndWith


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,$showPreviewFlag);,Default,Default,True,Default,"D:\TRY")
EndIf



If _IsChecked($Personal_best_3_games_checkbox) Then
$oWorkbook.Sheets (5).Select
With $oWorkbook.Activesheet.PageSetup
.PrintTitleRows="$1:$46"
.PrintTitleColumns="$A:$F"
.Zoom=False
.CenterHorizontally=True
;.Orientation=$xlLandscape
  .FitToPagesWide =1
  .FitToPagesTall =1
  .Zoom =80
; If .Zoom <30 Then .Zoom =76
EndWith


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,$showPreviewFlag);,Default,Default,True,Default,"D:\TRY")
EndIf


If _IsChecked($Group_Best_Game_Checkbox) Then
$oWorkbook.Sheets (6).Select
With $oWorkbook.Activesheet.PageSetup
.PrintTitleRows="$1:$18"
.PrintTitleColumns="$A:$D"
.Zoom=False
.CenterHorizontally=True
;.Orientation=$xlLandscape
  .FitToPagesWide =1
  .FitToPagesTall =1
  .Zoom =80
; If .Zoom <30 Then .Zoom =76
EndWith


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,$showPreviewFlag);,Default,Default,True,Default,"D:\TRY")
EndIf



If _IsChecked($GroupBest3games_checkbox) Then
$oWorkbook.Sheets (7).Select
With $oWorkbook.Activesheet.PageSetup
.PrintTitleRows="$1:$18"
.PrintTitleColumns="$A:$D"
.Zoom=False
.CenterHorizontally=True
;.Orientation=$xlLandscape
  .FitToPagesWide =1
  .FitToPagesTall =1
  .Zoom =80
; If .Zoom <30 Then .Zoom =76
EndWith


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,$showPreviewFlag);,Default,Default,True,Default,"D:\TRY")
EndIf



If _IsChecked($Game_Schedule_checkbox) Then
$oWorkbook.Sheets (8).Select
With $oWorkbook.Activesheet.PageSetup
.PrintTitleRows="$1:$11"
.PrintTitleColumns="$A:$N"
.Zoom=False
.Orientation=2;$xlLandscape
.CenterHorizontally=True
  .FitToPagesWide =1
  .FitToPagesTall =1
  .Zoom =80
; If .Zoom <30 Then .Zoom =76
EndWith


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,$showPreviewFlag);,Default,Default,True,Default,"D:\TRY")
EndIf

ProcessClose("excel.exe")




EndFunc



Func Print_Before_Function()
;MsgBox(0,"",$msgtoLeague)
If GUICtrlRead($Which_Round_To_Print_Before_input)="" Or GUICtrlRead($Which_Round_To_Print_Before_input)=" " Then
MsgBox(16,"Please Enter a round number","You did not entered a round Number")
ElseIf GUICtrlRead($Which_Round_To_Print_Before_input)="1" Then
MsgBox(16,"I didnt implemented it yet","print first round before is special becuse i have no data base"&@crlf&"didnt implemented it yet")
Else;we enter her in case roundinput is not empty
ProcessClose("excel.exe")
$msgtoLeague=InputBox("Would You Like to say something to the league ? ","Ex:"&@CRLF&"מזל טוב לרגל.. "&@CRLF&"נא לשלם עד לתאריך ..."&@CRLF&@CRLF&@CRLF&"If you dont want to say anything just leave the field empty, And press OK",Default,Default,500)
$Which_Round_To_Print_Before=Number(GUICtrlRead($Which_Round_To_Print_Before_input))-1;i take data from the previous round

FileChangeDir(@scriptdir&"/../Output_Excel_Files/")
$ExcelWantedFile=@WorkingDir&"\round"&$Which_Round_To_Print_Before&".xls"
;MsgBox(0,"wanted file",$ExcelWantedFile)


; *****************************************************************************
; Open an existing workbook and return its object identifier.
; *****************************************************************************
;Local $sWorkbook =GUICtrlRead($browse_input); @ScriptDir & "\..\Output_Excel_Files\round1.xls"
Local $oExcel = _Excel_Open()

If $Which_Round_To_Print_Before+1<>1 Then


Local $oWorkbook = _Excel_BookOpen($oExcel, $ExcelWantedFile)
If @error Then Exit MsgBox($MB_SYSTEMMODAL, "Excel UDF: _Excel_BookOpen Example 1", "Error opening '" & $ExcelWantedFile & "'." & @CRLF & "@error = " & @error & ", @extended = " & @extended)
;MsgBox($MB_SYSTEMMODAL, "Excel UDF: _Excel_BookOpen Example 1", "Workbook '" & $sWorkbook & "' has been opened successfully." & @CRLF & @CRLF & "Creation Date: " & $oWorkbook.BuiltinDocumentProperties("Creation Date").Value)
;MsgBox(0,"",@ScriptDir&"\data\before_Sheet.xlsx")



$DataToCopy=_Excel_RangeRead($oWorkbook,$oWorkbook.ActiveSheet,"D2:D5")
;_ArrayDisplay($DataToCopy)
$LeaueDate=_Excel_RangeRead($oWorkbook,$oWorkbook.ActiveSheet,"F2")

$oWorkbook.Sheets(4) .Select
$RecordGame=_Excel_RangeRead($oWorkbook,$oWorkbook.ActiveSheet,"E8")
$RecordGame_PlayerName=_Excel_RangeRead($oWorkbook,$oWorkbook.ActiveSheet,"B8")
$oWorkbook.Sheets(5) .Select
$RecordTotal=_Excel_RangeRead($oWorkbook,$oWorkbook.ActiveSheet,"F8")
$RecordTotal_PlayerName=_Excel_RangeRead($oWorkbook,$oWorkbook.ActiveSheet,"B8")
$oWorkbook.Sheets(6) .Select
$RecordTotal_TEAM=_Excel_RangeRead($oWorkbook,$oWorkbook.ActiveSheet,"D8")
$RecordTotal_TEAM_Number=_Excel_RangeRead($oWorkbook,$oWorkbook.ActiveSheet,"B8")
$oWorkbook.Sheets(7) .Select
$RecordTotal_3games_TEAM=_Excel_RangeRead($oWorkbook,$oWorkbook.ActiveSheet,"D8")
$RecordTotal_3games_TEAM_Number=_Excel_RangeRead($oWorkbook,$oWorkbook.ActiveSheet,"B8")
;_ArrayDisplay($RecordGame)
Local $TeamPoints[11]
Local $TEAM_INDEX[11]
$oWorkbook.Sheets(2) .Select
$TeamPointsSheetToArray=_Excel_RangeRead($oWorkbook,$oWorkbook.ActiveSheet,"B7:F18")
$TEAM_INDEX[0]=_ArraySearch($TeamPointsSheetToArray,"1",Default,Default,Default,Default,Default,0)
$TEAM_INDEX[1]=_ArraySearch($TeamPointsSheetToArray,"2",Default,Default,Default,Default,Default,0)
$TEAM_INDEX[2]=_ArraySearch($TeamPointsSheetToArray,"3",Default,Default,Default,Default,Default,0)
$TEAM_INDEX[3]=_ArraySearch($TeamPointsSheetToArray,"4",Default,Default,Default,Default,Default,0)
$TEAM_INDEX[4]=_ArraySearch($TeamPointsSheetToArray,"5",Default,Default,Default,Default,Default,0)
$TEAM_INDEX[5]=_ArraySearch($TeamPointsSheetToArray,"6",Default,Default,Default,Default,Default,0)
$TEAM_INDEX[6]=_ArraySearch($TeamPointsSheetToArray,"7",Default,Default,Default,Default,Default,0)
$TEAM_INDEX[7]=_ArraySearch($TeamPointsSheetToArray,"8",Default,Default,Default,Default,Default,0)
$TEAM_INDEX[8]=_ArraySearch($TeamPointsSheetToArray,"9",Default,Default,Default,Default,Default,0)
$TEAM_INDEX[9]=_ArraySearch($TeamPointsSheetToArray,"10",Default,Default,Default,Default,Default,0)
$TEAM_INDEX[10]=_ArraySearch($TeamPointsSheetToArray,"11",Default,Default,Default,Default,Default,0)





Local $GameScheduleArray=0
_FileReadToArray(@ScriptDir&"\Game_Schedule.txt",$GameScheduleArray,Default,"|")
;_ArrayDisplay($GameScheduleArray)
$DataToCopy[0]=$GameScheduleArray[$Which_Round_To_Print_Before+1][0]
$DataToCopy[1]=$GameScheduleArray[$Which_Round_To_Print_Before+1][1]
Local $teamA_vs_TeamB[5]
$teamA_vs_TeamB[0]=$GameScheduleArray[$Which_Round_To_Print_Before+1][2]&" + "&$GameScheduleArray[$Which_Round_To_Print_Before+1][3]
$teamA_vs_TeamB[1]=$GameScheduleArray[$Which_Round_To_Print_Before+1][4]&" + "&$GameScheduleArray[$Which_Round_To_Print_Before+1][5]
$teamA_vs_TeamB[2]=$GameScheduleArray[$Which_Round_To_Print_Before+1][6]&" + "&$GameScheduleArray[$Which_Round_To_Print_Before+1][7]
$teamA_vs_TeamB[3]=$GameScheduleArray[$Which_Round_To_Print_Before+1][8]&" + "&$GameScheduleArray[$Which_Round_To_Print_Before+1][9]
$teamA_vs_TeamB[4]=$GameScheduleArray[$Which_Round_To_Print_Before+1][10]&" + "&$GameScheduleArray[$Which_Round_To_Print_Before+1][11]
;_ArrayDisplay($teamA_vs_TeamB)
;$GameScheduleArray[$Which_Round_To_Print_Before]

$oWorkbook.Sheets(1) .Select
$DataForPlayersAVG=_Excel_RangeRead($oWorkbook,$oWorkbook.ActiveSheet,"B7:H40")

$HandicapFile=0
_FileReadToArray(@ScriptDir&"\League_Information.txt",$HandicapFile)


$HandicapFile[3]=Number($HandicapFile[3]);user set avg
$HandicapFile[4]=Number($HandicapFile[4]);precent
EndIf

If  $Which_Round_To_Print_Before+1=1 Then

EndIf

Local $oBeforeSheet = _Excel_BookOpen($oExcel, @ScriptDir&"\data\before_Sheet.xlsx")
If @error Then Exit MsgBox($MB_SYSTEMMODAL, "Excel UDF: _Excel_BookOpen Example 1", "Error opening '" & $ExcelWantedFile & "'." & @CRLF & "@error = " & @error & ", @extended = " & @extended)


If _IsChecked($PrinterSelection_Checkbox) Then
	$xlDialogPrinterSetup = 9
$hPrinter = $oExcel.Dialogs($xlDialogPrinterSetup).Show
EndIf

For $i=1 To 5

$Player1_A=_StringBetween($TeamPointsSheetToArray[$TEAM_INDEX[-1+$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i]]][1],"",@CRLF)
;MsgBox(0,"HER","HER")
$Player1_A=$Player1_A[0]
$Player1LEN_A=StringLen($Player1_A)
$Player2_A=_StringBetween($TeamPointsSheetToArray[$TEAM_INDEX[-1+$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i]]][1],@CRLF,@CRLF)
$Player2_A=$Player2_A[0]
$Player2LEN_A=StringLen($Player2_A)
$Player3_A=_StringBetween($TeamPointsSheetToArray[$TEAM_INDEX[-1+$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i]]][1],@CRLF,"")
$Player3_A=$Player3_A[0]
;$Player3=StringStripCR($TeamPointsSheetToArray[$TEAM_INDEX[0]][1])
$Player3_A=StringTrimLeft($Player3_A,$Player2LEN_A)
;$Player3_A=StringStripCR($Player3_A)

$Player1_B=_StringBetween($TeamPointsSheetToArray[$TEAM_INDEX[-1+$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i+1]]][1],"",@CRLF)
$Player1_B=$Player1_B[0]
$Player1LEN_B=StringLen($Player1_B)
$Player2_B=_StringBetween($TeamPointsSheetToArray[$TEAM_INDEX[-1+$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i+1]]][1],@CRLF,@CRLF)
$Player2_B=$Player2_B[0]
$Player2LEN_B=StringLen($Player2_B)
$Player3_B=_StringBetween($TeamPointsSheetToArray[$TEAM_INDEX[-1+$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i+1]]][1],@CRLF,"")
$Player3_B=$Player3_B[0]
;$Player3=StringStripCR($TeamPointsSheetToArray[$TEAM_INDEX[0]][1])
$Player3_B=StringTrimLeft($Player3_B,$Player2LEN_B)
;$Player3_B=StringStripCR($Player3_B)


;$STRING1=StringSplit(StringTrimLeft($Player3_A,2),"")
;$STRING1=StringSplit($DataForPlayersAVG,"")
;_ArrayDisplay($STRING1)

$PLAYER1A_INDEX=_ArraySearch($DataForPlayersAVG,StringTrimRight($Player1_A,1),Default,Default,Default,1,Default,0)
$PLAYER2A_INDEX=_ArraySearch($DataForPlayersAVG,StringTrimRight($Player2_A,1),Default,Default,Default,1,Default,0)
$PLAYER3A_INDEX=_ArraySearch($DataForPlayersAVG,StringTrimLeft($Player3_A,2),Default,Default,Default,1,Default,0)
$PLAYER1B_INDEX=_ArraySearch($DataForPlayersAVG,StringTrimRight($Player1_B,1),Default,Default,Default,1,Default,0)
$PLAYER2B_INDEX=_ArraySearch($DataForPlayersAVG,StringTrimRight($Player2_B,1),Default,Default,Default,1,Default,0)
$PLAYER3B_INDEX=_ArraySearch($DataForPlayersAVG,StringTrimLeft($Player3_B,2),Default,Default,Default,1,Default,0)

If $PLAYER1A_INDEX<>-1 Then
$Player1A_Handicap=Round( ($HandicapFile[3]-Number($DataForPlayersAVG[$PLAYER1A_INDEX][6]))*($HandicapFile[4]/100))
If $Player1A_Handicap<0 Then
$Player1A_Handicap=0
EndIf
EndIf

If $PLAYER2A_INDEX<>-1 Then
$Player2A_Handicap=Round( ($HandicapFile[3]-Number($DataForPlayersAVG[$PLAYER2A_INDEX][6]))*($HandicapFile[4]/100))
If $Player2A_Handicap<0 Then
$Player2A_Handicap=0
EndIf
EndIf

If $PLAYER3A_INDEX<>-1 Then
$Player3A_Handicap=Round( ($HandicapFile[3]-Number($DataForPlayersAVG[$PLAYER3A_INDEX][6]))*($HandicapFile[4]/100))
If $Player3A_Handicap<0 Then
$Player3A_Handicap=0
EndIf
EndIf

If $PLAYER1B_INDEX<>-1 Then
$Player1B_Handicap=Round( ($HandicapFile[3]-Number($DataForPlayersAVG[$PLAYER1B_INDEX][6]))*($HandicapFile[4]/100))
If $Player1B_Handicap<0 Then
$Player1B_Handicap=0
EndIf
EndIf

If $PLAYER2B_INDEX<>-1 Then
$Player2B_Handicap=Round( ($HandicapFile[3]-Number($DataForPlayersAVG[$PLAYER2B_INDEX][6]))*($HandicapFile[4]/100))
If $Player2B_Handicap<0 Then
$Player2B_Handicap=0
EndIf
EndIf

If $PLAYER3B_INDEX<>-1 Then
$Player3B_Handicap=Round( ($HandicapFile[3]-Number($DataForPlayersAVG[$PLAYER3B_INDEX][6]))*($HandicapFile[4]/100))
If $Player3B_Handicap<0 Then
$Player3B_Handicap=0
EndIf
EndIf
;_ArrayDisplay($DataForPlayersAVG,"name="&$Player3_A&" index="&$PLAYER3A_INDEX)
;$Player1_A_AVG=


	$oBeforeSheet.Sheets(Int($i)) .Select
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$DataToCopy[0],"I8");this is round NUMBER
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$DataToCopy[1],"I5");this is round date
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$DataToCopy[3],"B9");this is LEAGUE AVG
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$LeaueDate,"I4");this is LEAGUE DATE
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$msgtoLeague,"A44");this is the msg to the league from input box
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$RecordGame,"D6")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$RecordGame_PlayerName,"F6")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$RecordTotal,"D7")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$RecordTotal_PlayerName,"F7")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$RecordTotal_TEAM,"D4")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$RecordTotal_TEAM_Number,"F4")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$RecordTotal_3games_TEAM,"D5")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$RecordTotal_3games_TEAM_Number,"F5")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$teamA_vs_TeamB[$i-1],"I7");this is round NUMBER
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,"קבוצה "&$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i],"E10");this is round NUMBER
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,"קבוצה "&$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i+1],"E27");this is round NUMBER
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,"חתימת קפטן קבוצה "&$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i+1]&":","B24");this is round NUMBER
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,"חתימת קפטן קבוצה "&$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i]&":","B41");this is round NUMBER
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$TeamPointsSheetToArray[$TEAM_INDEX[-1+$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i]]][4],"I12")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$TeamPointsSheetToArray[$TEAM_INDEX[-1+$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i+1]]][4],"I29")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$TeamPointsSheetToArray[$TEAM_INDEX[-1+$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i]]][3],"I11")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$TeamPointsSheetToArray[$TEAM_INDEX[-1+$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i+1]]][3],"I28")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$TeamPointsSheetToArray[$TEAM_INDEX[-1+$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i]]][2],"I10")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$TeamPointsSheetToArray[$TEAM_INDEX[-1+$GameScheduleArray[$Which_Round_To_Print_Before+1][2*$i+1]]][2],"I27")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$Player1_A,"D15")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$Player2_A,"D16")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$Player3_A,"D17")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$Player1_B,"D32")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$Player2_B,"D33")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$Player3_B,"D34")

If $PLAYER1A_INDEX<>-1 Then
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$DataForPlayersAVG[$PLAYER1A_INDEX][6],"B15")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$DataForPlayersAVG[$PLAYER2A_INDEX][6],"B16")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$DataForPlayersAVG[$PLAYER3A_INDEX][6],"B17")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$DataForPlayersAVG[$PLAYER1B_INDEX][6],"B32")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$DataForPlayersAVG[$PLAYER2B_INDEX][6],"B33")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$DataForPlayersAVG[$PLAYER3B_INDEX][6],"B34")
EndIf

_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$Player1A_Handicap,"C15")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$Player2A_Handicap,"C16")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$Player3A_Handicap,"C17")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$Player1B_Handicap,"C32")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$Player2B_Handicap,"C33")
_Excel_RangeWrite($oBeforeSheet,$oBeforeSheet.ActiveSheet,$Player3B_Handicap,"C34")

;$DataForPlayersAVG


;;ACTUAL PRINTING
With $oBeforeSheet.Activesheet.PageSetup
.PrintTitleRows="$1:$47"
.PrintTitleColumns="$A:$K"
.Zoom=False
;.Orientation=2;$xlLandscape
.CenterHorizontally=True
  .FitToPagesWide =1
  .FitToPagesTall =1
  .Zoom =74
; If .Zoom <30 Then .Zoom =76
EndWith

If _IsChecked($PrinterSelection_Checkbox) Then
;	$xlDialogPrinterSetup = 9
;$hPrinter = $oExcel.Dialogs($xlDialogPrinterSetup).Show
	_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,$hPrinter,$showPreviewFlag)
	Else
_Excel_Print($oExcel,$oBeforeSheet.Activesheet,Default,Default,$showPreviewFlag);,Default,Default,True,Default,"D:\TRY")
EndIf

Next




EndIf


ProcessClose("excel.exe")
EndFunc


Func _IsChecked($idControlID)
    Return BitAND(GUICtrlRead($idControlID), $GUI_CHECKED) = $GUI_CHECKED
EndFunc   ;==>_IsChecked


