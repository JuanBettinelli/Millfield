VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form frmWebPage 
   BackColor       =   &H00000000&
   Caption         =   "Website"
   ClientHeight    =   8955
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10665
   LinkTopic       =   "Form1"
   ScaleHeight     =   8955
   ScaleWidth      =   10665
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdBack 
      Caption         =   "Back"
      Height          =   375
      Left            =   720
      TabIndex        =   1
      Top             =   120
      Width           =   1695
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser 
      Height          =   10455
      Left            =   0
      TabIndex        =   0
      Top             =   480
      Width           =   15015
      ExtentX         =   26485
      ExtentY         =   18441
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
End
Attribute VB_Name = "frmWebPage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdBack_Click()

    Me.Hide

End Sub

Private Sub Form_Activate()

    frmWebPage.WindowState = 2
    
    'this form brings up the webpage that is linked to the name entered on frmMain
    'e.g if  "UIPM" is selected the UIPM home page will come up
    If frmMain.cmbWebsites.Text = "UIPM" Then
        WebBrowser.Navigate "http://www.pentathlon.org"
    ElseIf frmMain.cmbWebsites.Text = "Pentathlon-GB" Then
        WebBrowser.Navigate "http://www.pentathlongb.org"
    End If

End Sub
