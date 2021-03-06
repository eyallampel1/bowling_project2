#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=pic\download.ico
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <GuiConstantsEx.au3>
#include <WindowsConstants.au3>
#include "GUIListViewEx.au3"
#include <Array.au3> ; Just for display in example
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <Excel.au3>
#include <DateTimeConstants.au3>
#include <EditConstants.au3>
#include <StaticConstants.au3>
#include <File.au3>
#include <MsgBoxConstants.au3>

#include <SQLite.au3>
#include <SQLite.dll.au3>


;_SQLite_Startup(Default,Default,1  ;for local install


 ;FileInstall("d:\autoit3\include\sqlite3.dll", @ScriptDir & "\", 1)

;sqlite starting sequence - we fill names and id here
Local $aResult, $iRows, $iColumns, $iRval
 ;FileInstall("d:\autoit3\include\sqlite3.dll", @ScriptDir & "\", 1)
Local $sSQliteDll = _SQLite_Startup()
;Local $sSQliteDll =_SQLite_Startup(Default,Default,1  ;for local install

If @error Then
    MsgBox($MB_SYSTEMMODAL, "SQLite Error", "SQLite3.dll Can't be Loaded!" & @CRLF & @CRLF & _
            "Not FOUND in @SystemDir, @WindowsDir, @ScriptDir, @WorkingDir, @LocalAppDataDir\AutoIt v3\SQLite")
    Exit -1
EndIf



 _SQLite_Open("Personal_Round_Score.db")
If @error Then
    MsgBox($MB_SYSTEMMODAL, "SQLite Error", "Can't open or create a permanent Database!")
    Exit -1
EndIf




;Func _gui2()
Global $iCount_Left = 1,$TeamRunningIndex=1,$TeamRunningIndex2=1, $iCount_Right = 20, $vData, $sMsg, $aLV_List_Left, $aLV_List_Right, $aRet, $iEditMode = 0

; Create GUI
$hGUI = GUICreate("Add Players", 440, 510)
GUISetIcon(@ScriptDir&"\..\pic\download.ico")

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
;_ArrayDisplay($splited)
$TeamNumber[$j]=$splited[2]
$returnArray[$j]=$splited[1]
Next
;_ArrayDisplay($TeamNumber)


$hListView_Right = _GUICtrlListView_Create($hGUI, "", 100, 10, 230, 330, BitOR($LVS_DEFAULT, $WS_BORDER))
_GUICtrlListView_SetExtendedListViewStyle($hListView_Right, $LVS_EX_FULLROWSELECT)
_GUICtrlListView_AddColumn($hListView_Right, "�� �����", 130)
_GUICtrlListView_AddColumn($hListView_Right, "���� �����", 83);add column
;_GUICtrlListView_AddColumn($hListView_Right, "��������", 83)

_GUICtrlListView_SetTextBkColor($hListView_Right, 0xFFFFFF)
_GUICtrlListView_JustifyColumn($hListView_Right,1,2)
For $i=0 to UBound($returnArray)-1
_GUICtrlListView_AddItem($hListView_Right,$returnArray[$i]);;add row 0
Next



; Fill Right ListView
For $i = 0 To $iCount_Right
	;_GUICtrlListView_AddItem($hListView_Right, "Peter " & $i - 1)
_GUICtrlListView_AddSubItem($hListView_Right,$i,$TeamNumber[$i] , 1)
	;_GUICtrlListView_AddSubItem($hListView_Right, $i - 1, "Mary " & $i - 1, 2)
Next




; Read array from Right  ListView
Global $aLV_List_Right = _GUIListViewEx_ReadToArray($hListView_Right, 1)
; The array as read from Right ListView and used subsequently
;_ArrayDisplay($aLV_List_Right, "Read from Right ListView")



; Initiate LVEx - use read content as array - count parameter set - red insert mark - drag image - move edit by click + headers editable
$iLV_Right_Index = _GUIListViewEx_Init($hListView_Right, $aLV_List_Right, 1, 0xFF0000, True, 4 + 8)
; All columns editable - simple text selected on open
_GUIListViewEx_SetEditStatus($iLV_Right_Index, "*")
_GUIListViewEx_LoadListView($iLV_Right_Index,@ScriptDir&"\TeamDivder3.txt")


; Create buttons
$cInsert_Button = GUICtrlCreateButton("Insert", 10, 350, 200, 30)
$cDelete_Button = GUICtrlCreateButton("Delete", 10, 390, 200, 30)
$cUp_Button = GUICtrlCreateButton("Move Up", 220, 350, 200, 30)
$cDown_Button = GUICtrlCreateButton("Move Down", 220, 390, 200, 30)
;$cEdit_Left_Button = GUICtrlCreateButton("Edit Left 1,1", 10, 430, 200, 30)
;$cEdit_Right_Button = GUICtrlCreateButton("Edit Right 5,0", 220, 430, 200, 30)
;$cHeader_Left_Button = GUICtrlCreateButton("Edit Left Header 1", 10, 470, 200, 30)
;$cHeader_Right_Button = GUICtrlCreateButton("Edit Right Header 0", 220, 470, 200, 30)
;$cDisplay_Left_Button = GUICtrlCreateButton("Show Left", 430, 350, 100, 30)
;$cDisplay_Right_Button = GUICtrlCreateButton("Show Right", 530, 350, 100, 30)
$cExit_Button = GUICtrlCreateButton("Exit", 10, 430, 410, 68)

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
$return=0
			;Global $aLV_List_Right = _GUIListViewEx_ReadToArray($hListView_Right, 1)
			_GUIListViewEx_SaveListView($iLV_Right_Index,@ScriptDir&"\TeamDivder3.txt")
			;FileOpen(@ScriptDir&"\TeamDivder3.txt",1)
			_FileReadToArray(@ScriptDir&"\TeamDivder3.txt",$return)
		;	_FileWriteToLine(@ScriptDir&"\TeamDivder3.txt",1,"�����",TRUE)
		;_ArrayDisplay($return)
		$fileRowCount=UBound($return)
Local $todelete="0-3;" & $fileRowCount-4 & "-" & $fileRowCount-1
_ArrayDelete($return,$todelete)
$fileRowCount=UBound($return)
;$rowsToDelete[4]=[2,4,8,10];,14,16,20,22,26,28,32,34,38,40]
$RowsTodelete4=""
	;	_ArrayDisplay($return)
			;MsgBox(0,"",UBound($return))
;_ArrayDisplay($aLV_List_Right)
$index=0
$rowsToDelete2=0

For $i=1 to Round($fileRowCount/2)

$index+=1
if $index=3 Then
$index=0
Else
	$RowsTodelete4=$RowsTodelete4&";"&2*$i+1
EndIf
;_ArrayAdd($rowsToDelete2,


If Mod($i,3)=0 Then

EndIf

Next
			$RowsTodelete4=StringReplace($RowsTodelete4,";","",1)


_ArrayDelete($return,$RowsTodelete4)
$return[0]=StringTrimLeft ( $return[0], 3 )


If $return[3]="1" Then

For $i=0 To UBound($return)
_ArraySwap($return,3*$i,(3*$i)+1)
Next

Else


For $i=0 To UBound($return)
_ArraySwap($return,4*$i,(4*$i)+1)
Next
EndIf

If $return[5]="1" Then

$RowsTodelete5=""
For $i=1 To Round(UBound($return))/6
$RowsTodelete5=$RowsTodelete5&(6*$i-2)&"-"&(6*$i-1)&";"
Next

$RowsTodelete5=StringTrimRight($RowsTodelete5,1)
;MsgBox(0,"",$RowsTodelete5)
_ArrayDelete($return,$RowsTodelete5)
EndIf

For $i=0 To round(UBound($return)/4)-1
$return[4*$i]="����� " & $return[4*$i]
Next


;;;;;;;;THIS IS THE SQLITE EXAMPLE



If Not _SQLite_Exec(-1, "DROP TABLE IF EXISTS Player_Name_And_Team ;") = $SQLITE_OK Then _
        MsgBox($MB_SYSTEMMODAL, "SQLite Error", _SQLite_ErrMsg())


If Not _SQLite_Exec(-1, "CREATE TABLE IF NOT EXISTS Player_Name_And_Team (Player_ID INTEGER PRIMARY KEY ,Team_Number integer,Player_Name text);") = $SQLITE_OK Then _
        MsgBox($MB_SYSTEMMODAL, "SQLite Error", _SQLite_ErrMsg())



Local $teamJump3Index=1
Local $index_j=0
For $i=1 To 43
$index_j+=1
$name="'"&$return[$i]&"'"


;MsgBox(0,"","INSERT INTO Player_Name_And_Team (Team_Number,Player_Name) VALUES ("&$teamJump3Index&","&$return[$i]&");")
If Not _SQLite_Exec(-1, "INSERT INTO Player_Name_And_Team (Team_Number,Player_Name) VALUES ("&$teamJump3Index&","&$name&");") = $SQLITE_OK Then _
        MsgBox($MB_SYSTEMMODAL, "SQLite Error", _SQLite_ErrMsg())

		If $index_j=3 Then
		$teamJump3Index+=1
		$index_j=0
		$i+=1
		EndIf

Next

Local $Team12Members[30];UBound($return)-44]
$jk=0
For $i=44 To UBound($return)-1
$Team12Members[$jk]="'"&$return[$i]&"'"

If $Team12Members[$jk]="'����� 12'" Then
_ArrayDelete($Team12Members,$jk)
$jk-=1
EndIf

$jk+=1
Next


For $i=0 To 100

If $Team12Members[$i]="" Then
_ArrayDelete($Team12Members,$i&"-"&UBound($Team12Members)-1)
ExitLoop
EndIf

Next


For $i=0 To UBound($Team12Members)-1
If Not _SQLite_Exec(-1, "INSERT INTO Player_Name_And_Team (Team_Number,Player_Name) VALUES (12,"&$Team12Members[$i]&");") = $SQLITE_OK Then _
        MsgBox($MB_SYSTEMMODAL, "SQLite Error", _SQLite_ErrMsg())
Next


$iRval = _SQLite_GetTable2d(-1, "SELECT * FROM Player_Name_And_Team;", $aResult, $iRows, $iColumns)

;_ArrayDisplay($return)
_FileWriteFromArray(@ScriptDir&"\TeamDivder.txt",$return)

			Exit


;GUISetState(@SW_HIDE,$hGUI)
		Case $cInsert_Button
			; Prepare data  for insertion
			;Switch $aGLVEx_Data[0][1]
			;	Case 1
					; String format with multi-column native ListView
					$vData = "Lampel " & $iCount_Left & "| " & $TeamRunningIndex ;& "|Harry " & $iCount_Left
					$iCount_Left += 1
					If Mod($TeamRunningIndex2,3)=0 Then
					$TeamRunningIndex+=1
					$TeamRunningIndex2=1
					Else
					$TeamRunningIndex2+=1
					EndIf

					;$iCount_Left=2
					_GUIListViewEx_Insert($vData)
			;	Case 2
					; Array format with multi-column UDF ListView
			;		Global $vData[3] = ["Peter " & $iCount_Right, "Paul " & $iCount_Right, "Mary " & $iCount_Right]
			;		$iCount_Right += 1
			;		_GUIListViewEx_Insert($vData)
			;EndSwitch

		Case $cDelete_Button
			_GUIListViewEx_Delete()

		Case $cUp_Button
			_GUIListViewEx_Up()

		Case $cDown_Button
			_GUIListViewEx_Down()


	;	Case $cEdit_Right_Button
	;		$aRet = _GUIListViewEx_EditItem($iLV_Right_Index, 5, 0, $iEditMode) ; Use combos to change EditMode
	;		; Check array exists
	;		If IsArray($aRet) Then
				; Uncomment to see returned array
				;_ArrayDisplay($aRet, @error)
	;		EndIf

	;	Case $cHeader_Right_Button
	;		$aHdr_Ret = _GUIListViewEx_EditHeader($iLV_Right_Index, 0)
			; Uncomment to see returned array
			;_ArrayDisplay($aHdr_Ret, @error)



	EndSwitch

	$aRet = _GUIListViewEx_EditOnClick($iEditMode) ; Use combos to change EditMode
	; Array only returned AFTER EditOnClick process - so check array exists
	If IsArray($aRet) Then
		; Uncomment to see returned array
		;_ArrayDisplay($aRet, @error)
	EndIf

WEnd
;EndFunc