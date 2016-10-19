#include <File.au3>
#include <MsgBoxConstants.au3>
#include <SQLite.au3>
#include <SQLite.dll.au3>


;_SQLite_Startup(Default,Default,1

Local $aResult, $iRows, $iColumns, $iRval
 ;FileInstall("d:\autoit3\include\sqlite3.dll", @ScriptDir & "\", 1)
Local $sSQliteDll = _SQLite_Startup()

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

If Not _SQLite_Exec(-1, "CREATE TABLE IF NOT EXISTS Personal_Table (ROWID integer primery key ,Player_ID integer,Team_Number integer,Player_Name text,Round_Date DATETIME,Round_Number integer ,Arrived_flag text,Haslama_flag text,Game1 integer,Game2 integer,Game3 integer ,Round_Total integer,Round_Max_Game integer,Round_AVG integer , Played_Against_Team integer,Best_Game integer,Best_Total integer,Player_AVG integer,Handicap text);") = $SQLITE_OK Then _
        MsgBox($MB_SYSTEMMODAL, "SQLite Error", _SQLite_ErrMsg())
If Not _SQLite_Exec(-1, "INSERT INTO Personal_Table VALUES ('иии','43');") = $SQLITE_OK Then _
        MsgBox($MB_SYSTEMMODAL, "SQLite Error", _SQLite_ErrMsg())

;~ If Not _SQLite_Exec(-1, "INSERT INTO persons VALUES ('Bob','28');") = $SQLITE_OK Then _
;~         MsgBox($MB_SYSTEMMODAL, "SQLite Error", _SQLite_ErrMsg())
;~ If Not _SQLite_Exec(-1, "INSERT INTO persons VALUES ('Cindy','21');") = $SQLITE_OK Then _
;~         MsgBox($MB_SYSTEMMODAL, "SQLite Error", _SQLite_ErrMsg())
;~ If Not _SQLite_Exec(-1, "DELETE FROM persons WHERE Name = Bob;") = $SQLITE_OK Then _
;~         MsgBox($MB_SYSTEMMODAL, "SQLite Error", _SQLite_ErrMsg())

; Query
$iRval = _SQLite_GetTable2d(-1, "SELECT * FROM Personal_Table;", $aResult, $iRows, $iColumns)
_ArrayDisplay($aResult)
