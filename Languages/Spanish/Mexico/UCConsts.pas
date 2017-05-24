{ Translated by Francisco Armando Due�as Rodr�guez - Canc�n - M�xico}
unit UCConsts;

interface

Const

  // new consts version 2 a 5 =========================================
  // Form Select Controls (design-time)
  Const_Contr_TitleLabel = 'Seleccionar Componentes del Formulario:';
  Const_Contr_GroupLabel = 'Grupo:';
  Const_Contr_CompDispLabel = 'Componentes Disponibles:';
  Const_Contr_CompSelLabel = 'Componentes Seleccionados:';
  Const_Contr_BtOK = '&Aceptar';
  Const_Contr_BTCancel = '&Cancelar';
  Const_Contr_DescCol = 'Descripci�n';
  Const_Contr_BtSellAllHint = 'Seleccionar Todo'; //added by fduenas
  Const_Contr_BtSelHint = 'Seleccionar'; //added by fduenas
  Const_Contr_BtUnSelHint = 'Deseleccionar'; //added by fduenas
  Const_Contr_BtUnSelAllHint = 'Deseleccionar Todo'; //added by fduenas

  //===================================================================


  // group property Settins.AppMsgsForm
  Const_Msgs_BtNew         = '&Nuevo Mensaje';
  Const_Msgs_BtReplay      = '&Responder';
  Const_Msgs_BtForward     = '&Reenviar';
  Const_Msgs_BtDelete      = '&Borrar';
  Const_Msgs_BtClose       = '&Cerrar'; //added by fduenas
  Const_Msgs_WindowCaption = 'Mensajes de Sistema';
  Const_Msgs_ColFrom       = 'Remitente';
  Const_Msgs_ColSubject    = 'Asunto';
  Const_Msgs_ColDate       = 'Fecha';
  Const_Msgs_PromptDelete  = '�Est� seguro de eliminar los mensajes seleccionados?';
  Const_Msgs_PromptDelete_WindowCaption  = 'Eliminar mensajes'; //added by fduenas

  Const_Msgs_NoMessagesSelected = '!Ning�n mensaje seleccionado�'; //added by fduenas
  Const_Msgs_NoMessagesSelected_WindowCaption = 'Informaci�n'; //added by fduenas

  // group property Settins.AppMsgsRec
  Const_MsgRec_BtClose       = '&Cerrar';
  Const_MsgRec_WindowCaption = 'Mensaje';
  Const_MsgRec_Title         = 'Mensaje Recibido';
  Const_MsgRec_LabelFrom     = 'De:';
  Const_MsgRec_LabelDate     = 'Fecha';
  Const_MsgRec_LabelSubject  = 'Asunto';
  Const_MsgRec_LabelMessage  = 'Mensaje';

  // group property Settins.AppMsgsSend
  Const_MsgSend_BtSend        = '&Enviar';
  Const_MsgSend_BtCancel      = '&Cancelar';
  Const_MsgSend_WindowCaption = 'Mensaje';
  Const_MsgSend_Title         = 'Enviar Nuevo Mensaje';
  Const_MsgSend_GroupTo       = 'Para:';
  Const_MsgSend_RadioUser     = 'Usuario:';
  Const_MsgSend_RadioAll      = 'Todos';
  Const_MsgSend_GroupMessage  = 'Mensaje';
  Const_MsgSend_LabelSubject  = 'Asunto'; //added by fduenas
  Const_MsgSend_LabelMessageText = 'Texto del mensaje'; //added by fduenas

  // Run errors
  MsgExceptConnection    = '�Valor No V�lido para la propiedad Connection del componente %s!';
  MsgExceptTransaction   = '�Valor No V�lido para la propiedad Transaction del componente %s!';
  MsgExceptDatabase      = '�Valor No V�lido para la propiedad Database del componente %s!';
  MsgExceptUserMngMenu   = 'Ingrese en la propiedad UsersForm.MenuItem o UsersForm.Action la opci�n del menu para abrir el Control de Usuarios';
  MsgExceptUserProfile   = 'Ingrese en la propiedad UsersProfile.MenuItem o UsersProfile.Action la opci�n del menu para abrir el Perfil de Usuarios';
  MsgExceptChagePassMenu = 'Ingrese en la propiedad ChangePasswordForm.MenuItem o .Action la opci�n del men� que permite al usuario cambiar su Contrase�a';
  MsgExceptAppID         = 'La propiedad ApplicationID requiere el nombre v�lido de una tabla para el registro de los Permisos de Usuario';
  MsgExceptUsersTable    = 'La propiedad UserTable requiere el nombre v�lido de una tabla para registrar/seleccionar los datos de los usuarios';
  MsgExceptRightsTable   = 'La propiead RightTable requiere el nombre v�lido de una tabla para registrar/seleccionar los permisos de los usuarios';

  // group property Settings.Mensagens
  Const_Men_AutoLogonError  = 'Error de Ingreso Autom�tico!'+#13+#10+ 'Especifique un Usuario y Contrase�a V�lidos.';
  Const_Men_SenhaDesabitada = 'Contrase�a vac�a para el Usuario %s';
  Const_Men_SenhaAlterada   = '�Se ha cambiado la Contrase�a con �xito!';
  Const_Men_MsgInicial      = 'ATENCION! Conecci�n Inicial:'+#13+#10+#13+#10+'Usuario : :user'+#13+#10+'Contrase�a : :password'+#13+#10+#13+#10+'Defina permisos para este usuario';
  Const_Men_MaxTentativas   = '%d Intentos de conecci�n inv�lidos !';
  Const_Men_LoginInvalido   = 'Usuario y/o Contrase�a Incorrectos!';

  //group property Settings.Login
  Const_Log_BtCancelar     = '&Cancelar';
  Const_Log_BtOK           = 'Aceptar';
  Const_Log_LabelSenha     = 'Contrase�a:';
  Const_Log_LabelUsuario   = 'Usuario: ';
  Const_Log_WindowCaption  = 'Conecci�n';
  Const_Log_LbEsqueciSenha  = 'Olvid� mi Contrase�a';
  Const_Log_MsgMailSend     = 'La contrase�a fue enviada a su correo.';

  //group property Settings.Log //new
  Const_LogC_WindowCaption   = 'Seguridad';
  Const_LogC_LabelDescricao  = 'Visor de Eventos';
  Const_LogC_LabelUsuario    = 'Usuario:';
  Const_LogC_LabelData       = 'Fecha:';
  Const_LogC_LabelNivel      = 'Nivel M�nimo: ';
  Const_LogC_ColunaNivel     = 'Nivel';
  Const_LogC_ColunaMensagem  = 'Mensaje';
  Const_LogC_ColunaUsuario   = 'Usuario';
  Const_LogC_ColunaData      = 'Fecha';
  Const_LogC_BtFiltro        = '&Aplicar Filtro';
  Const_LogC_BtExcluir       = '&Borrar Bit�cora';
  Const_LogC_BtFechar        = '&Cerrar';
  Const_LogC_ConfirmaExcluir = '�Est� seguro de Eliminar todos todos los registros de Bit�cora seleccionados?';
  Const_LogC_ConfirmaDelete_WindowCaption = 'Confirmaci�n'; //added by fduenas
  Const_LogC_Todos = 'Todos';    //BGM
  Const_LogC_Low = 'Bajo';       //BGM
  Const_LogC_Normal = 'Normal'; //BGM
  Const_LogC_High = 'Alto';     //BGM
  Const_LogC_Critic = 'Cr�tico'; //BGM
  Const_LogC_ExcluirEfectuada = 'Borrado de registros de bit�cora realizado: '+
                                'Usuario = "%s" | Fecha = %s a %s | Nivel <= %s'; //added by fduenas

  //group property Settings.CadastroUsuarios
  Const_Cad_WindowCaption   = 'Seguridad';
  Const_Cad_LabelDescricao  = 'Administraci�n de Usuarios';
  Const_Cad_ColunaNome      = 'Nombre';
  Const_Cad_ColunaLogin     = 'Usuario';
  Const_Cad_ColunaEmail     = 'Correo';
  Const_Cad_BtAdicionar     = '&Nuevo';
  Const_Cad_BtAlterar       = '&Editar';
  Const_Cad_BtExcluir       = 'E&liminar';
  Const_Cad_BtPermissoes    = '&Accesos';
  Const_Cad_BtSenha         = 'C&ontrase�a';
  Const_Cad_BtFechar        = '&Cerrar';
  Const_Cad_ConfirmaExcluir = '�Est� seguro de Eliminar al Usuario "%s"?';
  Const_Cad_ConfirmaDelete_WindowCaption = 'Eliminar usuario'; //added by fduenas

  //group property Settings.PerfilUsuarios
  Const_Prof_WindowCaption   = 'Seguridad';
  Const_Prof_LabelDescricao  = 'Perfil de Usuario';
  Const_Prof_ColunaNome      = 'Perfil';
  Const_Prof_BtAdicionar     = '&Nuevo';
  Const_Prof_BtAlterar       = '&Editar';
  Const_Prof_BtExcluir       = 'E&liminar';
  Const_Prof_BtPermissoes    = '&Accesos';   //BGM
  //Const_Prof_BtSenha         = 'C&ontrase�a'; //commented by fduenas
  Const_Prof_BtFechar        = '&Cerrar';
  Const_Prof_ConfirmaExcluir = 'Existe(n) usuario(s) con el Perfil "%s". �Est� seguro de eliminar el perfil?';
  Const_Prof_ConfirmaDelete_WindowCaption = 'Eliminar perfil'; //added by fduenas

  //group property Settings.IncAltUsuario
  Const_Inc_WindowCaption     = 'Administraci�n de Usuarios';
  Const_Inc_LabelAdicionar    = 'Nuevo Usuario';
  Const_Inc_LabelAlterar      = 'Editar Usuario';
  Const_Inc_LabelNome         = 'Nombre:';
  Const_Inc_LabelLogin        = 'Usuario: ';
  Const_Inc_LabelEmail        = 'Correo: ';
  Const_Inc_LabelPerfil       = 'Perfil: ';
  Const_Inc_CheckPrivilegiado = 'Usuario Privilegiado';
  Const_Inc_BtGravar          = '&Guardar';
  Const_Inc_BtCancelar        = 'Cancelar';

  //group property Settings.IncAltPerfil
  Const_PInc_WindowCaption     = 'Perfiles de Usuarios';
  Const_PInc_LabelAdicionar    = 'Nuevo Perfil';
  Const_PInc_LabelAlterar      = 'Editar Perfil';
  Const_PInc_LabelNome         = 'Descripci�n: ';
  Const_PInc_BtGravar          = '&Guardar';
  Const_PInc_BtCancelar        = 'Cancelar';

  //group property Settings.Permissao
  Const_Perm_WindowCaption  = 'Seguridad';
  Const_Perm_LabelUsuario   = 'Permisos de Usuario : ';
  Const_Perm_LabelPerfil    = 'Permisos del Perfil : ';
  Const_Perm_PageMenu       = 'Elementos del Men�';
  Const_Perm_PageActions    = 'Acciones';
  Const_Perm_BtLibera       = '&Permitir';
  Const_Perm_BtBloqueia     = '&Bloquear';
  Const_Perm_BtGravar       = '&Guardar';
  Const_Perm_BtCancelar     = '&Cancelar';

  //group property Settings.TrocaSenha do begin
  Const_Troc_WindowCaption   = 'Seguridad';
  Const_Troc_LabelDescricao  = 'Cambiar Contrase�a';
  Const_Troc_LabelSenhaAtual = 'Contrase�a Actual:';
  Const_Troc_LabelNovaSenha  = 'Nueva Contrase�a:';
  Const_Troc_LabelConfirma   = 'Confirme Contrase�a:';
  Const_Troc_BtGravar        = '&Guardar';
  Const_Troc_BtCancelar      = 'Cancelar';

  //group property Settings.Mensagens.ErroTrocaSenha
  Const_ErrPass_SenhaAtualInvalida = '�Contrase�a Actual Incorrecta!';
  Const_ErrPass_ErroNovaSenha      = 'Los campos Contrase�a Nueva y Confirme Contrase�a deben ser iguales';
  Const_ErrPass_NovaIgualAtual     = 'Nueva Contrase�a y Contrase�a Actual deben ser diferentes';
  Const_ErrPass_SenhaObrigatoria   = '�La Contrase�a es obligatoria!';
  Const_ErrPass_SenhaMinima        = 'La Contrase�a debe tener un m�nimo de %d caracteres';
  Const_ErrPass_SenhaInvalida      = '�Prohibido utilizar contrase�as NO Seguras!';

  //group property Settings.DefineSenha
  Const_DefPass_WindowCaption = 'Ingrese Contrase�a de Usuario: "%s"';
  Const_DefPass_LabelSenha    = 'Contrase�a: ';


implementation

end.
