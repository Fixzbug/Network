# $language = "VBScript"
# $interface = "1.0"

Const ForReading = 1
Const ForWriting = 2
Const ForAppending = 8

Sub main

  Dim fso, f ,name

  Set fso = CreateObject("Scripting.FileSystemObject")
  Set f = fso.OpenTextFile("C:\PWA\data.txt", ForReading, 0) 'read data from text'
  'Set fso1 = CreateObject("Scripting.FileSystemObject")

  Set case0 = CreateObject("Scripting.FileSystemObject")
  Set file3 = case0.CreateTextFile("C:\PWA\circuit-error.txt", ForAppending, True)

  strUsername = crt.Dialog.Prompt("Enter your username:", "Login") 'alert box input username'
  strPassword = crt.Dialog.Prompt("Enter your password:", "Login", "", True) 'alert box input password'

  crt.Screen.Synchronous = true
  
  Dim line, params

  crt.Screen.WaitForString "Internal-Management#" 'wait for Internal-Management#'  
  crt.Screen.Send "PE-RIT02" & Chr(10) 'send node PE-RIT02' 
  crt.Screen.WaitForString "username:" 'wait for username' 
  crt.Screen.Send strUsername & Chr(10) 'send username from input box' 
  crt.Screen.WaitForString "password:" 'wait for password' 
  crt.Screen.Send strPassword & Chr(10) 'send password from input box'

  Do While f.AtEndOfStream <> True

    line = f.Readline
    params = Split( line , vbCrLf) 'split row'
    lineNb = UBound(params) 'count row'
    

    For i= 0 To  lineNb
     par = Split(params(i),",") 'split column'
     crt.Screen.WaitForString "PE-RIT02#"
     crt.Screen.Send par(0) & Chr(10)
     result = crt.Screen.WaitForStrings("login:", "Username:", 10) 'wait for condition' 

      Select Case result
        Case 1 'case 1 for juniper'
        namefile1 = par(1) 'circuit name'
        Set case1 = CreateObject("Scripting.FileSystemObject")
        Set file1 = case1.CreateTextFile("C:\PWA\config\"& namefile1 &".txt",True) 'create file text'

        SuccessCount = SuccessCount+1 'count success data'
        crt.Screen.Send "admin" & Chr(10) 'send username juniper'
        crt.Screen.WaitForString "Password:"
        crt.Screen.Send "admin" & Chr(10) 'send password juniper'
        crt.Screen.WaitForString ">"
        crt.Screen.Send "screen-length disable" & Chr(10) 'show full data'
        crt.Screen.WaitForString ">"
        crt.Screen.Send "show current-configuration" & Chr(10)
        'crt.Screen.WaitForString "<REG"

        read_data1 = Replace(crt.Screen.ReadString(">"), vbCR, vbcrlf) 'get data'
        file1.Write "####################################" & vbcrlf & par(1) & vbcrlf &"####################################" & vbcrlf & read_data1 & vbcrlf &"===========================" & vbcrlf & vbcrlf 'write data to text file'
        file1.Close

        crt.Screen.Send "quit" & Chr(10) 'quit juniter'
        crt.Screen.Send Chr(10) 

        Case 2 'case 2 for cisco'
        namefile2 = par(1) 'circuit name'
        Set case2 = CreateObject("Scripting.FileSystemObject")
        Set file2 = case2.CreateTextFile("C:\PWA\config\"& namefile2 &".txt",True) 'create file text'

        SuccessCount = SuccessCount + 1
        crt.Screen.Send "noc" & Chr(10)
        crt.Screen.WaitForString "Password:"
        crt.Screen.Send "noconly" & Chr(10)
        crt.Screen.WaitForString "#"
        crt.Screen.Send "terminal length 0" & chr(10)
        crt.Screen.WaitForString "#"
        crt.Screen.Send "show run" & chr(10)

        read_data2 = Replace(crt.Screen.ReadString("#"), vbCR, vbcrlf)
        file2.Write "####################################" & vbcrlf & params(i) & vbcrlf &"####################################" & vbcrlf & read_data2 & vbcrlf &"===========================" & vbcrlf & vbcrlf 
        file2.Close

        crt.Screen.Send Chr(10)
        crt.Screen.WaitForString "#"
        crt.Screen.Send "ex" & Chr(10)
        crt.Screen.Send Chr(10) 

        Case 0 'case 0 for telnet fail'
        namefile3 = par(1)
        FailedCount = FailedCount + 1
        file3.Write params(i) & vbcrlf
        
      End Select   
    Next
    
  Loop
    crt.Screen.WaitForString "PE-RIT02#"
    crt.Screen.Send "ex" & Chr(10)     
  msgbox "Successs : " & SuccessCount & " ea"& vbCrLf &"Fail : " & FailedCount & " ea"
End Sub

