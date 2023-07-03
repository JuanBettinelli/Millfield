VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7710
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10980
   LinkTopic       =   "Form1"
   ScaleHeight     =   7710
   ScaleWidth      =   10980
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdTwo1DArraysStart 
      Caption         =   "Two 1D Arrays - Start"
      Height          =   855
      Left            =   1920
      TabIndex        =   2
      Top             =   4200
      Width           =   2655
   End
   Begin VB.CommandButton cmd2DArrayStart 
      Caption         =   "2D Array - Start"
      Height          =   855
      Left            =   1920
      TabIndex        =   1
      Top             =   5520
      Width           =   2655
   End
   Begin VB.CommandButton cmd1DArrayStart 
      Caption         =   "1D Array - Start"
      Height          =   855
      Left            =   1920
      TabIndex        =   0
      Top             =   2760
      Width           =   2655
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmd1DArrayStart_Click()
Dim StudentArray(7) As String
 
    For i = 0 To 7
        StudentName = InputBox("Student (" & i & ") = ")
        StudentArray(i) = StudentName
    Next i
    
    For i = 0 To 7
        MsgBox ("Student (" & i & ") = " & StudentArray(i))
    Next i

End Sub

Private Sub cmd2DArrayStart_Click()

Const MaxNoOfCities As Byte = 10
Dim DistanceArray(MaxNoOfCities, MaxNoOfCities) As String
Dim CityArray(MaxNoOfCities) As String

     NoOfCities = InputBox("No of Cities (2->10) = ")
 
    For CityNo = 0 To NoOfCities - 1
        CityArray(CityNo) = InputBox("City " & CityNo + 1 & " = ")
    Next CityNo
    
    For CityNo = 0 To NoOfCities - 1
        MsgBox ("City No " & CityNo + 1 & " = " & CityArray(CityNo + 1))
    Next CityNo

    For row = 0 To NoOfCities - 1
        For col = 0 To NoOfCities - 1
            If row <> col Then
                DistanceArray(row, col) = InputBox("Distance from " & CityArray(row) & " -> " & CityArray(col) & " = ")
            Else: DistanceArray(row, col) = 0
            End If
        Next col
    Next row
    
    For row = 0 To NoOfCities - 1
        For col = 0 To NoOfCities - 1
            MsgBox ("Distance from " & CityArray(row) & " -> " & CityArray(col) & " = " & DistanceArray(row, col))
        Next col
    Next row

End Sub


