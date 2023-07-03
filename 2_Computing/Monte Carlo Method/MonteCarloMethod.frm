VERSION 5.00
Begin VB.Form frmMonteCarloMethod 
   Caption         =   "Monte Carlo Method"
   ClientHeight    =   12285
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12045
   LinkTopic       =   "Form1"
   ScaleHeight     =   12285
   ScaleWidth      =   12045
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtPi 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   9240
      TabIndex        =   21
      Text            =   "0"
      Top             =   3480
      Width           =   1815
   End
   Begin VB.ComboBox cmbFunction 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   420
      ItemData        =   "MonteCarloMethod.frx":0000
      Left            =   360
      List            =   "MonteCarloMethod.frx":0010
      Style           =   2  'Dropdown List
      TabIndex        =   13
      Top             =   720
      Width           =   2535
   End
   Begin VB.TextBox txtIntegral 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   720
      TabIndex        =   12
      Text            =   "0"
      Top             =   6120
      Width           =   1815
   End
   Begin VB.TextBox txtArea 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   720
      TabIndex        =   9
      Text            =   "0"
      Top             =   4800
      Width           =   1815
   End
   Begin VB.TextBox txtNumberOfGoes 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   720
      TabIndex        =   8
      Text            =   "0"
      Top             =   3720
      Width           =   1815
   End
   Begin VB.HScrollBar hscrNumberOfGoes 
      Height          =   735
      Left            =   4320
      Max             =   30000
      TabIndex        =   4
      Top             =   720
      Width           =   4215
   End
   Begin VB.CommandButton cmdQuit 
      Caption         =   "Quit"
      Height          =   495
      Left            =   9240
      TabIndex        =   2
      Top             =   6360
      Width           =   1695
   End
   Begin VB.CommandButton cmdBegin 
      Caption         =   "Begin"
      Height          =   735
      Left            =   480
      TabIndex        =   0
      Top             =   1680
      Width           =   2415
   End
   Begin VB.Label Label13 
      Caption         =   "Pi"
      Height          =   255
      Left            =   9720
      TabIndex        =   22
      Top             =   3120
      Width           =   735
   End
   Begin VB.Label Label12 
      Height          =   1575
      Left            =   6720
      TabIndex        =   20
      Top             =   7080
      Width           =   1695
   End
   Begin VB.Label Label11 
      Height          =   135
      Left            =   7560
      TabIndex        =   19
      Top             =   7000
      Width           =   1095
   End
   Begin VB.Label Label10 
      Height          =   3015
      Left            =   3720
      TabIndex        =   18
      Top             =   7560
      Width           =   4575
   End
   Begin VB.Label Label9 
      Height          =   3735
      Left            =   720
      TabIndex        =   17
      Top             =   6720
      Width           =   3135
   End
   Begin VB.Label Label6 
      Caption         =   "Integral"
      Height          =   255
      Left            =   1200
      TabIndex        =   11
      Top             =   5760
      Width           =   735
   End
   Begin VB.Label Label8 
      Height          =   855
      Left            =   960
      TabIndex        =   16
      Top             =   5400
      Width           =   1455
   End
   Begin VB.Label Label7 
      Height          =   1215
      Left            =   1560
      TabIndex        =   15
      Top             =   4200
      Width           =   2655
   End
   Begin VB.Label Label3 
      Height          =   1215
      Left            =   2520
      TabIndex        =   14
      Top             =   2880
      Width           =   1695
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   99
      Left            =   6240
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   98
      Left            =   6120
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   97
      Left            =   6000
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   96
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   95
      Left            =   5760
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   94
      Left            =   5640
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   93
      Left            =   5520
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   92
      Left            =   5400
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   91
      Left            =   5280
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   90
      Left            =   5160
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   89
      Left            =   5040
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   88
      Left            =   4920
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   87
      Left            =   4800
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   86
      Left            =   4680
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   85
      Left            =   4560
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   84
      Left            =   4440
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   83
      Left            =   4320
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   82
      Left            =   4200
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   81
      Left            =   4080
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   80
      Left            =   3960
      Shape           =   3  'Circle
      Top             =   7440
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   79
      Left            =   8640
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   78
      Left            =   8520
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   77
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   76
      Left            =   8280
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   75
      Left            =   8160
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   74
      Left            =   8040
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   73
      Left            =   7920
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   72
      Left            =   7800
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   71
      Left            =   7680
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   70
      Left            =   7560
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   69
      Left            =   7440
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   68
      Left            =   7320
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   67
      Left            =   7200
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   66
      Left            =   7080
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   65
      Left            =   6960
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   64
      Left            =   6840
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   63
      Left            =   6720
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   62
      Left            =   6600
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   61
      Left            =   6480
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   60
      Left            =   6360
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   59
      Left            =   6240
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   58
      Left            =   6120
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   57
      Left            =   6000
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   56
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   55
      Left            =   5760
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   54
      Left            =   5640
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   53
      Left            =   5520
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   52
      Left            =   5400
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   51
      Left            =   5280
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   50
      Left            =   5160
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   49
      Left            =   5040
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   48
      Left            =   4920
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   47
      Left            =   4800
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   46
      Left            =   4680
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   45
      Left            =   4560
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   44
      Left            =   4440
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   43
      Left            =   4320
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   42
      Left            =   4200
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   41
      Left            =   4080
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   40
      Left            =   3960
      Shape           =   3  'Circle
      Top             =   7320
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   39
      Left            =   8640
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   38
      Left            =   8520
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   37
      Left            =   8400
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   36
      Left            =   8280
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   35
      Left            =   8160
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   34
      Left            =   8040
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   33
      Left            =   7920
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   32
      Left            =   7800
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   31
      Left            =   7680
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   30
      Left            =   7560
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   29
      Left            =   7440
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   28
      Left            =   7320
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   27
      Left            =   7200
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   26
      Left            =   7080
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   25
      Left            =   6960
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   24
      Left            =   6840
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   23
      Left            =   6720
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   22
      Left            =   6600
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   21
      Left            =   6480
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   20
      Left            =   6360
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   19
      Left            =   6240
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   18
      Left            =   6120
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   17
      Left            =   6000
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   16
      Left            =   5880
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   15
      Left            =   5760
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   14
      Left            =   5640
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   13
      Left            =   5520
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   12
      Left            =   5400
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   11
      Left            =   5280
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   10
      Left            =   5160
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   9
      Left            =   5040
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   8
      Left            =   4920
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   7
      Left            =   4800
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   6
      Left            =   4680
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   5
      Left            =   4560
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   4
      Left            =   4440
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   3
      Left            =   4320
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   2
      Left            =   4200
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   1
      Left            =   4080
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape Shape1 
      Height          =   4125
      Left            =   4245
      Shape           =   1  'Square
      Top             =   3000
      Width           =   3855
   End
   Begin VB.Shape shpCircle2 
      FillStyle       =   0  'Solid
      Height          =   105
      Index           =   0
      Left            =   3960
      Shape           =   3  'Circle
      Top             =   7200
      Width           =   105
   End
   Begin VB.Shape shpCircle 
      Height          =   7095
      Left            =   -600
      Shape           =   3  'Circle
      Top             =   3120
      Width           =   10335
   End
   Begin VB.Label Label5 
      Caption         =   "Area"
      Height          =   375
      Left            =   1200
      TabIndex        =   10
      Top             =   4440
      Width           =   855
   End
   Begin VB.Label Label4 
      Caption         =   "Number of Goes"
      Height          =   255
      Left            =   1080
      TabIndex        =   7
      Top             =   3240
      Width           =   1215
   End
   Begin VB.Label lblNumberOfGoes 
      Caption         =   "0"
      Height          =   375
      Left            =   5880
      TabIndex        =   6
      Top             =   1680
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Number of Goes"
      Height          =   255
      Left            =   5640
      TabIndex        =   5
      Top             =   240
      Width           =   2175
   End
   Begin VB.Label Label1 
      Caption         =   "Function used"
      Height          =   375
      Left            =   1080
      TabIndex        =   3
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label lblBreak 
      Caption         =   "Ctrl-Alt and Break"
      Height          =   375
      Left            =   9480
      TabIndex        =   1
      Top             =   5640
      Width           =   1575
   End
End
Attribute VB_Name = "frmMonteCarloMethod"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim LoopNumber As Integer


Private Sub cmdBegin_Click()

    If Trim(cmbFunction.Text) = "" Then
        MsgBox ("Please choose an option")
        Exit Sub
    End If

    For LoopNumber = 0 To hscrNumberOfGoes.Value - 1
    
        XVal = Rnd()
        YVal = Rnd()

        x = Int(XVal * 4000) + 4000
        Y = Int(YVal * 4000) + 3000
    
        'MsgBox ("X, Y = " & X & ", " & Y)
        
        If LoopNumber <= 99 Then
            shpCircle2(LoopNumber).Visible = True
            shpCircle2(LoopNumber).Left = x
            shpCircle2(LoopNumber).Top = Y
        End If
        
        Select Case cmbFunction.Text
    
            Case "Area of circle"
                 If XVal ^ 2 + YVal ^ 2 <= 1 Then
                    CountInside = CountInside + 1
                End If
        
            Case "f(x) = x^2"
                If YVal <= XVal ^ 2 Then
                    CountInside = CountInside + 1
                End If
              
            Case "f(x) = x^3"
                If YVal <= XVal ^ 3 Then
                    CountInside = CountInside + 1
                End If
                  
            Case "f(x) = sin(x)"
                If YVal <= Sin(x * 3.14159 / 180) Then
                    CountInside = CountInside + 1
                End If
                  
        End Select
        
    Next LoopNumber
    
    If hscrNumberOfGoes.Value > 0 Then
        txtArea.Text = Format(CountInside / hscrNumberOfGoes.Value, "0.#####")
    End If
    
    If cmbFunction.Text = "Area of circle" Then
        txtPi.Text = 4 * txtArea.Text
    End If
    
End Sub

Private Sub cmdQuit_Click()

 End
 
End Sub

Private Sub Form_Load()

    For i = 0 To 99
        shpCircle2(i).Visible = False
    Next i
    
    CountInside = 0

End Sub

Private Sub hscrNumberOfGoes_Change()

    Call Form_Load

    txtNumberOfGoes.Text = hscrNumberOfGoes.Value
    lblNumberOfGoes.Caption = hscrNumberOfGoes.Value
    
End Sub

