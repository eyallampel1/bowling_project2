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

;#include "UDFs\ListViewColorsFonts2.au3"
;#include "UDFs\GuiListViewEx2.au3"


;Func _gui2()
Global $iCount_Left = 1,$TeamRunningIndex=1,$TeamRunningIndex2=1, $iCount_Right = 20, $vData, $sMsg, $aLV_List_Left, $aLV_List_Right, $aRet, $iEditMode = 0

; Create GUI
$GameScheduleGui = GUICreate("Bowling", 950, 510)


Local $TeamNumber[200]
; Create Right ListView
;GUICtrlCreateLabel("UDF ListView", 430, 5, 300, 30)
$returnArray=0

$return2=0



$hListView_Right = _GUICtrlListView_Create($GameScheduleGui, "", 10, 10, 930, 330, BitOR($LVS_DEFAULT, $WS_BORDER))
_GUICtrlListView_SetExtendedListViewStyle($hListView_Right, BitOR($LVS_EX_FULLROWSELECT,$LVS_EX_GRIDLINES ))
;_GUICtrlListView_AddColumn($hListView_Right, "", 43)
_GUICtrlListView_AddColumn($hListView_Right, "שם", 143)
_GUICtrlListView_AddColumn($hListView_Right, "משחק 1", 83);add column
_GUICtrlListView_AddColumn($hListView_Right, "משחק 2", 63)
_GUICtrlListView_AddColumn($hListView_Right, "משחק 3", 63)


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



_GUICtrlListView_AddItem($hListView_Right, "1",0);;add row 1
;_GUICtrlListView_AddItem($hListView_Right, "2",1);;add row 1
;_GUICtrlListView_AddItem($hListView_Right, "3",2);;add row 1
;_GUICtrlListView_AddItem($hListView_Right, "4",3);;add row 1
;_GUICtrlListView_AddItem($hListView_Right, "5",4);;add row 1

;_GUICtrlListView_AddSubItem($hListView_Right,0,"0-1",1)
;_GUICtrlListView_AddSubItem($hListView_Right,0,"[קבוצה 1",2)
;_GUICtrlListView_AddSubItem($hListView_Right,0,"קבוצה 2]",3)
;_GUICtrlListView_AddSubItem($hListView_Right,1,"1-2",2)
;_GUICtrlListView_AddSubItem($hListView_Right,1,"1-3",3)
;_GUICtrlListView_AddSubItem($hListView_Right,1,"1-4",4)
;_GUICtrlListView_AddSubItem($hListView_Right,1,"1-5",5)
_GUICtrlListView_AddSubItem($hListView_Right,1,"1-12",12)
_GUICtrlListView_AddSubItem($hListView_Right,1,"1-13",13)
;_GUICtrlListView_AddItem($hListView_Right, "eyal")

;


; Read array from Right  ListView
Global $aLV_List_Right = _GUIListViewEx_ReadToArray($hListView_Right, 1)
;_ArrayDisplay($aLV_List_Right)

; The array as read from Right ListView and used subsequently
;_ArrayDisplay($aLV_List_Right, "Read from Right ListView")

; Initiate LVEx - use read content as array - count parameter set - red insert mark - drag image - move edit by click + headers editable
$iLV_Right_Index = _GUIListViewEx_Init($hListView_Right, $aLV_List_Right, 0, 0xFF0000, True, 4 + 8+32)
; All columns editable - simple text selected on open
;_GUIListViewEx_Insert($vData)
_GUIListViewEx_LoadListView($iLV_Right_Index,@ScriptDir&"\MAIN_GUI.txt")
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
$cInsert_Button = GUICtrlCreateButton("Insert", 200, 350, 200, 30)
$cDelete_Button = GUICtrlCreateButton("Delete", 200, 390, 200, 30)
$cUp_Button = GUICtrlCreateButton("Move Up", 410, 350, 200, 30)
$cDown_Button = GUICtrlCreateButton("Move Down", 410, 390, 200, 30)
;$cEdit_Left_Button = GUICtrlCreateButton("Edit Left 1,1", 10, 430, 200, 30)
;$cEdit_Right_Button = GUICtrlCreateButton("Edit Right 5,0", 220, 430, 200, 30)
;$cHeader_Left_Button = GUICtrlCreateButton("Edit Left Header 1", 10, 470, 200, 30)
;$cHeader_Right_Button = GUICtrlCreateButton("Edit Right Header 0", 220, 470, 200, 30)
;$cDisplay_Left_Button = GUICtrlCreateButton("Show Left", 430, 350, 100, 30)
;$cDisplay_Right_Button = GUICtrlCreateButton("Show Right", 530, 350, 100, 30)
$cExit_Button = GUICtrlCreateButton("Exit", 200, 430, 410, 68)

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
		;		$aLV_List_Right = _GUIListViewEx_ReturnArray($iLV_Right_Index)
		     ;	_FileWriteFromArray(@ScriptDir&"\Game_Schedule.txt",$aLV_List_Right)
				_GUIListViewEx_SaveListView($iLV_Right_Index,@ScriptDir&"\MAIN_GUI.txt")
			Exit
;GUISetState(@SW_HIDE,$hGUI)
		Case $cInsert_Button
			; Prepare data  for insertion
			;Switch $aGLVEx_Data[0][1]
			;	Case 1
					; String format with multi-column native ListView
					$vData = $iCount_Left & "| " ;& "|Harry " & $iCount_Left
					$iCount_Left += 1
					If Mod($TeamRunningIndex2,3)=0 Then
					$TeamRunningIndex+=1
					$TeamRunningIndex2=1
					Else
					$TeamRunningIndex2+=1
					EndIf

					;$iCount_Left=2
					_GUIListViewEx_Insert($vData)
					;_GUIListViewEx_SetColour($iLV_Right_Index, "0x000000;0x00ff00",2,2)
;_GUIListViewEx_SetColour($iLV_Right_Index, "0x000000;0x00ff00",2,3)
;_GUIListViewEx_SetColour($iLV_Right_Index, "0x000000;0x00ffff",3,2)
;_GUIListViewEx_SetColour($iLV_Right_Index, "0x000000;0x00ffff",3,3)
				;	ListViewColorsFonts_SetItemColors( $hListView_Right, 0, -1, 0xCCFFCC ) ; Green back color for entire item ;row 3
				;	ListViewColorsFonts_SetItemColors( $hListView_Right, 3,  2, 0xFFFFCC ) ; Yellow back color for cell 2 in item
				;	ListViewColorsFonts_Redraw( $hListView_Right )
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