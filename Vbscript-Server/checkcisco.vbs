# $language = "VBScript"
# $interface = "1.0"

Const ForReading = 1
Const ForWriting = 2
Const ForAppending = 8

crt.Screen.Synchronous =True

Sub main

  Dim fso, f

  Set fso = CreateObject("Scripting.FileSystemObject")
  Set f = fso.OpenTextFile("C:\Users\user\Desktop\error.txt", ForReading, 0)
  Set fso1 = CreateObject("Scripting.FileSystemObject")


  strUsername2 = "noc"
  strPassword2 = "noconly"
  strexit = "quit"
 
  strconshowcisco = "terminal length 0"
  strconcisco = "show run"
  


  Dim line, params
  Do While f.AtEndOfStream <> True

    line = f.Readline
    params = Split( line , vbCrLf)
    lineNb = UBound(params)

    For i= 0 To  lineNb
     crt.Screen.WaitForString "PE-RIT02#"
     crt.Screen.Send params(i) & Chr(10)  
     crt.Screen.WaitForString ("Username:") 
     crt.Screen.Send strUsername2 & Chr(10)
     crt.Screen.WaitForString "Password"
     crt.Screen.Send strPassword2 & Chr(10)
     crt.Screen.WaitForString "PWA-"
     crt.Screen.Send strconshowcisco & Chr(10)
     crt.Screen.WaitForString "PWA-"
     crt.Screen.Send strconcisco & Chr(10)
     crt.Screen.WaitForString "PWA-"
     crt.Screen.Send strexit & Chr(10) 

     crt.Screen.WaitForString "PE-RIT02#"
     crt.Screen.Send vbCrLf
    Next
  Loop

 'msgbox "!!!Node Ready : " & lineNb & " node!!!"

End Sub
