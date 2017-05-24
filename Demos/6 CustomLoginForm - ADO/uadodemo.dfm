object Form1: TForm1
  Left = 208
  Top = 104
  Width = 469
  Height = 464
  Caption = 'UserControl - Custom Login '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 72
    Top = 400
    Width = 298
    Height = 13
    Caption = '<<= incluido para logar Exceptions. Veja o evento OnException'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object GroupBox4: TGroupBox
    Left = 10
    Top = 336
    Width = 441
    Height = 49
    Caption = 'Gerar erro'
    TabOrder = 1
    object EditErro: TEdit
      Left = 16
      Top = 16
      Width = 217
      Height = 21
      TabOrder = 0
      Text = 'Erro gerado pelo demo'
    end
    object BitBtn2: TBitBtn
      Left = 256
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Except!'
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000420B0000420B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFCC6701CC6701CC6701CC6701CC6701CC6701CC
        6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFCC6701
        FFFFFFFFFFFFFFFAF5FFF3E6FEEBD5FEE3C3FEDCB5FED7ABFED7ABFED7ABFED7
        ABFED7ABFED7ABCC6701FF00FFCC6701FFFFFFFFFFFFFFFFFFFFFAF5FFF3E6FE
        EBD5FEE3C4FEDCB500C0C000C0C000C0C000C0C0FED7ABCC6701FF00FFCC6701
        FFFFFFFFFFFFFFFFFFFFFFFFFFFAF5FFF3E6FFEBD5FEE3C4FFFFFFFFFFFFFFFF
        FF00C0C0FED7ABCC6701FF00FFCC6701FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FAF5FFF3E6FFEBD5FEE3C4FEDCB5FED7ABFED7ABFED7ABCC6701FF00FFCC6701
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF5FFF3E6FFEBD5FEE3C4FEDC
        B5FED7ABFED7ABCC6701FF00FFCC6701FFFFFFFFFFFFFFFFFF80808080808080
        8080FFFFFF808080FFF3E6808080808080808080FED7ABCC6701FF00FFCC6701
        8080FF0000FF8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF5FFF3E6FFEB
        D5FEE3C4FEDCB5CC6701FF00FFCC67010000FF0000FF0000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFAF5FFF3E6FFEBD5FEE3C4CC6701FF00FFCC6701
        8080FF0000FF8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
        F5FFF3E6FFEBD5CC6701FF00FFCC6701FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF5FFF3E6CC6701FF00FFCC6701
        CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC67
        01CC6701CC6701CC6701FF00FFFF00FFCC6701CC6701CC6701CC6701CC6701CC
        6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object GroupBox5: TGroupBox
    Left = 10
    Top = 280
    Width = 441
    Height = 49
    Caption = 'Incluir log'
    TabOrder = 0
    object EditLog: TEdit
      Left = 16
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
      Text = 'Teste de log'
    end
    object cbNivel: TComboBox
      Left = 144
      Top = 16
      Width = 97
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      Items.Strings = (
        'N'#237'vel 0'
        'N'#237'vel 1'
        'N'#237'vel 2'
        'N'#237'vel 3')
    end
    object BitBtn1: TBitBtn
      Left = 256
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Logar'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000420B0000420B00000001000000010000B5847300AD73
        8400B5848400B58C8400B5948C00D6BDB500C6C6C600EFD6C600CECECE00D6D6
        D600DEDEDE00E7E7E700EFEFEF0042B5F7008CD6F700B5DEF700F7F7F700FF00
        FF003184FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00111111111111
        1111111111111111111111111101020202020202020202020211111111011313
        1313131313131313021111111101131313131313131313130211111111011313
        1313131313131313021111111101131313131313131313130211111111011313
        1313131313131313021111111101131313131313131313130211111111011313
        13131313131313130211111112121210101010101010101002111111120D120C
        0C0C0C0C0C0C0C0C02111212120D1212120B0B0B0B0004030211120E0F0F0F0E
        120A0A0A0600131302111212120F1212120909090600130211111111120F1208
        0808080806000211111111111212120707070707050011111111}
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 88
    Width = 441
    Height = 185
    ActivePage = TabSheet1
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Actions'
      object GroupBox1: TGroupBox
        Left = 10
        Top = 12
        Width = 103
        Height = 121
        Caption = 'GroupBox1'
        TabOrder = 0
        object Button1: TButton
          Left = 15
          Top = 24
          Width = 75
          Height = 25
          Action = Action1
          TabOrder = 0
        end
        object Button2: TButton
          Left = 15
          Top = 56
          Width = 75
          Height = 25
          Action = Action2
          TabOrder = 1
        end
        object Button3: TButton
          Left = 15
          Top = 88
          Width = 75
          Height = 25
          Action = Action3
          TabOrder = 2
        end
      end
      object GroupBox2: TGroupBox
        Left = 162
        Top = 12
        Width = 103
        Height = 121
        Caption = 'GroupBox2'
        TabOrder = 1
        object Button4: TButton
          Left = 15
          Top = 24
          Width = 75
          Height = 25
          Action = Action4
          TabOrder = 0
        end
        object Button5: TButton
          Left = 15
          Top = 56
          Width = 75
          Height = 25
          Action = Action5
          TabOrder = 1
        end
        object Button6: TButton
          Left = 15
          Top = 88
          Width = 75
          Height = 25
          Action = Action6
          TabOrder = 2
        end
      end
      object GroupBox3: TGroupBox
        Left = 314
        Top = 12
        Width = 103
        Height = 121
        Caption = 'GroupBox3'
        TabOrder = 2
        object Button7: TButton
          Left = 15
          Top = 24
          Width = 75
          Height = 25
          Action = Action7
          TabOrder = 0
        end
        object Button8: TButton
          Left = 15
          Top = 56
          Width = 75
          Height = 25
          Action = Action8
          TabOrder = 1
        end
        object Button9: TButton
          Left = 15
          Top = 88
          Width = 75
          Height = 25
          Action = Action9
          TabOrder = 2
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    AutoHotkeys = maManual
    OwnerDraw = True
    Left = 8
    Top = 8
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Abrir1: TMenuItem
        Caption = 'Abrir'
      end
      object Salvar1: TMenuItem
        Caption = '-'
      end
      object Salvar2: TMenuItem
        Caption = 'Salvar'
      end
      object Salvarcomo1: TMenuItem
        Caption = 'Salvar como...'
      end
      object Fechar1: TMenuItem
        Caption = 'Fechar'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Dados1: TMenuItem
        Caption = 'Dados'
        object Importar1: TMenuItem
          Caption = 'Importar'
        end
        object Exportar1: TMenuItem
          Caption = 'Exportar'
        end
        object N4: TMenuItem
          Caption = '-'
        end
        object Vincular1: TMenuItem
          Caption = 'Vincular'
        end
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Sair2: TMenuItem
        Caption = 'Sair'
      end
    end
    object Editar1: TMenuItem
      Caption = 'Editar'
      object Copiar1: TMenuItem
        Caption = 'Copiar'
      end
      object Colar1: TMenuItem
        Caption = 'Colar'
      end
      object Recortar1: TMenuItem
        Caption = 'Recortar'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Selecionartudo1: TMenuItem
        Caption = 'Selecionar tudo'
      end
      object N5: TMenuItem
        Caption = '-'
      end
      object AreadeTransferencia1: TMenuItem
        Caption = 'Area de Transferencia'
        object Exibir2: TMenuItem
          Caption = 'Exibir'
        end
        object Esvaziar1: TMenuItem
          Caption = 'Esvaziar'
        end
      end
    end
    object Exibir1: TMenuItem
      Caption = 'Exibir'
      object Zoom1: TMenuItem
        Caption = 'Zoom...'
        object Normal1: TMenuItem
          Caption = 'Normal'
          Checked = True
          GroupIndex = 1
          RadioItem = True
        end
        object Grande1: TMenuItem
          Caption = 'Grande'
          GroupIndex = 1
          RadioItem = True
        end
        object Ajustarnajanela1: TMenuItem
          Caption = 'Ajustar na janela'
          GroupIndex = 1
          RadioItem = True
        end
        object N6: TMenuItem
          Caption = '-'
          GroupIndex = 1
        end
        object Personalizar1: TMenuItem
          Caption = 'Personalizar'
          GroupIndex = 1
        end
      end
      object amanhonormal1: TMenuItem
        Caption = 'Tamanho normal'
      end
      object elacheia1: TMenuItem
        Caption = 'Tela cheia'
      end
    end
    object Relatorios1: TMenuItem
      Caption = 'Relatorios'
      object Relatorio11: TMenuItem
        Caption = 'Relatorio 1'
      end
      object Relatorio21: TMenuItem
        Caption = 'Relatorio 2'
      end
      object Relatorio31: TMenuItem
        Caption = 'Relatorio 3'
      end
      object Relatorio41: TMenuItem
        Caption = 'Relatorio 4'
      end
    end
    object Segurana1: TMenuItem
      Caption = 'Seguran'#231'a'
      object Cadastrodeusuarios1: TMenuItem
        Caption = 'Cadastro de usuarios'
      end
      object Perfildeusurios1: TMenuItem
        Caption = 'Perfil de usuarios'
      end
      object logdosistema: TMenuItem
        Caption = 'Log do Sistema'
        OnClick = Action1Execute
      end
      object N7: TMenuItem
        Caption = '-'
      end
      object rocarsenha1: TMenuItem
        Caption = 'Trocar senha'
      end
      object EfetuarLogoff1: TMenuItem
        Caption = 'Efetuar Logoff'
        OnClick = EfetuarLogoff1Click
      end
    end
  end
  object ActionList1: TActionList
    Left = 40
    Top = 8
    object Action1: TAction
      Category = 'Grupo1'
      Caption = 'Action1'
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Category = 'Grupo1'
      Caption = 'Action2'
      OnExecute = Action1Execute
    end
    object Action3: TAction
      Category = 'Grupo1'
      Caption = 'Action3'
      OnExecute = Action1Execute
    end
    object Action4: TAction
      Category = 'Grupo2'
      Caption = 'Action4'
      OnExecute = Action1Execute
    end
    object Action5: TAction
      Category = 'Grupo2'
      Caption = 'Action5'
      OnExecute = Action1Execute
    end
    object Action6: TAction
      Category = 'Grupo2'
      Caption = 'Action6'
      OnExecute = Action1Execute
    end
    object Action7: TAction
      Category = 'Grupo3'
      Caption = 'Action7'
      OnExecute = Action1Execute
    end
    object Action8: TAction
      Category = 'Grupo3'
      Caption = 'Action8'
      OnExecute = Action1Execute
    end
    object Action9: TAction
      Category = 'Grupo3'
      Caption = 'Action9'
      OnExecute = Action1Execute
    end
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=..\BASE.MDB;Persist' +
      ' Security Info=False'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 72
    Top = 8
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 32
    Top = 392
  end
  object UCADOConn1: TUCADOConn
    Connection = ADOConnection1
    Left = 104
    Top = 8
  end
  object UserControl1: TUserControl
    AutoStart = True
    ApplicationID = 'customlogin'
    ControlRight.ActionList = ActionList1
    ControlRight.MainMenu = MainMenu1
    UsersForm.MenuItem = Cadastrodeusuarios1
    UsersForm.UsePrivilegedField = False
    UsersForm.ProtectAdmin = True
    EncryptKey = 0
    NotAllowedItems.MenuVisible = True
    NotAllowedItems.ActionVisible = True
    Login.AutoLogon.Active = False
    Login.AutoLogon.MessageOnError = True
    Login.InitialLogin.User = 'Admin'
    Login.InitialLogin.Email = 'qmd@usercontrol.com.br'
    Login.InitialLogin.Password = '#delphi'
    Login.MaxLoginAttempts = 0
    Login.GetLoginName = lnNone
    LogControl.Active = True
    LogControl.TableLog = 'UCCLLog'
    LogControl.MenuItem = logdosistema
    ExtraRight = <>
    LoginMode = lmActive
    UsersProfile.Active = True
    UsersProfile.MenuItem = Perfildeusurios1
    TableUsers.FieldUserID = 'UCIdUser'
    TableUsers.FieldUserName = 'UCUserName'
    TableUsers.FieldLogin = 'UCLogin'
    TableUsers.FieldPassword = 'UCPassword'
    TableUsers.FieldEmail = 'UCEmail'
    TableUsers.FieldPrivileged = 'UCPrivileged'
    TableUsers.FieldTypeRec = 'UCTypeRec'
    TableUsers.FieldProfile = 'UCProfile'
    TableUsers.FieldKey = 'UCKey'
    TableUsers.TableName = 'UCCLTabUsers'
    TableRights.FieldUserID = 'UCIdUser'
    TableRights.FieldModule = 'UCModule'
    TableRights.FieldComponentName = 'UCCompName'
    TableRights.FieldFormName = 'UCFormName'
    TableRights.FieldKey = 'UCKey'
    TableRights.TableName = 'UCCLTabRights'
    ChangePasswordForm.MenuItem = rocarsenha1
    ChangePasswordForm.ForcePassword = False
    ChangePasswordForm.MinPasswordLength = 0
    OnLoginSucess = ADOUserControl1LoginSucess
    OnLoginError = ADOUserControl1LoginError
    OnCustomLoginForm = ADOUserControl1CustomLoginForm
    DataConnector = UCADOConn1
    CheckValidationKey = False
    Left = 136
    Top = 8
  end
  object UCXPStyle1: TUCXPStyle
    Active = True
    XPSettings.DimLevel = 30
    XPSettings.GrayLevel = 10
    XPSettings.Font.Charset = ANSI_CHARSET
    XPSettings.Font.Color = clMenuText
    XPSettings.Font.Height = -11
    XPSettings.Font.Name = 'Tahoma'
    XPSettings.Font.Style = []
    XPSettings.Color = clBtnFace
    XPSettings.DrawMenuBar = False
    XPSettings.IconBackColor = clBtnFace
    XPSettings.MenuBarColor = clBtnFace
    XPSettings.SelectColor = clHighlight
    XPSettings.SelectBorderColor = clHighlight
    XPSettings.SelectFontColor = clMenuText
    XPSettings.DisabledColor = clInactiveCaption
    XPSettings.SeparatorColor = clBtnFace
    XPSettings.CheckedColor = clHighlight
    XPSettings.IconWidth = 24
    XPSettings.DrawSelect = True
    XPSettings.UseSystemColors = True
    XPSettings.UseDimColor = False
    XPSettings.OverrideOwnerDraw = False
    XPSettings.Gradient = False
    XPSettings.FlatMenu = False
    XPSettings.AutoDetect = False
    XPSettings.BitBtnColor = clBtnFace
    XPSettings.ColorsChanged = False
    Left = 168
    Top = 8
  end
end
