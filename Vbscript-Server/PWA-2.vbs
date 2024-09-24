# $language = "VBScript"
# $interface = "1.0"

Const ForReading = 1
Const ForWriting = 2
Const ForAppending = 8

Sub main

  Dim fso, f ,name

  Set fso = CreateObject("Scripting.FileSystemObject")
  Set f = fso.OpenTextFile("C:\Users\user\Desktop\fini.txt", ForReading, 0)
  Set fso1 = CreateObject("Scripting.FileSystemObject")

  crt.Screen.Synchronous = true
  
  Dim line, params

  crt.Screen.WaitForString "Internal-Management#"
  crt.Screen.Send "PE-RIT02" & Chr(10)
  crt.Screen.WaitForString "username:"
  crt.Screen.Send "intern" & Chr(10)
  crt.Screen.WaitForString "password:"
  crt.Screen.Send "12345" & Chr(10)


  Do While f.AtEndOfStream <> True

    line = f.Readline
    params = Split( line , vbCrLf)
    lineNb = UBound(params)
    

    For i= 0 To  lineNb
     par = Split(params(i),",") 
     crt.Screen.WaitForString "PE-RIT02#"
     crt.Screen.Send par(0) & Chr(10)
     result = crt.Screen.WaitForStrings("login:", "Username:", 10)

  Select Case result
    Case 1

      namefile1 = par(1)
      Set case1 = CreateObject("Scripting.FileSystemObject")
      Set file1 = case1.CreateTextFile("C:\Users\user\Desktop\vpn\"& namefile1 &".txt",True)

      SuccessCount = SuccessCount+1
      crt.Screen.Send "admin" & Chr(10)
      crt.Screen.WaitForString "Password:"
      crt.Screen.Send "admin" & Chr(10)
      crt.Screen.WaitForString "<REG"
      crt.Screen.Send "screen-length disable" & Chr(10)
      crt.Screen.WaitForString "<REG"
      crt.Screen.Send "show current-configuration" & Chr(10)
      crt.Screen.WaitForString ">"

      read_data1 = Replace(crt.Screen.ReadString(">"), vbCR, vbcrlf)
      file1.Write "####################################" & vbcrlf & params(i) & vbcrlf &"####################################" & vbcrlf & read_data1 & vbcrlf &"===========================" & vbcrlf & vbcrlf
      file1.Close

      crt.Screen.Send "quit" & Chr(10)
      crt.Screen.Send Chr(10) 

    Case 2
     
      namefile2 = par(1)
      Set case2 = CreateObject("Scripting.FileSystemObject")
      Set file2 = case2.CreateTextFile("C:\Users\user\Desktop\vpn\"& namefile2 &".txt",True)

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

    Case 0
      namefile3 = par(1)
      Set case0 = CreateObject("Scripting.FileSystemObject")
      Set file3 = case0.CreateTextFile("C:\Users\user\Desktop\vpn\"& namefile3 &".txt",True)

      FailedCount = FailedCount + 1
      file3.Write "####################################" & vbcrlf & params(i) & vbcrlf &"####################################" & vbcrlf & vbcrlf
      file3.Close

    End Select
    Next
  Loop
  msgbox "!!!Successs : " & SuccessCount & " ea!!!"& vbCrLf &"!!!Fail : " & FailedCount & " ea!!!"
End Sub
