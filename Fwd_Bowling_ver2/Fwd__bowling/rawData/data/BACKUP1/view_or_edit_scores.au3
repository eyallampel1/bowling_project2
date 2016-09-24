#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\..\pic\download.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GuiConstantsEx.au3>
#include <WindowsConstants.au3>
#include "GUIListViewEx.au3"
#include <Array.au3> ; Just for display in example
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
#include <File.au3>
#include <FileConstants.au3>
#include <MsgBoxConstants.au3>
#include <WinAPIFiles.au3>



;#include "UDFs\ListViewColorsFonts2.au3"
;#include "UDFs\GuiListViewEx2.au3"



;Func _gui2()
Global $iCount_Left = 1,$TeamRunningIndex=1,$TeamRunningIndex2=1, $iCount_Right = 20, $vData, $sMsg, $aLV_List_Left, $aLV_List_Right, $aRet, $iEditMode = 0

; Create GUI
$GameScheduleGui = GUICreate("view edit scores", 750, 510)
GUISetIcon(@ScriptDir&"\..\..\pic\download.ico")

Local $TeamNumber[200]
; Create Right ListView
;GUICtrlCreateLabel("UDF ListView", 430, 5, 300, 30)
$returnArray=0

$return2=0



$hListView_Right = _GUICtrlListView_Create($GameScheduleGui, "", 200, 10, 470, 400, BitOR($LVS_DEFAULT, $WS_BORDER))
_GUICtrlListView_SetExtendedListViewStyle($hListView_Right, BitOR($LVS_EX_FULLROWSELECT,$LVS_EX_GRIDLINES ))
;_GUICtrlListView_AddColumn($hListView_Right, "", 43)
_GUICtrlListView_AddColumn($hListView_Right, "Player name", 100)
_GUICtrlListView_AddColumn($hListView_Right, "Team number", 100)
_GUICtrlListView_AddColumn($hListView_Right, "Game 1", 83);add column
_GUICtrlListView_AddColumn($hListView_Right, "Game 2", 83)
_GUICtrlListView_AddColumn($hListView_Right, "Game 3", 83)
_GUICtrlListView_JustifyColumn ( $hListView_Right,0,2);center text in coulum 0 , [2 is center text 1 is right aliagn]
_GUICtrlListView_JustifyColumn ( $hListView_Right,1,2);center text in coulum 1
_GUICtrlListView_JustifyColumn ( $hListView_Right,2,2);center text in coulum 2
_GUICtrlListView_JustifyColumn ( $hListView_Right,3,2);center text in coulum 3
_GUICtrlListView_JustifyColumn ( $hListView_Right,4,2);center text in coulum 4


;=======read all text files into an array

$aFileList = _FileListToArray(@Scriptdir, "*.txt")
;MsgBox(0,"",@Scriptdir&"\rawdata\")

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
	    _FileReadToArray(@ScriptDir & "\" & $aFileList[$i],$sFile)
    ; Add file content to [n][1] element
    $aFileStrings[$i][1] = $sFile
Next

;_ArrayDisplay($aFileStrings)


;_ArrayDisplay($aFileStrings[4][1])
;_ArrayDisplay($aFileStrings[5][1])
;_ArrayDisplay($aFileStrings[6][1])
;_ArrayDisplay($aFileStrings[7][1])
;=====
$index3=0
Local $singleTextFileArray
Local $nameIndex=-1

Local $roundflage=0
_FileReadToArray(@ScriptDir&"\roundNumber.txt",$roundflage)

Local $team1Points[1200]
Local $team2Points[1200]
$jjj=-1
For $index3=1 to UBound($aFileStrings)-1

 $singleTextFileArray=$aFileStrings[$index3][1];acsses array within array
; _ArrayDisplay($singleTextFileArray)
 If IsArray($singleTextFileArray) Then
	If ($roundflage[1]=$singleTextFileArray[1]) And ($singleTextFileArray[0]==41) Then
;	MsgBox(0,"ok","")
;If $singleTextFileArray[0]==41 Then
$jjj+=1
$pointsIndex=_ArraySearch($singleTextFileArray,"points",Default,Default,Default,1)

$team1Points[$jjj]=$singleTextFileArray[Int($pointsIndex)]
$team2Points[$jjj]=$singleTextFileArray[Int($pointsIndex+2)]
$team1Points[$jjj]=StringStripWS($team1Points[$jjj] ,$STR_STRIPSPACES)
$team2Points[$jjj]=StringStripWS($team2Points[$jjj] ,$STR_STRIPSPACES)
;_ArrayDisplay($team1Points)
;_ArrayDisplay($team2Points)
$nameIndex+=1
;	_ArrayDisplay($singleTextFileArray,$pointsIndex)
_GUICtrlListView_AddItem($hListView_Right, "1",$nameIndex);; dummy 6 row addition i use only subitem
_GUICtrlListView_AddItem($hListView_Right, "1",$nameIndex)
_GUICtrlListView_AddItem($hListView_Right, "1",$nameIndex)
_GUICtrlListView_AddItem($hListView_Right, "1",$nameIndex)
_GUICtrlListView_AddItem($hListView_Right, "1",$nameIndex)
_GUICtrlListView_AddItem($hListView_Right, "1",$nameIndex)

;MsgBox(0,"",$singleTextFileArray[3])
;_ArrayDisplay($singleTextFileArray)
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex, $singleTextFileArray[3],0);name1team1
$teamNumberOnly=StringSplit($singleTextFileArray[2],"teamNumber:")
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex, $teamNumberOnly[12],1);name1team1
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex, $singleTextFileArray[4],2);score1
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex, $singleTextFileArray[5],3);score2
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex, $singleTextFileArray[6],4);score3

_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+1, $singleTextFileArray[9],0);name2team1
$teamNumberOnly=StringSplit($singleTextFileArray[8],"teamNumber:")
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+1, $teamNumberOnly[12],1);name1team1
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+1, $singleTextFileArray[10],2);score1
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+1, $singleTextFileArray[11],3);score2
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+1, $singleTextFileArray[12],4);score3

_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+2, $singleTextFileArray[15],0);name3team1
$teamNumberOnly=StringSplit($singleTextFileArray[14],"teamNumber:")
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+2, $teamNumberOnly[12],1);name1team1
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+2, $singleTextFileArray[16],2);score1
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+2, $singleTextFileArray[17],3);score2
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+2, $singleTextFileArray[18],4);score3

_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+3, $singleTextFileArray[21],0);name1team2
$teamNumberOnly=StringSplit($singleTextFileArray[20],"teamNumber:")
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+3, $teamNumberOnly[12],1);name1team1
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+3, $singleTextFileArray[22],2);score1
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+3, $singleTextFileArray[23],3);score2
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+3, $singleTextFileArray[24],4);score3

_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+4, $singleTextFileArray[27],0);name2team2
$teamNumberOnly=StringSplit($singleTextFileArray[26],"teamNumber:")
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+4, $teamNumberOnly[12],1);name1team1
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+4, $singleTextFileArray[28],2);score1
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+4, $singleTextFileArray[29],3);score2
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+4, $singleTextFileArray[30],4);score3

_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+5, $singleTextFileArray[33],0);name3team2
$teamNumberOnly=StringSplit($singleTextFileArray[32],"teamNumber:")
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+5, $teamNumberOnly[12],1);name1team1
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+5, $singleTextFileArray[34],2);score1
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+5, $singleTextFileArray[35],3);score2
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+5, $singleTextFileArray[36],4);score3

;_GUICtrlListView_AddSubItem($hListView_Right,$nameIndex, $singleTextFileArray[3],$nameIndex+6*$nameIndex);;add row 1
;_GUICtrlListView_AddSubItem($hListView_Right,$nameIndex+1+6*$nameIndex, $singleTextFileArray[9],0);;add row 1
;_GUICtrlListView_AddSubItem($hListView_Right,$nameIndex+2+6*$nameIndex, $singleTextFileArray[15],0);;add row 1
;_GUICtrlListView_AddSubItem($hListView_Right,$nameIndex+3+6*$nameIndex, $singleTextFileArray[21],0);;add row 1
;_GUICtrlListView_AddSubItem($hListView_Right,$nameIndex+4+6*$nameIndex, $singleTextFileArray[27],0);;add row 1
;_GUICtrlListView_AddSubItem($hListView_Right,$nameIndex+5+6*$nameIndex, $singleTextFileArray[33],0);;add row 1

;_GUICtrlListView_AddItem($hListView_Right,$i, $singleTextFileArray[3],$i);;add row 1
;_GUICtrlListView_AddSubItem($hListView_Right,$i, $singleTextFileArray[4],1);;add row 1
;_GUICtrlListView_AddSubItem($hListView_Right,$i, $singleTextFileArray[5],2);;add row 1
;_GUICtrlListView_AddSubItem($hListView_Right,$i, $singleTextFileArray[6],3);;add row 1
EndIf
EndIf
 Next
 ;MsgBox(0,"",$singleTextFileArray)

;MsgBox(0,"",$singleTextFileArray[3])


;_GUICtrlListView_AddColumn($hListView_Right, "קבוצות", 53)
;_GUICtrlListView_AddColumn($hListView_Right, "קבוצות", 53)
;_GUICtrlListView_AddColumn($hListView_Right, "קבוצות", 53)
;_GUICtrlListView_AddColumn($hListView_Right, "קבוצות", 53)
;_GUICtrlListView_AddColumn($hListView_Right, "קבוצות", 53)
;_GUICtrlListView_AddColumn($hListView_Right, "קבוצות", 53)



_GUICtrlListView_SetTextBkColor($hListView_Right, 0xFFFFFF)
_GUICtrlListView_JustifyColumn($hListView_Right,1,2)
For $i=0 to UBound($returnArray)-1
;_GUICtrlListView_AddItem($hListView_Right,$returnArray[$i]);;add row 0
Next
$j=0
$returnArray3=0
_FileReadToArray(@ScriptDir&"\..\TeamDivder3.txt",$returnArray3);read text file into an array
$returnArray3[$returnArray3[0]-4]=StringTrimRight($returnArray3[$returnArray3[0]-4],4)
;_ArrayDisplay($returnArray3)

For $i=1 To UBound($returnArray3)-1

If $returnArray3[$i]=="12" Then
	$j+=1
_GUICtrlListView_AddItem($hListView_Right, $returnArray3[$i-1],6*$nameIndex+5+$i)
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+5+$j, "12",1);team number 12
;MsgBox(0,6*$nameIndex+5+$i,"")
;MsgBox(0,"30","$nameIndex="&$nameIndex&" i="&$i)
;6*$nameIndex

EndIf

Next


Global $aLV_List_Right = _GUIListViewEx_ReadToArray($hListView_Right, 1)
Local $whoIsAginstTeam12[UBound($aLV_List_Right)]
For $i=1 To UBound($aLV_List_Right)-1
$whoIsAginstTeam12[$i-1]=$aLV_List_Right[$i][1]
Next

For $i=1 To 12
$value=_ArraySearch($whoIsAginstTeam12,Int($i))
;MsgBox(0,"",$value)
If $value=-1 Then
$whoIsAginstTeam12_Flage=$i
EndIf

Next

;MsgBox(0,$whoIsAginstTeam12_Flage,$whoIsAginstTeam12_Flage)
;_ArrayDisplay($returnArray3)

;tryyyy
$numberOfTeam12Player=0
For $i=1 To UBound($returnArray3)-1

If $returnArray3[$i]=="12" Then
$numberOfTeam12Player+=1
EndIf


If $returnArray3[$i]==$whoIsAginstTeam12_Flage Then
	$j+=1
_GUICtrlListView_AddItem($hListView_Right, $returnArray3[$i-1],6*$nameIndex+5+$i)
_GUICtrlListView_AddSubItem($hListView_Right,6*$nameIndex+5+$j, $whoIsAginstTeam12_Flage,1);team number 12
;MsgBox(0,6*$nameIndex+5+$i,"")
;MsgBox(0,"30","$nameIndex="&$nameIndex&" i="&$i)
;6*$nameIndex

EndIf

Next




For $index3=1 to UBound($aFileStrings)-1 ;;;to read team 12 vs x results and put it on the table
 $singleTextFileArray=$aFileStrings[$index3][1];acsses array within array

If IsArray($singleTextFileArray) Then
If ($roundflage[1]=$singleTextFileArray[1]) And ($singleTextFileArray[0]==($numberOfTeam12Player*6+18) ) Then
	;_ArrayDisplay($singleTextFileArray)
;	MsgBox(0,"array","")
;	_ArrayDisplay($aLV_List_Right)
;	_ArrayDisplay($singleTextFileArray)

$Agienst_TwelveTeamIndex=0
For $rrr=1 To UBound($aLV_List_Right)-1

If $aLV_List_Right[$rrr][1]=="12" Then

$Agienst_TwelveTeamIndex=Int($rrr)
ExitLoop
EndIf
Next

;$Agienst_TwelveTeamIndex=Int(_ArraySearch($aLV_List_Right,"12")) ;$Agienst_TwelveTeamIndex To $Agienst_TwelveTeamIndex+$numberOfTeam12Player





;MsgBox(0,"who",$Agienst_TwelveTeamIndex)
$jj=-1
For $ii=$Agienst_TwelveTeamIndex-1 To $Agienst_TwelveTeamIndex+$numberOfTeam12Player+1  ;30 To 30+$numberOfTeam12Player+2;;;her
	$jj+=1
;	_ArrayDisplay($singleTextFileArray)
;MsgBox(0,4+6*$jj,$singleTextFileArray[4+6*$jj])
_GUICtrlListView_AddSubItem($hListView_Right,$ii, $singleTextFileArray[4+6*$jj],2);name1team1
_GUICtrlListView_AddSubItem($hListView_Right,$ii, $singleTextFileArray[5+6*$jj],3);name1team1
_GUICtrlListView_AddSubItem($hListView_Right,$ii, $singleTextFileArray[6+6*$jj],4);name1team1
;MsgBox(0,"",$singleTextFileArray[4+6*$jj]&""&$singleTextFileArray[5+6*$jj]&""&$singleTextFileArray[6+6*$jj])
;_GUICtrlListView_AddSubItem($hListView_Right,$ii, $singleTextFileArray[4+6*$jj],2);name1team1
;_GUICtrlListView_AddSubItem($hListView_Right,$ii, $singleTextFileArray[5+6*$jj],3);name1team1
;_GUICtrlListView_AddSubItem($hListView_Right,$ii, $singleTextFileArray[6+6*$jj],4);name1team1
Next

EndIf
EndIf
Next

; Read array from Right  ListView
;Global $aLV_List_Right = _GUIListViewEx_ReadToArray($hListView_Right, 1)


; The array as read from Right ListView and used subsequently
;_ArrayDisplay($aLV_List_Right, "Read from Right ListView")

; Initiate LVEx - use read content as array - count parameter set - red insert mark - drag image - move edit by click + headers editable
$iLV_Right_Index = _GUIListViewEx_Init($hListView_Right, $aLV_List_Right, 0, 0xFF0000, True, 4 + 8+32)
; All columns editable - simple text selected on open
;_GUIListViewEx_Insert($vData)
$a=0
_FileReadToArray(@ScriptDir&"\Game_Schedule2.txt",$a)
;_ArrayDisplay($a)
;If $a[0]=137 or  $a[0]=203 Then
;_GUIListViewEx_LoadListView($iLV_Right_Index,@ScriptDir&"\Game_Schedule2.txt")
;MsgBox(0,"enter","enter")
;EndIf

Global $aLV_List_Right = _GUIListViewEx_ReadToArray($hListView_Right, 1)
;_ArrayDisplay($aLV_List_Right)

If $aLV_List_Right=="" Then

;MsgBox(0,"enter","entr")
EndIf

_GUIListViewEx_SetEditStatus($iLV_Right_Index, "*")
;_GUIListViewEx_SetEditStatus($iLV_Right_Index, "1")
;_GUIListViewEx_SetColour($iLV_Right_Index, "0x000000;0x00ff00",2,2)
;_GUIListViewEx_SetColour($iLV_Right_Index, "0x000000;0x00ff00",2,3)
;_GUIListViewEx_SetColour($iLV_Right_Index, "0x000000;0x00ffff",3,2)
;_GUIListViewEx_SetColour($iLV_Right_Index, "0x000000;0x00ffff",3,3)

;_GUIListViewEx_SetDefColours($hListView_Right,"")
;_GUIListViewEx_LoadColour($hListView_Right,"0XFFFFFF;0X0000FF")

;ListViewColorsFonts_Init( $hListView_Right, 7 )
	; Set a green back color for an entire item and a yellow back color for a single cell
;	ListViewColorsFonts_SetItemColors( $hListView_Right, 0, -1, 0xCCFFCC ) ; Green back color for entire item ;row 3
;	ListViewColorsFonts_SetItemColors( $hListView_Right, 0,  2, 0xFFFFCC ) ; Yellow back color for cell 2 in item
;	ListViewColorsFonts_SetItemColors( $hListView_Right, 0,  3, 0xFFFFCC ) ; Yellow back color for cell 2 in item
;	ListViewColorsFonts_SetItemColors( $hListView_Right, 0,  6, 0xFFFFCC ) ; Yellow back color for cell 2 in item
;	ListViewColorsFonts_SetItemColors( $hListView_Right, 0,  7, 0xFFFFCC ) ; Yellow back color for cell 2 in item
;	ListViewColorsFonts_SetItemColors( $hListView_Right, 0,  10, 0xFFFFCC ) ; Yellow back color for cell 2 in item
;	ListViewColorsFonts_SetItemColors( $hListView_Right, 0,  11, 0xFFFFCC ) ; Yellow back color for cell 2 in item

;	ListViewColorsFonts_SetItemColors( $hListView_Right, 3,  2, 0xFFFFCC ) ; Yellow back color for cell 2 in item
;ListViewColorsFonts_Redraw( $hListView_Right )

;$RETURN=_GUIListViewEx_SetColour($hListView_Right,"0XFFFFFF;0X0000FF",2,2)

;MsgBox(0,@error,$RETURN)

; Create buttons
;$cInsert_Button = GUICtrlCreateButton("Insert", 220, 350, 200, 30)
;$cDelete_Button = GUICtrlCreateButton("Delete", 220, 390, 200, 30)
;$cUp_Button = GUICtrlCreateButton("Move Up", 430, 350, 200, 30)
;$cDown_Button = GUICtrlCreateButton("Move Down", 430, 390, 200, 30)
$roundNumberLabel = GUICtrlCreateLabel("Round Number", 26, 25, 86, 17)
$RoundNumberInput = GUICtrlCreateInput("", 106, 25, 49, 21,$ES_CENTER)


$roundNumber=StringSplit($roundflage[1],"round");read from round text file and put on the input box
GUICtrlSetData($RoundNumberInput,$roundNumber[6])

;$cEdit_Left_Button = GUICtrlCreateButton("Edit Left 1,1", 10, 430, 200, 30)
;$cEdit_Right_Button = GUICtrlCreateButton("Edit Right 5,0", 220, 430, 200, 30)
;$cHeader_Left_Button = GUICtrlCreateButton("Edit Left Header 1", 10, 470, 200, 30)
;$cHeader_Right_Button = GUICtrlCreateButton("Edit Right Header 0", 220, 470, 200, 30)
;$cDisplay_Left_Button = GUICtrlCreateButton("Show Left", 430, 350, 100, 30)
;$cDisplay_Right_Button = GUICtrlCreateButton("Show Right", 530, 350, 100, 30)
$cExit_Button = GUICtrlCreateButton("Exit && Save", 220, 430, 410, 68)

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

While 1
	Switch GUIGetMsg()
		Case $GUI_EVENT_CLOSE, $cExit_Button
			;Exit
			$return=0
			$return2=0
				;$aLV_List_Right = _GUIListViewEx_ReturnArray($iLV_Right_Index)
Global $aLV_List_Right = _GUIListViewEx_ReadToArray($hListView_Right, 1)

$roundNumber[6]=StringTrimLeft($roundNumber[6],1)
$UntilIndex=4
For $i=0 To $UntilIndex;UBound($aLV_List_Right)

;_ArrayDisplay($aLV_List_Right)
If $aLV_List_Right[0][0] < 25 Then
$UntilIndex=Floor(($aLV_List_Right[0][0]-4)/6)
;ExitLoop
EndIf


	$teamNumber_1=$aLV_List_Right[6*$i+1][1]
    $teamNumber_1=StringTrimLeft($teamNumber_1,1)
	$teamNumber_2=$aLV_List_Right[6*$i+4][1]
	$teamNumber_2=StringTrimLeft($teamNumber_2,1)

If $teamNumber_1==$teamNumber_2 Then
ExitLoop
EndIf
;MsgBox(0,$teamNumber_1,$teamNumber_2)

$FileName="\round_"&$roundNumber[6]&"_team_"&$teamNumber_1&"_vs_"&$teamNumber_2&".txt"

;MsgBox(0,"",$FileName)
$ScoreTextFile=  FileOpen(@ScriptDir&$FileName,2)
;MsgBox(0,"",@ScriptDir&$FileName)


FileWriteLine($ScoreTextFile,$roundflage[1])
FileWriteLine($ScoreTextFile,"teamNumber: "&$teamNumber_1)
FileWriteLine($ScoreTextFile,$aLV_List_Right[1+6*$i][0])
FileWriteLine($ScoreTextFile,$aLV_List_Right[1+6*$i][2])
FileWriteLine($ScoreTextFile,$aLV_List_Right[1+6*$i][3])
FileWriteLine($ScoreTextFile,$aLV_List_Right[1+6*$i][4])

FileWriteLine(@ScriptDir&$FileName,$roundflage[1])
FileWriteLine(@ScriptDir&$FileName,"teamNumber: "&$teamNumber_1)
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[2+6*$i][0])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[2+6*$i][2])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[2+6*$i][3])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[2+6*$i][4])

FileWriteLine(@ScriptDir&$FileName,$roundflage[1])
FileWriteLine(@ScriptDir&$FileName,"teamNumber: "&$teamNumber_1)
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[3+6*$i][0])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[3+6*$i][2])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[3+6*$i][3])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[3+6*$i][4])

FileWriteLine(@ScriptDir&$FileName,$roundflage[1])
FileWriteLine(@ScriptDir&$FileName,"teamNumber: "&$teamNumber_2)
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[4+6*$i][0])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[4+6*$i][2])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[4+6*$i][3])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[4+6*$i][4])

FileWriteLine(@ScriptDir&$FileName,$roundflage[1])
FileWriteLine(@ScriptDir&$FileName,"teamNumber: "&$teamNumber_2)
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[5+6*$i][0])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[5+6*$i][2])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[5+6*$i][3])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[5+6*$i][4])

FileWriteLine(@ScriptDir&$FileName,$roundflage[1])
FileWriteLine(@ScriptDir&$FileName,"teamNumber: "&$teamNumber_2)
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[6+6*$i][0])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[6+6*$i][2])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[6+6*$i][3])
FileWriteLine(@ScriptDir&$FileName,$aLV_List_Right[6+6*$i][4])

FileWriteLine(@ScriptDir&$FileName,"final score:")
FileWriteLine(@ScriptDir&$FileName,"teamNumber: "&$teamNumber_1)
FileWriteLine(@ScriptDir&$FileName,$team1Points[$i])
FileWriteLine(@ScriptDir&$FileName,"teamNumber: "&$teamNumber_2)
FileWriteLine(@ScriptDir&$FileName,$team2Points[$i])
;MsgBox(0,$team1Points[$i],$team2Points[$i])

Next

;;;team 12 text file
$FileName="\round_"&$roundNumber[6]&"_team_12_vs_"&$whoIsAginstTeam12_Flage&".txt"
$ScoreTextFile=  FileOpen(@ScriptDir&$FileName,2)
;_ArrayDisplay($aLV_List_Right)
$TwelveTeamIndex=Int(_ArraySearch($aLV_List_Right,"12"))
;MsgBox(0,"",$TwelveTeamIndex)
For $i=$TwelveTeamIndex To UBound($aLV_List_Right)-4 ;was 31
FileWriteLine($ScoreTextFile,$roundflage[1])
FileWriteLine($ScoreTextFile,"teamNumber: 12")
FileWriteLine($ScoreTextFile,$aLV_List_Right[$i][0])
FileWriteLine($ScoreTextFile,$aLV_List_Right[$i][2])
FileWriteLine($ScoreTextFile,$aLV_List_Right[$i][3])
FileWriteLine($ScoreTextFile,$aLV_List_Right[$i][4])
Next

For $i=UBound($aLV_List_Right)-3 To UBound($aLV_List_Right)-1
FileWriteLine($ScoreTextFile,$roundflage[1])
FileWriteLine($ScoreTextFile,"teamNumber: "&$whoIsAginstTeam12_Flage)
FileWriteLine($ScoreTextFile,$aLV_List_Right[$i][0])
FileWriteLine($ScoreTextFile,$aLV_List_Right[$i][2])
FileWriteLine($ScoreTextFile,$aLV_List_Right[$i][3])
FileWriteLine($ScoreTextFile,$aLV_List_Right[$i][4])
Next


;_ArrayDisplay($aLV_List_Right)
;MsgBox(0,"",6*$nameIndex+7)


;_ArrayDisplay($aFileStrings)

			Exit

		Case $RoundNumberInput
;MsgBox(0,"","")
$roundTextFile=FileOpen(@ScriptDir&"\roundNumber.txt",2)
$RoundNumber=GUICtrlRead($RoundNumberInput)
FileWriteLine($roundTextFile,"round "&$roundNumber)
Run('"'&@AutoitExe&'"'&'/Autoit3ExecuteScript "'&@ScriptFullPath&'" /restart')
Exit
;$cExit_Button()
;Run(@SCRIPTDIR&"\" &"view_or_edit_scores.exe",@SCRIPTDIR)
;$cExit_Button()

;

	EndSwitch

	$aRet = _GUIListViewEx_EditOnClick($iEditMode) ; Use combos to change EditMode
	; Array only returned AFTER EditOnClick process - so check array exists
	If IsArray($aRet) Then
		; Uncomment to see returned array
		;_ArrayDisplay($aRet, @error)
	EndIf

WEnd
;EndFunc