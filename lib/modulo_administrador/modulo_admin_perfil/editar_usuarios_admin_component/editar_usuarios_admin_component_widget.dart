import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'editar_usuarios_admin_component_model.dart';
export 'editar_usuarios_admin_component_model.dart';

class EditarUsuariosAdminComponentWidget extends StatefulWidget {
  const EditarUsuariosAdminComponentWidget({
    Key? key,
    required this.pEditarUsuariosAdmin,
  }) : super(key: key);

  final UsersRecord? pEditarUsuariosAdmin;

  @override
  _EditarUsuariosAdminComponentWidgetState createState() =>
      _EditarUsuariosAdminComponentWidgetState();
}

class _EditarUsuariosAdminComponentWidgetState
    extends State<EditarUsuariosAdminComponentWidget>
    with TickerProviderStateMixin {
  late EditarUsuariosAdminComponentModel _model;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 300.ms),
        MoveEffect(
          curve: Curves.bounceOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: Offset(0.0, 100.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 400.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditarUsuariosAdminComponentModel());

    _model.textController ??= TextEditingController(
        text: widget.pEditarUsuariosAdmin?.nMiembro?.toString());
    _model.textFieldFocusNode ??= FocusNode();

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 400.0,
            ),
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 12.0,
                  color: Color(0x1E000000),
                  offset: Offset(0.0, 5.0),
                )
              ],
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              width: 100.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(16.0),
                                  topRight: Radius.circular(16.0),
                                ),
                                shape: BoxShape.rectangle,
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 10.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 8.0, 12.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  blurRadius: 4.0,
                                                  color: Color(0x70FF0000),
                                                  offset: Offset(0.0, 2.0),
                                                )
                                              ],
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                            alignment: AlignmentDirectional(
                                                0.00, 0.00),
                                            child: Container(
                                              width: 90.0,
                                              height: 90.0,
                                              clipBehavior: Clip.antiAlias,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                              ),
                                              child: Image.network(
                                                widget.pEditarUsuariosAdmin!
                                                    .photoUrl,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            valueOrDefault<String>(
                                              widget.pEditarUsuariosAdmin
                                                  ?.displayName,
                                              '----------',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge,
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              widget
                                                  .pEditarUsuariosAdmin?.email,
                                              '------------',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          ),
                                        ],
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        var confirmDialogResponse =
                                            await showDialog<bool>(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Confirmar'),
                                                      content: Text(
                                                          '¿Desea eliminar el usuario?'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  false),
                                                          child:
                                                              Text('Cancelar'),
                                                        ),
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext,
                                                                  true),
                                                          child:
                                                              Text('Confirmar'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                ) ??
                                                false;
                                        if (confirmDialogResponse) {
                                          await widget
                                              .pEditarUsuariosAdmin!.reference
                                              .delete();
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'Usuario ${widget.pEditarUsuariosAdmin?.nMiembro?.toString()} eliminado correctamente!',
                                                style: TextStyle(
                                                  color: Color(0xFF00A504),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              duration:
                                                  Duration(milliseconds: 4000),
                                              backgroundColor:
                                                  Color(0xFF8EF1AF),
                                            ),
                                          );
                                        } else {
                                          context.safePop();
                                        }

                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.delete_forever,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 35.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 15.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Número de miembro',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF373434),
                                    width: 0.2,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xDD000000),
                                    width: 0.2,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 0.2,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 0.2,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 0.0, 0.0),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                            FlutterFlowDropDown<bool>(
                              controller: _model.ddMembresiaValueController ??=
                                  FormFieldController<bool>(
                                _model.ddMembresiaValue ??= false,
                              ),
                              options: List<bool>.from([true, false]),
                              optionLabels: ['Plan Activo', 'Plan Inactivo'],
                              onChanged: (val) =>
                                  setState(() => _model.ddMembresiaValue = val),
                              width: double.infinity,
                              height: 60.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Membresía',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: FlutterFlowTheme.of(context).jet,
                              borderWidth: 0.2,
                              borderRadius: 12.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                            FlutterFlowDropDown<bool>(
                              controller: _model.ddRolValueController ??=
                                  FormFieldController<bool>(
                                _model.ddRolValue ??= false,
                              ),
                              options: List<bool>.from([true, false]),
                              optionLabels: ['Administrador', 'Usuario'],
                              onChanged: (val) =>
                                  setState(() => _model.ddRolValue = val),
                              width: double.infinity,
                              height: 60.0,
                              textStyle:
                                  FlutterFlowTheme.of(context).bodyMedium,
                              hintText: 'Rol',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2.0,
                              borderColor: FlutterFlowTheme.of(context).jet,
                              borderWidth: 0.2,
                              borderRadius: 12.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 20.0, 20.0, 20.0),
                              hidesUnderline: true,
                              isSearchable: false,
                              isMultiSelect: false,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(0.00, 0.05),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          await widget
                                              .pEditarUsuariosAdmin!.reference
                                              .update(createUsersRecordData(
                                            isAdmin: _model.ddRolValue == true,
                                            nMiembro: int.tryParse(
                                                _model.textController.text),
                                            membresia:
                                                _model.ddMembresiaValue == true,
                                          ));
                                          Navigator.pop(context);
                                        },
                                        text: 'Actualizar',
                                        options: FFButtonOptions(
                                          width: double.infinity,
                                          height: 44.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .white,
                                              ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          hoverColor: Color(0xE0000000),
                                          hoverTextColor:
                                              FlutterFlowTheme.of(context).info,
                                          hoverElevation: 0.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(SizedBox(height: 18.0)),
                        ),
                      ),
                    ].divide(SizedBox(height: 20.0)),
                  ),
                ],
              ),
            ),
          ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
        ),
      ],
    );
  }
}
