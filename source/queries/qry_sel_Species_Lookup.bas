﻿Operation =1
Option =0
Where ="(((tlu_NCPN_Plants.Utah_PLANT_Code) Is Not Null))"
Begin InputTables
    Name ="tlu_NCPN_Plants"
End
Begin OutputColumns
    Expression ="tlu_NCPN_Plants.Master_PLANT_Code"
    Expression ="tlu_NCPN_Plants.LU_Code"
    Expression ="tlu_NCPN_Plants.Utah_Species"
End
Begin OrderBy
    Expression ="tlu_NCPN_Plants.LU_Code"
    Flag =0
End
dbBoolean "ReturnsRecords" ="-1"
dbInteger "ODBCTimeout" ="60"
dbByte "RecordsetType" ="0"
dbBoolean "OrderByOn" ="0"
dbByte "Orientation" ="0"
dbByte "DefaultView" ="2"
Begin
End
Begin
    State =0
    Left =47
    Top =43
    Right =1002
    Bottom =356
    Left =-1
    Top =-1
    Right =948
    Bottom =144
    Left =0
    Top =0
    ColumnsShown =539
    Begin
        Left =38
        Top =6
        Right =210
        Bottom =120
        Top =0
        Name ="tlu_NCPN_Plants"
        Name =""
    End
End
