VERSION 5.00
Begin VB.Form VBSample 
   BackColor       =   &H00FFC0C0&
   Caption         =   "C++ DLL Test"
   ClientHeight    =   1725
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   3510
   LinkTopic       =   "Form1"
   ScaleHeight     =   1725
   ScaleWidth      =   3510
   StartUpPosition =   3  'Windows-Standard
   Begin VB.CommandButton Command1 
      Caption         =   "EXIT"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   1080
      Width           =   3255
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Zentriert
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   600
      Width           =   3255
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Zentriert
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   3255
   End
End
Attribute VB_Name = "VBSample"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
    Call Unload(Me)
End Sub

Private Sub Form_Load()
    Dim la!, lb!, lx!
    Dim lStr$
    
    lStr = "1234567890"
    la = 54.345
    lb = 135.672
    
    lx = VarMultiply(la, lb)
    Label1.Caption = lx
    
    If FlipString(lStr) = RC_OK Then Label2.Caption = lStr
End Sub
