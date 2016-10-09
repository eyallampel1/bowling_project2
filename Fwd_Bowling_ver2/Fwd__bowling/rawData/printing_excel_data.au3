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
$FinalPrint_groupbox = GUICtrlCreateGroup("", 16, 192, 225, 81)
$Print_Button = GUICtrlCreateButton("Print Button", 23, 222, 75, 25)
$PrintAfter_radiobutton = GUICtrlCreateRadio("After Sheets", 120, 240, 113, 17)
$PrintBefore_radioButton = GUICtrlCreateRadio("Before Sheets", 120, 216, 113, 17)
 GUICtrlSetState($PrintBefore_radioButton, $GUI_CHECKED)
GUICtrlCreateGroup("", -99, -99, 1, 1)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg

		Case $GUI_EVENT_CLOSE
			Exit

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


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,True);,Default,Default,True,Default,"D:\TRY")
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


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,True);,Default,Default,True,Default,"D:\TRY")
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


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,True);,Default,Default,True,Default,"D:\TRY")
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


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,True);,Default,Default,True,Default,"D:\TRY")
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


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,True);,Default,Default,True,Default,"D:\TRY")
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


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,True);,Default,Default,True,Default,"D:\TRY")
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


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,True);,Default,Default,True,Default,"D:\TRY")
EndIf



If _IsChecked($Game_Schedule_checkbox) Then
$oWorkbook.Sheets (8).Select
With $oWorkbook.Activesheet.PageSetup
.PrintTitleRows="$1:$11"
.PrintTitleColumns="$A:$N"
.Zoom=False
;.Orientation=$xlLandscape
  .FitToPagesWide =1
  .FitToPagesTall =1
  .Zoom =80
; If .Zoom <30 Then .Zoom =76
EndWith


_Excel_Print($oExcel,$oWorkbook.Activesheet,Default,Default,True);,Default,Default,True,Default,"D:\TRY")
EndIf

ProcessClose("excel.exe")




EndFunc



Func Print_Before_Function()


If GUICtrlRead($Which_Round_To_Print_Before_input)="" Or GUICtrlRead($Which_Round_To_Print_Before_input)=" " Then
MsgBox(16,"Please Enter a round number","You did not entered a round Number")
EndIf

EndFunc


Func _IsChecked($idControlID)
    Return BitAND(GUICtrlRead($idControlID), $GUI_CHECKED) = $GUI_CHECKED
EndFunc   ;==>_IsChecked


