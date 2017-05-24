object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 428
  Top = 485
  Height = 150
  Width = 272
  object ADOTable1: TADOTable
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'UCCTDMTabUsers'
    Left = 24
    Top = 16
    object ADOTable1UCIdUser: TIntegerField
      FieldName = 'UCIdUser'
    end
    object ADOTable1UCUserName: TWideStringField
      FieldName = 'UCUserName'
      Size = 30
    end
    object ADOTable1UCLogin: TWideStringField
      FieldName = 'UCLogin'
      Size = 30
    end
    object ADOTable1UCPassword: TWideStringField
      FieldName = 'UCPassword'
      Size = 30
    end
    object ADOTable1UCEmail: TWideStringField
      FieldName = 'UCEmail'
      Size = 150
    end
    object ADOTable1UCPrivileged: TIntegerField
      FieldName = 'UCPrivileged'
    end
    object ADOTable1UCTypeRec: TWideStringField
      FieldName = 'UCTypeRec'
      FixedChar = True
      Size = 1
    end
    object ADOTable1UCProfile: TIntegerField
      FieldName = 'UCProfile'
    end
    object ADOTable1UCKey: TWideStringField
      FieldName = 'UCKey'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 96
    Top = 16
  end
  object UCControls1: TUCControls
    GroupName = 'Campos de Tabela'
    UserControl = Form1.UserControl1
    NotAllowed = naInvisible
    Left = 176
    Top = 16
  end
end
