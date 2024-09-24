# $language = "VBScript"
# $interface = "1.0"

Const ForReading = 1
Const ForWriting = 2
Const ForAppending = 8

Sub main

  Dim fso, f

  Set fso = CreateObject("Scripting.FileSystemObject")

  Set f = fso.OpenTextFile("C:\Users\user\Desktop\group2.txt", ForReading, 0)

  Set fso1 = CreateObject("Scripting.FileSystemObject")

  Set file1 = fso1.OpenTextFile("C:\Users\user\Desktop\group22.txt", ForAppending, True)

  crt.Screen.Synchronous = true

  Dim line, params
  Dim SuccessCount
  Do While f.AtEndOfStream <> True

    line = f.Readline
    params = Split( line , vbCrLf)
    
    lineNb = UBound(params)

    For i= 0 To  lineNb
    params1 = Split (params(i),",") 
     

     Dim result
     result = crt.screen.WaitForStrings("PE-KER02#", 10)

    Select Case result

    Case 1

      crt.Screen.Send params1(0) & Chr(10)
      crt.Screen.WaitForString "Username:"
      crt.Screen.Send "noc" & Chr(10)
      crt.Screen.WaitForString "Password:"
      crt.Screen.Send "noconly" & Chr(10)
     
      If crt.Screen.WaitForString("B", 10) = True Then
        crt.Screen.Send "conf t" & Chr(10)
        crt.Screen.WaitForString "#"
        crt.Screen.Send params1(1) & Chr(10)
        crt.Screen.Send "end" & Chr(10)
        crt.Screen.Send "wri" & Chr(10)
        crt.Screen.Send "exit" & Chr(10)
      Else
        file1.Write params(i) & vbcrlf
      End If

    Case 0

      file1.Write params(i) & vbcrlf
    End Select

    Next
  Loop



End Sub
