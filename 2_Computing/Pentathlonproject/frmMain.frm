VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H000000FF&
   Caption         =   "Form1"
   ClientHeight    =   10140
   ClientLeft      =   255
   ClientTop       =   450
   ClientWidth     =   12075
   FillColor       =   &H000000FF&
   FillStyle       =   0  'Solid
   ForeColor       =   &H000000FF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   10140
   ScaleWidth      =   12075
   Begin VB.ComboBox cmbWebsites 
      Height          =   315
      ItemData        =   "frmMain.frx":0000
      Left            =   9120
      List            =   "frmMain.frx":000A
      Style           =   2  'Dropdown List
      TabIndex        =   10
      Top             =   8640
      Width           =   2175
   End
   Begin VB.CommandButton cmdLinkToWWW 
      Caption         =   "Go to Website"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   5280
      TabIndex        =   9
      Top             =   8520
      Width           =   3735
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   2160
      TabIndex        =   8
      Top             =   7080
      Width           =   2895
   End
   Begin VB.PictureBox Picture2 
      Height          =   6375
      Left            =   5280
      Picture         =   "frmMain.frx":0023
      ScaleHeight     =   6315
      ScaleWidth      =   5955
      TabIndex        =   7
      Top             =   1680
      Width           =   6015
   End
   Begin VB.PictureBox Picture1 
      Height          =   1215
      Left            =   2280
      Picture         =   "frmMain.frx":8EB35
      ScaleHeight     =   1155
      ScaleWidth      =   2235
      TabIndex        =   6
      Top             =   360
      Width           =   2295
   End
   Begin VB.CommandButton cmdRiding 
      Caption         =   "Riding"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   2160
      TabIndex        =   3
      Top             =   4560
      Width           =   2895
   End
   Begin VB.CommandButton cmdFencing 
      Caption         =   "Fencing"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   2160
      TabIndex        =   2
      Top             =   3360
      Width           =   2895
   End
   Begin VB.CommandButton cmdSwimming 
      Caption         =   "Swimming"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   2160
      TabIndex        =   1
      Top             =   2280
      Width           =   2895
   End
   Begin VB.CommandButton cmdRunShoot 
      Caption         =   "Run-Shoot Combined"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   2160
      TabIndex        =   0
      Top             =   5760
      Width           =   2895
   End
   Begin VB.Label Label1 
      BackColor       =   &H000000FF&
      Caption         =   "Pentathlon Scorer"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   48
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   1335
      Left            =   5040
      TabIndex        =   4
      Top             =   360
      Width           =   6495
   End
   Begin VB.Label Label2 
      BackColor       =   &H000000FF&
      Caption         =   "Xavier Vrigneau"
      BeginProperty Font 
         Name            =   "Showcard Gothic"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   1215
      Left            =   4200
      TabIndex        =   5
      Top             =   9240
      Width           =   7575
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdLinkToWWW_Click()
    
    'this code launches the website in a frmWebPage
    'only two choices as only really two main pentathlon sites, UIPM and Pentathlon GB
    If cmbWebsites.Text <> "" Then
        frmWebPage.Show
    Else: MsgBox ("Must Choose a Website")
    End If

End Sub

'all the following code hides the current form and launches the forms selected
'by clicking on the button...

    Private Sub cmdRunShoot_Click()

        Me.Hide
        frmRunShoot.Show
    
    End Sub

    Private Sub cmdSwimming_Click()

        Me.Hide
        frmSwim.Show

    End Sub

    Private Sub cmdFencing_Click()

        Me.Hide
        frmFence.Show
    
    End Sub

    Private Sub cmdRiding_Click()

        Me.Hide
        frmRide.Show

    End Sub
    
Private Sub cmdExit_Click()

        ' this closes the program
        End
    
End Sub


