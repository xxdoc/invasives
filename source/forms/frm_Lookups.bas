﻿Version =20
VersionRequired =20
Begin Form
    PopUp = NotDefault
    Modal = NotDefault
    RecordSelectors = NotDefault
    MaxButton = NotDefault
    MinButton = NotDefault
    ControlBox = NotDefault
    AutoCenter = NotDefault
    NavigationButtons = NotDefault
    AllowDeletions = NotDefault
    CloseButton = NotDefault
    DividingLines = NotDefault
    AllowAdditions = NotDefault
    OrderByOn = NotDefault
    DefaultView =0
    ScrollBars =0
    ViewsAllowed =1
    BorderStyle =3
    PictureAlignment =2
    DatasheetGridlinesBehavior =3
    Cycle =2
    GridX =24
    GridY =24
    Width =13215
    DatasheetFontHeight =10
    ItemSuffix =601
    Left =690
    Top =1365
    Right =13905
    Bottom =11445
    DatasheetGridlinesColor =12632256
    RecSrcDt = Begin
        0x3dabdfc735cde240
    End
    Caption =" Manage Lookup Tables"
    DatasheetFontName ="Arial"
    PrtMip = Begin
        0xa0050000a0050000a0050000a005000000000000201c0000e010000001000000 ,
        0x010000006801000000000000a10700000100000001000000
    End
    AllowDatasheetView =0
    AllowPivotTableView =0
    AllowPivotChartView =0
    AllowPivotChartView =0
    Begin
        Begin Label
            FontItalic = NotDefault
            OldBorderStyle =1
            TextAlign =1
            FontWeight =700
            BackColor =8388608
            BorderColor =8388608
            ForeColor =16777215
            FontName ="Arial"
        End
        Begin Rectangle
            BackStyle =0
            BorderWidth =2
            BorderColor =8388608
        End
        Begin Line
            BorderWidth =2
            BorderColor =8388608
        End
        Begin Image
            BackStyle =0
            PictureAlignment =2
            BorderColor =16776960
        End
        Begin CommandButton
            FontItalic = NotDefault
            FontSize =8
            ForeColor =-2147483630
            FontName ="Arial"
        End
        Begin OptionButton
            SpecialEffect =4
            BorderWidth =2
            LabelX =230
            LabelY =-30
            BorderColor =8388608
        End
        Begin CheckBox
            SpecialEffect =4
            BorderWidth =2
            LabelX =230
            LabelY =-30
            BorderColor =8388608
        End
        Begin OptionGroup
            BackColor =8421376
            BorderColor =16776960
        End
        Begin BoundObjectFrame
            BackStyle =0
            BorderColor =16776960
        End
        Begin TextBox
            BackColor =8421376
            BorderColor =16776960
            ForeColor =16777215
            FontName ="Arial"
        End
        Begin ListBox
            BackColor =8421376
            ForeColor =16777215
            BorderColor =16776960
            FontName ="Arial"
        End
        Begin ComboBox
            BackColor =8421376
            BorderColor =16776960
            ForeColor =16777215
            FontName ="Arial"
        End
        Begin Subform
            BorderColor =16776960
        End
        Begin UnboundObjectFrame
            BackStyle =0
            OldBorderStyle =1
            BorderColor =16776960
        End
        Begin ToggleButton
            FontItalic = NotDefault
            FontSize =8
            ForeColor =-2147483630
            FontName ="Arial"
        End
        Begin Tab
            FontItalic = NotDefault
            BackStyle =0
            FontWeight =700
            FontName ="Arial"
        End
        Begin Section
            CanGrow = NotDefault
            Height =10095
            BackColor =13025979
            Name ="Detail"
            Begin
                Begin Tab
                    OverlapFlags =85
                    Top =525
                    Width =13215
                    Height =9570
                    FontSize =9
                    Name ="PageTabs"
                    Begin
                        Begin Page
                            OverlapFlags =215
                            Left =120
                            Top =960
                            Width =12960
                            Height =9000
                            Name ="pgOtherLookups"
                            Caption =" Other lookup tables"
                            Begin
                                Begin Subform
                                    Locked = NotDefault
                                    OverlapFlags =215
                                    SpecialEffect =2
                                    Left =120
                                    Top =1500
                                    Width =12960
                                    Height =8457
                                    BorderColor =0
                                    Name ="subLookupTables"
                                End
                                Begin ComboBox
                                    LimitToList = NotDefault
                                    SpecialEffect =2
                                    OverlapFlags =215
                                    IMESentenceMode =3
                                    ColumnCount =3
                                    ListRows =16
                                    ListWidth =10080
                                    Left =840
                                    Top =1020
                                    Width =4320
                                    Height =252
                                    FontSize =9
                                    TabIndex =1
                                    BackColor =-2147483643
                                    BorderColor =0
                                    ForeColor =-2147483640
                                    ColumnInfo ="\"\";\"\";\"\";\"\";\"\";\"\";\"10\";\"510\""
                                    Name ="selTable"
                                    RowSourceType ="Table/Query"
                                    RowSource ="SELECT MSysObjects.Name, IIf([Allow_edits_lookup],\"Editable\",\"Non-editable\")"
                                        ", tsys_Link_Tables.Description_text FROM MSysObjects INNER JOIN tsys_Link_Tables"
                                        " ON MSysObjects.Name=tsys_Link_Tables.Link_table WHERE MSysObjects.Name Like \"t"
                                        "lu_*\" AND MSysObjects.Type=6 AND tsys_Link_Tables.Browser_view=True ORDER BY ts"
                                        "ys_Link_Tables.Sort_order, tsys_Link_Tables.Link_table; "
                                    ColumnWidths ="2880;1440;5760"
                                    AfterUpdate ="[Event Procedure]"
                                    Begin
                                        Begin Label
                                            FontItalic = NotDefault
                                            BackStyle =0
                                            OldBorderStyle =0
                                            OverlapFlags =215
                                            TextAlign =0
                                            Left =180
                                            Top =1020
                                            Width =588
                                            Height =252
                                            FontSize =9
                                            BackColor =-2147483633
                                            BorderColor =0
                                            ForeColor =-2147483630
                                            Name ="labTable"
                                            Caption ="Table:"
                                        End
                                    End
                                End
                            End
                        End
                    End
                End
                Begin CommandButton
                    FontItalic = NotDefault
                    OverlapFlags =85
                    Left =12240
                    Top =120
                    Width =720
                    Height =354
                    FontSize =9
                    TabIndex =1
                    ForeColor =0
                    Name ="cmdClose"
                    Caption ="Close"
                    OnClick ="[Event Procedure]"
                    ControlTipText ="Close the form"
                End
            End
        End
    End
End
CodeBehindForm
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Compare Database
Option Explicit

' =================================
' FORM NAME:    frm_Lookups
' Description:  Standard module for viewing and editing lookup domains
' Data source:  unbound
' Data access:  edit only, no additions or deletions
' Pages:        pgOtherLookups
' Functions:    none
' References:   none
' Source/date:  John R. Boetsch, Jan 2006
' Revisions:    JRB, May 5, 2006 - added page for other lookups, reset mode on change page
'               JRB, 6/21/2006 - added orderby for taxa subform on open, changed widths on
'                   contacts listbox, reversed order of new and view buttons on taxa page
'               SDK, 9/18/2006 - removed Species List and Project Crew List tabs, update Other
'                   tab to check for whether the lookup should be editable or not
' =================================

Private Sub cmdClose_Click()
    On Error GoTo Err_Handler

    DoCmd.Close , , acSaveNo

Exit_Procedure:
    Exit Sub

Err_Handler:
    MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical
    Resume Exit_Procedure

End Sub

' =================================
' PAGE NAME:    Other Lookups (pgOtherLookups)
' Description:  browse other lookup tables
' Unbound ctls: selTable
' Subforms:     subLookupTables (unbound until a table is selected)
' =================================

Private Sub selTable_AfterUpdate()
    On Error GoTo Err_Handler
    Dim booAllowEdits As Boolean

    ' Once a table is selected, bind the subform to this table
    If IsNull(Me.selTable) Then
    ' If none selected ...
        Me.subLookupTables.SourceObject = ""
        Me.subLookupTables.Locked = True
        Me.subLookupTables.Form.AllowDeletions = False
        Me.subLookupTables.Form.AllowEdits = False
        Me.subLookupTables.Form.AllowAdditions = False
    Else:
    ' If a table is selected ...
        booAllowEdits = DLookup("[Allow_edits_lookup]", "tsys_Link_Tables", "[Link_table]=" & CorrectText(Me.selTable))
        Me.subLookupTables.SourceObject = "Table." & Me.selTable.Value
        Me.subLookupTables.Locked = Not booAllowEdits
        Me.subLookupTables.Form.AllowDeletions = booAllowEdits
        Me.subLookupTables.Form.AllowEdits = booAllowEdits
        Me.subLookupTables.Form.AllowAdditions = booAllowEdits
    End If

Exit_Procedure:
    Exit Sub

Err_Handler:
    MsgBox "Error #" & Err.Number & ": " & Err.Description, vbCritical
    Resume Exit_Procedure

End Sub
