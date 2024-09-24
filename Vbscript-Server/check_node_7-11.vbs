# $language = "VBScript"
# $interface = "1.0"

Const ForReading = 1
Const ForWriting = 2
Const ForAppending = 8

Sub main

  Dim fso, f

  Set fso = CreateObject("Scripting.FileSystemObject")

  Set f = fso.OpenTextFile("C:\Users\user\Desktop\node.txt", ForReading, 0)

  Set fso1 = CreateObject("Scripting.FileSystemObject")

  strUsername = "intern"
  strPassword = "12345"
  strexit = "exit"
  test = vbCrLf

  Dim line, params
  Do While f.AtEndOfStream <> True

    line = f.Readline
    params = Split( line , vbCrLf)
    lineNb = UBound(params)
    'msgbox "count : " & lineNb & " row"
    '|par(0) = row 1|
    '|par(1) = row 2|

    For i= 0 To  lineNb
     crt.Screen.WaitForString "Internal-Management#"
     crt.Screen.Send params(i) & Chr(10)
     crt.Screen.WaitForString "username:"
     crt.Screen.Send strUsername & Chr(10)
     crt.Screen.WaitForString "assword"
     crt.Screen.Send strPassword & Chr(10)
     crt.Screen.WaitForString params(i)
     crt.Screen.Send strexit & Chr(10) 

     crt.Screen.WaitForString "Internal-Management#"
     crt.Screen.Send test

    Next
  Loop

 msgbox "!!!Node Ready : " & lineNb & " node!!!"

End Sub
