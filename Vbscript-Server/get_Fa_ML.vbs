# $language = "VBScript"
# $interface = "1.0"

Const ForReading = 1
Const ForWriting = 2
Const ForAppending = 8

Sub main

 crt.Screen.Synchronous = True
  Dim fso, f, fso1, file1

  strUsername = crt.Dialog.Prompt("USERNAME : ", False)

  strPassword = crt.Dialog.Prompt("Password : ", False)

  Set fso = CreateObject("Scripting.FileSystemObject")

  Set f = fso.OpenTextFile("c:\crt\node.txt", ForReading, 0)

   Set fso1 = CreateObject("Scripting.FileSystemObject")

  Set file1 = fso1.OpenTextFile("c:\crt\view.txt", ForAppending, True)

  Dim line, params 
  Do While f.AtEndOfStream <> True


    line = f.Readline



     params = Split( line , ",", -1, 1)


    lineNb = UBound(params)


    For i= 0 To  lineNb
      crt.Screen.WaitForString "Internal-Management#"
     crt.Screen.Send params(i) & vbCR 
     crt.Screen.WaitForString "sername"
     crt.Screen.Send strUsername & Chr(10)
     crt.Screen.WaitForString "assword"
     crt.Screen.Send strPassword & Chr(10)

     crt.Screen.WaitForString params(i)
     ' crt.Screen.Send "terminal length 0" & Chr(10)
     crt.Screen.Send "sh int des | include Fa0/" & Chr(10)
     crt.Screen.WaitForString params(i)

     crt.Screen.Send "1" & Chr(10)
     crt.Screen.WaitForString "% 1 is not an open connection"
      ' readline = crt.Screen.Get(screenrow, 1, screenrow, 100 )
     screenrow = crt.screen.currentrow - 2
     readline1 = crt.Screen.Get2(screenrow, 1, 18, 100)

      file1.Write params(i) & vbcrlf &"####################################" & vbcrlf & readline1 &  "===========================" & vbcrlf & vbcrlf
   
      ' crt.Screen.Send "1" & Chr(10)
      ' crt.Screen.WaitForString "% 1 is not an open connection"
      crt.Screen.WaitForString params(i)
      
     crt.Screen.Send "exit" & Chr(10)
 
  
    Next

crt.Screen.Synchronous = True

    
  Loop

 


End Sub
