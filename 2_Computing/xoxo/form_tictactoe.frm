VERSION 5.00
Begin VB.Form form_tictactoe 
   BackColor       =   &H00FF8080&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "T i c - T a c - T o e   ( X O X O X O )"
   ClientHeight    =   7440
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9390
   Icon            =   "form_tictactoe.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MouseIcon       =   "form_tictactoe.frx":0442
   ScaleHeight     =   7440
   ScaleWidth      =   9390
   StartUpPosition =   1  'CenterOwner
   Begin VB.CommandButton cmdFinish 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Exit XOXO"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3480
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   120
      Width           =   1575
   End
   Begin VB.Timer tmrO 
      Interval        =   50
      Left            =   2640
      Top             =   5640
   End
   Begin VB.Timer tmrX 
      Interval        =   50
      Left            =   2160
      Top             =   5640
   End
   Begin VB.CommandButton cmdReset 
      BackColor       =   &H00FFFFFF&
      Caption         =   "New Game"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   120
      Width           =   1575
   End
   Begin VB.CommandButton cmdStart 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Start Game"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
   Begin VB.Shape Shape5 
      BorderColor     =   &H00FFFFFF&
      BorderWidth     =   2
      Height          =   855
      Left            =   120
      Top             =   5160
      Width           =   4935
   End
   Begin VB.Shape Shape10 
      BorderColor     =   &H00FFFFFF&
      Height          =   1335
      Left            =   3480
      Top             =   3720
      Width           =   1575
   End
   Begin VB.Shape Shape9 
      BorderColor     =   &H00FFFFFF&
      Height          =   1335
      Left            =   1800
      Top             =   2280
      Width           =   1575
   End
   Begin VB.Shape Shape8 
      BorderColor     =   &H00FFFFFF&
      Height          =   1335
      Left            =   3480
      Top             =   2280
      Width           =   1575
   End
   Begin VB.Shape Shape7 
      BorderColor     =   &H00FFFFFF&
      Height          =   1335
      Left            =   120
      Top             =   3720
      Width           =   1575
   End
   Begin VB.Shape Shape6 
      BorderColor     =   &H00FFFFFF&
      Height          =   1335
      Left            =   1800
      Top             =   3720
      Width           =   1575
   End
   Begin VB.Shape Shape4 
      BorderColor     =   &H00FFFFFF&
      Height          =   1335
      Left            =   120
      Top             =   2280
      Width           =   1575
   End
   Begin VB.Shape Shape3 
      BorderColor     =   &H00FFFFFF&
      Height          =   1335
      Left            =   3480
      Top             =   840
      Width           =   1575
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00FFFFFF&
      Height          =   1335
      Left            =   1800
      Top             =   840
      Width           =   1575
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00FFFFFF&
      Height          =   1335
      Left            =   120
      Top             =   840
      Width           =   1575
   End
   Begin VB.Label lblBox 
      BackColor       =   &H00FF8080&
      Caption         =   "Welcome to XOXOXO"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   240
      TabIndex        =   0
      Top             =   5280
      Width           =   4695
   End
   Begin VB.Image imgX9 
      Height          =   930
      Left            =   3720
      Picture         =   "form_tictactoe.frx":0884
      Top             =   3960
      Width           =   1170
   End
   Begin VB.Image imgX8 
      Height          =   930
      Left            =   2040
      Picture         =   "form_tictactoe.frx":41EE
      Top             =   3960
      Width           =   1170
   End
   Begin VB.Image imgX7 
      Height          =   930
      Left            =   360
      Picture         =   "form_tictactoe.frx":7B58
      Top             =   3960
      Width           =   1170
   End
   Begin VB.Image imgX6 
      Height          =   930
      Left            =   3720
      Picture         =   "form_tictactoe.frx":B4C2
      Top             =   2520
      Width           =   1170
   End
   Begin VB.Image imgX5 
      Height          =   930
      Left            =   2040
      Picture         =   "form_tictactoe.frx":EE2C
      Top             =   2520
      Width           =   1170
   End
   Begin VB.Image imgX4 
      Height          =   930
      Left            =   360
      Picture         =   "form_tictactoe.frx":12796
      Top             =   2520
      Width           =   1170
   End
   Begin VB.Image imgX3 
      Height          =   930
      Left            =   3720
      Picture         =   "form_tictactoe.frx":16100
      Top             =   1080
      Width           =   1170
   End
   Begin VB.Image imgX2 
      Height          =   930
      Left            =   2040
      Picture         =   "form_tictactoe.frx":19A6A
      Top             =   1080
      Width           =   1170
   End
   Begin VB.Image imgX1 
      Height          =   930
      Left            =   360
      Picture         =   "form_tictactoe.frx":1D3D4
      Top             =   1080
      Width           =   1170
   End
   Begin VB.Image imgO9 
      Height          =   930
      Left            =   3720
      Picture         =   "form_tictactoe.frx":20D3E
      Top             =   3960
      Width           =   1170
   End
   Begin VB.Image imgO8 
      Height          =   930
      Left            =   2040
      Picture         =   "form_tictactoe.frx":246A8
      Top             =   3960
      Width           =   1170
   End
   Begin VB.Image imgO7 
      Height          =   930
      Left            =   360
      Picture         =   "form_tictactoe.frx":28012
      Top             =   3960
      Width           =   1170
   End
   Begin VB.Image imgO6 
      Height          =   930
      Left            =   3720
      Picture         =   "form_tictactoe.frx":2B97C
      Top             =   2520
      Width           =   1170
   End
   Begin VB.Image imgO5 
      Height          =   930
      Left            =   2040
      Picture         =   "form_tictactoe.frx":2F2E6
      Top             =   2520
      Width           =   1170
   End
   Begin VB.Image imgO3 
      Height          =   930
      Left            =   3720
      Picture         =   "form_tictactoe.frx":32C50
      Top             =   1080
      Width           =   1170
   End
   Begin VB.Image imgO2 
      Height          =   930
      Left            =   2040
      Picture         =   "form_tictactoe.frx":365BA
      Top             =   1080
      Width           =   1170
   End
   Begin VB.Image imgO4 
      Height          =   930
      Left            =   360
      Picture         =   "form_tictactoe.frx":39F24
      Top             =   2520
      Width           =   1170
   End
   Begin VB.Image imgO1 
      Height          =   930
      Left            =   360
      Picture         =   "form_tictactoe.frx":3D88E
      Top             =   1080
      Width           =   1170
   End
   Begin VB.Image img9 
      Height          =   1095
      Left            =   3600
      Top             =   3840
      Width           =   1335
   End
   Begin VB.Image img8 
      Height          =   1095
      Left            =   1920
      Top             =   3840
      Width           =   1335
   End
   Begin VB.Image img7 
      Height          =   1095
      Left            =   240
      Top             =   3840
      Width           =   1335
   End
   Begin VB.Image img6 
      Height          =   1095
      Left            =   3600
      Top             =   2400
      Width           =   1335
   End
   Begin VB.Image img5 
      Height          =   1095
      Left            =   1920
      Top             =   2400
      Width           =   1335
   End
   Begin VB.Image img4 
      Height          =   1095
      Left            =   240
      Top             =   2400
      Width           =   1335
   End
   Begin VB.Image img3 
      Height          =   1095
      Left            =   3600
      Top             =   960
      Width           =   1335
   End
   Begin VB.Image img2 
      Height          =   1095
      Left            =   1920
      Top             =   960
      Width           =   1335
   End
   Begin VB.Image img1 
      Height          =   1095
      Left            =   240
      Top             =   960
      Width           =   1335
   End
End
Attribute VB_Name = "form_tictactoe"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Unload(Cancel As Integer)

    Unload form_draw
    Unload form_tictactoe
    Unload form_welcome
    
End Sub

Private Sub cmdFinish_Click()

    Unload form_draw
    Unload form_tictactoe
    Unload form_welcome
    
End Sub

Private Sub cmdReset_Click()

    HideAll
    lblBox.Caption = "It is Player ONE's go"
    
End Sub

Private Sub cmdStart_Click()

    lblBox.Caption = "It is Player ONE's go"
    
End Sub

Private Sub Form_Load()

    HideAll
    
End Sub

Function HideAll()

    imgO1.Visible = False
    imgO2.Visible = False
    imgO3.Visible = False
    imgO4.Visible = False
    imgO5.Visible = False
    imgO6.Visible = False
    imgO7.Visible = False
    imgO8.Visible = False
    imgO9.Visible = False

    imgX1.Visible = False
    imgX2.Visible = False
    imgX3.Visible = False
    imgX4.Visible = False
    imgX5.Visible = False
    imgX6.Visible = False
    imgX7.Visible = False
    imgX8.Visible = False
    imgX9.Visible = False
    
End Function

Private Sub img1_Click()

    If lblBox.Caption = "It is Player ONE's go" Then
        imgO1.Visible = True
        lblBox.Caption = "It is Player TWO's go"
    Else: imgX1.Visible = True
        lblBox.Caption = "It is Player ONE's go"
    End If

End Sub

Private Sub img2_Click()

    If lblBox.Caption = "It is Player ONE's go" Then
        imgO2.Visible = True
        lblBox.Caption = "It is Player TWO's go"
    Else: imgX2.Visible = True
        lblBox.Caption = "It is Player ONE's go"
    End If
                   
End Sub

Private Sub img3_click()

    If lblBox.Caption = "It is Player ONE's go" Then
        imgO3.Visible = True
        lblBox.Caption = "It is Player TWO's go"
    Else: imgX3.Visible = True
        lblBox.Caption = "It is Player ONE's go"
    End If
                   
End Sub

Private Sub img4_Click()

    If lblBox.Caption = "It is Player ONE's go" Then
        imgO4.Visible = True
        lblBox.Caption = "It is Player TWO's go"
    Else: imgX4.Visible = True
        lblBox.Caption = "It is Player ONE's go"
    End If
    
End Sub

Private Sub img5_Click()

    If lblBox.Caption = "It is Player ONE's go" Then
        imgO5.Visible = True
        lblBox.Caption = "It is Player TWO's go"
    Else: imgX5.Visible = True
        lblBox.Caption = "It is Player ONE's go"
    End If
    
End Sub

Private Sub img6_Click()

    If lblBox.Caption = "It is Player ONE's go" Then
        imgO6.Visible = True
        lblBox.Caption = "It is Player TWO's go"
    Else: imgX6.Visible = True
        lblBox.Caption = "It is Player ONE's go"
    End If
    
End Sub

Private Sub img7_Click()

    If lblBox.Caption = "It is Player ONE's go" Then
        imgO7.Visible = True
        lblBox.Caption = "It is Player TWO's go"
    Else: imgX7.Visible = True
        lblBox.Caption = "It is Player ONE's go"
    End If
    
End Sub

Private Sub img8_Click()

    If lblBox.Caption = "It is Player ONE's go" Then
        imgO8.Visible = True
        lblBox.Caption = "It is Player TWO's go"
    Else: imgX8.Visible = True
        lblBox.Caption = "It is Player ONE's go"
    End If
    
End Sub

Private Sub img9_Click()

    If lblBox.Caption = "It is Player ONE's go" Then
        imgO9.Visible = True
        lblBox.Caption = "It is Player TWO's go"
    Else: imgX9.Visible = True
        lblBox.Caption = "It is Player ONE's go"
    End If
    
End Sub

Private Sub tmrX_Timer()

    If imgX1.Visible = True And imgX2.Visible = True And imgX3.Visible = True Then
        MsgBox "Player ONE Wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgX4.Visible = True And imgX5.Visible = True And imgX6.Visible = True Then
        MsgBox "Player ONE wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgX7.Visible = True And imgX8.Visible = True And imgX9.Visible = True Then
        MsgBox "Player ONE wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgX1.Visible = True And imgX4.Visible = True And imgX7.Visible = True Then
        MsgBox "Player ONE wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgX2.Visible = True And imgX5.Visible = True And imgX8.Visible = True Then
        MsgBox "Player ONE wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgX3.Visible = True And imgX6.Visible = True And imgX9.Visible = True Then
        MsgBox "Player ONE wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgX1.Visible = True And imgX5.Visible = True And imgX9.Visible = True Then
        MsgBox "Player ONE wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgX3.Visible = True And imgX5.Visible = True And imgX7.Visible = True Then
        MsgBox "Player ONE wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgX1.Visible = True And imgX3.Visible = True And imgX5.Visible = True Then
        MsgBox "Player ONE wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
End Sub

Private Sub tmrO_Timer()

    If imgO1.Visible = True And imgO2.Visible = True And imgO3.Visible = True Then
        MsgBox "Player TWO Wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgO1.Visible = True And imgO3.Visible = True And imgO5.Visible = True Then
        MsgBox "Player TWO Wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgO4.Visible = True And imgO5.Visible = True And imgO6.Visible = True Then
        MsgBox "Player TWO wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgO7.Visible = True And imgO8.Visible = True And imgO9.Visible = True Then
        MsgBox "Player TWO wins", vbOKOnly, "The End"
        form_draw.Hide
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
    End If
    
    If imgO1.Visible = True And imgO4.Visible = True And imgO7.Visible = True Then
        MsgBox "Player TWO wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgO2.Visible = True And imgO5.Visible = True And imgO8.Visible = True Then
        MsgBox "Player TWO wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgO3.Visible = True And imgO6.Visible = True And imgO9.Visible = True Then
        MsgBox "Player TWO wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgO1.Visible = True And imgO5.Visible = True And imgO9.Visible = True Then
        MsgBox "Player TWO wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If imgO3.Visible = True And imgO5.Visible = True And imgO7.Visible = True Then
        MsgBox "Player TWO wins", vbOKOnly, "The End"
        HideAll
        lblBox.Caption = "Welcome to XOXOXO"
        form_draw.Hide
    End If
    
    If (imgO1.Visible = True Or imgX1.Visible = True) And (imgO2.Visible = True Or imgX2.Visible = True) And (imgO3.Visible = True Or imgX3.Visible = True) And (imgO4.Visible = True Or imgX4.Visible = True) And (imgO5.Visible = True Or imgX5.Visible = True) And (imgO6.Visible = True Or imgX6.Visible = True) And (imgO7.Visible = True Or imgX7.Visible = True) And (imgO8.Visible = True Or imgX8.Visible = True) And (imgO9.Visible = True Or imgX9.Visible = True) Then
        form_tictactoe.Hide
        form_draw.Show
    End If
    
End Sub
