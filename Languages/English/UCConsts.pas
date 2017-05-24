//////////////////////////////////////////////////////////////////////////////////
// English constants file for User Control vs 2 alfa 5 Jan/2004                 //
// Written by Rodrigo (QmD) Cordeiro (qmd@usercontrol.com.br)                          //
// Special thanks to Rodrigo (WertherOO) Palhano (wertherpr@hotmail.com) for    //
// reviewing the file constants translation.                                    //
//////////////////////////////////////////////////////////////////////////////////
//Object Oriented Case Tool                                                     //
//Take a look at www.speedcase.com.br !                                         //
//Delphi Kylix CASE tool                                                        //
//////////////////////////////////////////////////////////////////////////////////

unit UCConsts;

interface

Const

  // new consts version 2 a 5 =========================================
  // Form Select Controls (design-time)
  Const_Contr_TitleLabel = 'Selection of Components from Form.:';
  Const_Contr_GroupLabel = 'Group :';
  Const_Contr_CompDispLabel = 'Available Components  :';
  Const_Contr_CompSelLabel = 'Selected Components :';
  Const_Contr_BtOK = '&OK';
  Const_Contr_BtCancel = '&Cancel';
  Const_Contr_DescCol = 'Description';
  Const_Contr_BtSellAllHint = 'Select All'; //added by fduenas
  Const_Contr_BtSelHint = 'Select'; //added by fduenas
  Const_Contr_BtUnSelHint = 'Unselect'; //added by fduenas
  Const_Contr_BtUnSelAllHint = 'Unselect All'; //added by fduenas


  //===================================================================


  // group property Settins.AppMsgsForm
  Const_Msgs_BtNew         = '&New Message';
  Const_Msgs_BtReplay      = '&Replay';
  Const_Msgs_BtForward     = '&Forward';
  Const_Msgs_BtDelete      = '&Delete';
  Const_Msgs_BtClose       = '&Close'; //added by fduenas
  Const_Msgs_WindowCaption = 'System Messages';
  Const_Msgs_ColFrom       = 'Sender';
  Const_Msgs_ColSubject    = 'Subject';
  Const_Msgs_ColDate       = 'Date';
  Const_Msgs_PromptDelete  = 'Confirm deletion of selected messages ?';
  Const_Msgs_PromptDelete_WindowCaption  = 'Delete messages'; //added by fduenas

  Const_Msgs_NoMessagesSelected = '!No Messages selected¡'; //added by fduenas
  Const_Msgs_NoMessagesSelected_WindowCaption = 'Information'; //added by fduenas

  // group property Settins.AppMsgsRec
  Const_MsgRec_BtClose       = '&Close';
  Const_MsgRec_WindowCaption = 'Message';
  Const_MsgRec_Title         = 'Message Received';
  Const_MsgRec_LabelFrom     = 'From :';
  Const_MsgRec_LabelDate     = 'Date';
  Const_MsgRec_LabelSubject  = 'Subject';
  Const_MsgRec_LabelMessage  = 'Message';

  // group property Settins.AppMsgsSend
  Const_MsgSend_BtSend        = '&Send';
  Const_MsgSend_BtCancel      = '&Cancel';
  Const_MsgSend_WindowCaption = 'Message';
  Const_MsgSend_Title         = 'Send new message';
  Const_MsgSend_GroupTo       = 'To :';
  Const_MsgSend_RadioUser     = 'User :';
  Const_MsgSend_RadioAll      = 'All';
  Const_MsgSend_GroupMessage  = 'Message';
  Const_MsgSend_LabelSubject  = 'Subject'; //added by fduenas
  Const_MsgSend_LabelMessageText = 'Message text'; //added by fduenas

  // Run errors
  MsgExceptConnection    = 'Inform the Connection property of component %s!';
  MsgExceptTransaction   = 'Inform the Transaction property of component %s!';
  MsgExceptDatabase      = 'Inform the Database property of component %s!';
  MsgExceptUserMngMenu   = 'Inform in the UsersForm.MenuItem or UsersForm.Action property the menu item to open User Manager Form';
  MsgExceptUserProfile   = 'Inform in the UsersProfile.MenuItem or UsersProfile.Action property the menu Item to open the Profile Manager Form';
  MsgExceptChagePassMenu = 'Inform in the ChangePasswordForm.MenuItem or .Action property the menu Item to open Change Password Form';
  MsgExceptAppID         = 'ApplicationID property required to identify rights table records';
  MsgExceptUsersTable    = 'UserTable property required to create/select User data';
  MsgExceptRightsTable   = 'RightTable property required to create/select user rights data';

  // group property Settings.Mensagens
  Const_Men_AutoLogonError  = 'Auto Logon error!'+#13+#10+ 'Inform a valid User and password.';
  Const_Men_SenhaDesabitada = 'Empty password to Login %s';
  Const_Men_SenhaAlterada   = 'Password modified successfully !';
  Const_Men_MsgInicial      = 'Initial Login:'+#13+#10+#13+#10+'User : :user'+#13+#10+'Password : :password'+#13+#10+#13+#10+'Define user rights';
  Const_Men_MaxTentativas   = '%d Invalid login attempt !';
  Const_Men_LoginInvalido   = 'Invalid user or password!';

  //group property Settings.Login
  Const_Log_BtCancelar     = '&Cancel';
  Const_Log_BtOK           = 'OK';
  Const_Log_LabelSenha     = 'Password :';
  Const_Log_LabelUsuario   = 'User : ';
  Const_Log_WindowCaption  = 'Login';
  Const_Log_LbEsqueciSenha  = 'I forgot the password';
  Const_Log_MsgMailSend     = 'the password has been sent to your mail.';

  //group property Settings.Log //new
  Const_LogC_WindowCaption   = 'Security';
  Const_LogC_LabelDescricao  = 'Event Viewer';
  Const_LogC_LabelUsuario    = 'User :';
  Const_LogC_LabelData       = 'Date :';
  Const_LogC_LabelNivel      = 'Min. Level : ';
  Const_LogC_ColunaNivel     = 'Level';
  Const_LogC_ColunaMensagem  = 'Message';
  Const_LogC_ColunaUsuario   = 'User';
  Const_LogC_ColunaData      = 'Date';
  Const_LogC_BtFiltro        = '&Apply filter';
  Const_LogC_BtExcluir       = '&Delete Log';
  Const_LogC_BtFechar        = '&Close';
  Const_LogC_ConfirmaExcluir = 'Confirm deletion of all selected log records ?';
  Const_LogC_ConfirmaDelete_WindowCaption = 'Delete confirmation'; //added by fduenas
  Const_LogC_Todos = 'All';    //BGM
  Const_LogC_Low = 'Low';       //BGM
  Const_LogC_Normal = 'Normal'; //BGM
  Const_LogC_High = 'High';     //BGM
  Const_LogC_Critic = 'Critic'; //BGM
  Const_LogC_ExcluirEfectuada = 'Deletion of system log done: '+
                                'User = "%s" | Date = %s a %s | Level <= %s'; //added by fduenas

  //group property Settings.CadastroUsuarios
  Const_Cad_WindowCaption   = 'Security';
  Const_Cad_LabelDescricao  = 'User Manager';
  Const_Cad_ColunaNome      = 'Name';
  Const_Cad_ColunaLogin     = 'Login';
  Const_Cad_ColunaEmail     = 'Mail';
  Const_Cad_BtAdicionar     = '&Add';
  Const_Cad_BtAlterar       = 'C&hange';
  Const_Cad_BtExcluir       = '&Delete';
  Const_Cad_BtPermissoes    = '&Rights';
  Const_Cad_BtSenha         = '&Password';
  Const_Cad_BtFechar        = '&Close';
  Const_Cad_ConfirmaExcluir = 'Delete user "%s" ?';
  Const_Cad_ConfirmaDelete_WindowCaption = 'Delete user'; //added by fduenas

  //group property Settings.PerfilUsuarios
  Const_Prof_WindowCaption   = 'Security';
  Const_Prof_LabelDescricao  = 'User profile';
  Const_Prof_ColunaNome      = 'Profile';
  Const_Prof_BtAdicionar     = '&Add';
  Const_Prof_BtAlterar       = '&Change';
  Const_Prof_BtExcluir       = '&Delete';
  Const_Prof_BtPermissoes    = '&Rights';   //BGM
  //Const_Prof_BtSenha         = '&Password'; //commented by fduenas
  Const_Prof_BtFechar        = '&Close';
  Const_Prof_ConfirmaExcluir = 'Found user with the "%s" profile. Confirm deletion ?';
  Const_Prof_ConfirmaDelete_WindowCaption = 'Delete profile'; //added by fduenas

  //group property Settings.IncAltUsuario
  Const_Inc_WindowCaption     = 'User Manager';
  Const_Inc_LabelAdicionar    = 'Add User';
  Const_Inc_LabelAlterar      = 'Change User';
  Const_Inc_LabelNome         = 'Name :';
  Const_Inc_LabelLogin        = 'Login : ';
  Const_Inc_LabelEmail        = 'Mail : ';
  Const_Inc_LabelPerfil       = 'Profile : ';
  Const_Inc_CheckPrivilegiado = 'Privileged user';
  Const_Inc_BtGravar          = '&Save';
  Const_Inc_BtCancelar        = 'Cancel';

  //group property Settings.IncAltPerfil
  Const_PInc_WindowCaption     = 'User Profile';
  Const_PInc_LabelAdicionar    = 'Add Profile';
  Const_PInc_LabelAlterar      = 'Change Profile';
  Const_PInc_LabelNome         = 'Profile : ';
  Const_PInc_BtGravar          = '&Save';
  Const_PInc_BtCancelar        = 'Cancel';

  //group property Settings.Permissao
  Const_Perm_WindowCaption  = 'Security';
  Const_Perm_LabelUsuario   = 'User Rights : ';
  Const_Perm_LabelPerfil    = 'Profile Rights : ';
  Const_Perm_PageMenu       = 'Menu Items';
  Const_Perm_PageActions    = 'Actions';
  Const_Perm_BtLibera       = '&Unlock';
  Const_Perm_BtBloqueia     = '&Lock';
  Const_Perm_BtGravar       = '&Save';
  Const_Perm_BtCancelar     = '&Cancel';

  //group property Settings.TrocaSenha do begin
  Const_Troc_WindowCaption   = 'Security';
  Const_Troc_LabelDescricao  = 'Change Password';
  Const_Troc_LabelSenhaAtual = 'Current Password :';
  Const_Troc_LabelNovaSenha  = 'New Password :';
  Const_Troc_LabelConfirma   = 'Confirm :';
  Const_Troc_BtGravar        = '&Save';
  Const_Troc_BtCancelar      = 'Cancel';

  //group property Settings.Mensagens.ErroTrocaSenha
  Const_ErrPass_SenhaAtualInvalida = 'Current password is Invalid !';
  Const_ErrPass_ErroNovaSenha      = 'New Password and Confirm fields must be equal';
  Const_ErrPass_NovaIgualAtual     = 'New password and current password must be different';
  Const_ErrPass_SenhaObrigatoria   = 'Password required!';
  Const_ErrPass_SenhaMinima        = 'Minimal Password length  %d';
  Const_ErrPass_SenhaInvalida      = 'Invalid password type!';

  //group property Settings.DefineSenha
  Const_DefPass_WindowCaption = 'Set user password : "%s"';
  Const_DefPass_LabelSenha    = 'Password : ';


implementation

end.
