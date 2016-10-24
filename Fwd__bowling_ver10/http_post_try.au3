#include <Array.au3>
#include <File.au3>
#include<IE.au3>
#include<WinHttp.au3>
#include <MsgBoxConstants.au3>


#include "WinHttp.au3"

#include-once

;Global Const $HTTP_STATUS_OK = 200

Func HttpPost($sURL, $sData = "")
Local $oHTTP = ObjCreate("WinHttp.WinHttpRequest.5.1")

$oHTTP.Open("POST", $sURL, False)
If (@error) Then Return SetError(1, 0, 0)

$oHTTP.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")

$oHTTP.Send($sData)
If (@error) Then Return SetError(2, 0, 0)

If ($oHTTP.Status <> $HTTP_STATUS_OK) Then Return SetError(3, 0, 0)

Return SetError(0, 0, $oHTTP.ResponseText)
EndFunc

Func HttpGet($sURL, $sData = "")
Local $oHTTP = ObjCreate("WinHttp.WinHttpRequest.5.1")

$oHTTP.Open("GET", $sURL & "?" & $sData, False)
If (@error) Then Return SetError(1, 0, 0)

$oHTTP.Send()
If (@error) Then Return SetError(2, 0, 0)

If ($oHTTP.Status <> $HTTP_STATUS_OK) Then Return SetError(3, 0, 0)

Return SetError(0, 0, $oHTTP.ResponseText)
EndFunc


;Global $MD5 = HttpPost("http://lampel.co.il", "Firstname=autoitpPOST&id=99999&LastName=AUTOITPOST")
;MsgBox(64, "MD5", $MD5)

Global $sGet = HttpGet("http://www.lampel.co.il/?LastName=AUTOIT&Firstname=autoit&id=99999")
MsgBox(0,"",$sGet)

;~ ; The data to be sent
;~ $sPD = 'LastName=AUTOIT&Firstname=autoit&id=12345678'


;~ ; Creating the object
;~ $oHTTP = ObjCreate("winhttp.winhttprequest.5.1")
;~ $oHTTP.Open("POST", "http://lampel.co.il", False)
;~ $oHTTP.SetRequestHeader("Content-Type", "application/x-www-form-urlencoded")

;~ ; Performing the Request
;~ $oHTTP.Send($sPD)

;~ ; Download the body response if any, and get the server status response code.
;~ $oReceived = $oHTTP.ResponseText
;~ $oStatusCode = $oHTTP.Status

;~ If $oStatusCode <> 200 then
;~  MsgBox(4096, "Response code", $oStatusCode)
;~ EndIf

;~ ; Saves the body response regardless of the Response code
;~  $file = FileOpen("Received.html", 2) ; The value of 2 overwrites the file if it already exists
;~  FileWrite($file, $oReceived)
;~  FileClose($file)
;~  $return=0
;~  _FileReadToArray("Received.html",$return)
;~  _ArrayDisplay($return)








;~ Endfunc
