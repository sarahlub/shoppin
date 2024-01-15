import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edit_profile_form_model.dart';
export 'edit_profile_form_model.dart';

class EditProfileFormWidget extends StatefulWidget {
  const EditProfileFormWidget({
    super.key,
    required this.editProfile,
  });

  final bool? editProfile;

  @override
  _EditProfileFormWidgetState createState() => _EditProfileFormWidgetState();
}

class _EditProfileFormWidgetState extends State<EditProfileFormWidget> {
  late EditProfileFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditProfileFormModel());

    _model.yourNameController ??=
        TextEditingController(text: currentUserDisplayName);
    _model.yourNameFocusNode ??= FocusNode();

    _model.myBioController ??= TextEditingController(
        text: valueOrDefault(currentUserDocument?.bio, ''));
    _model.myBioFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
      mainAxisSize: MainAxisSize.max,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
        ))
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (widget.editProfile == true)
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30.0,
                      borderWidth: 1.0,
                      buttonSize: 50.0,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30.0,
                      ),
                      onPressed: () async {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                  child: Text(
                    widget.editProfile == true
                        ? 'Edit Profile'
                        : 'Create Your Profile',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).headlineMediumFamily,
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 22.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context)
                                  .headlineMediumFamily),
                        ),
                  ),
                ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  final selectedMedia = await selectMediaWithSourceBottomSheet(
                    context: context,
                    imageQuality: 80,
                    allowPhoto: true,
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    textColor: FlutterFlowTheme.of(context).primaryText,
                    pickerFontFamily: 'Outfit',
                  );
                  if (selectedMedia != null &&
                      selectedMedia.every(
                          (m) => validateFileFormat(m.storagePath, context))) {
                    setState(() => _model.isDataUploading = true);
                    var selectedUploadedFiles = <FFUploadedFile>[];

                    var downloadUrls = <String>[];
                    try {
                      showUploadMessage(
                        context,
                        'Uploading file...',
                        showLoading: true,
                      );
                      selectedUploadedFiles = selectedMedia
                          .map((m) => FFUploadedFile(
                                name: m.storagePath.split('/').last,
                                bytes: m.bytes,
                                height: m.dimensions?.height,
                                width: m.dimensions?.width,
                                blurHash: m.blurHash,
                              ))
                          .toList();

                      downloadUrls = (await Future.wait(
                        selectedMedia.map(
                          (m) async => await uploadData(m.storagePath, m.bytes),
                        ),
                      ))
                          .where((u) => u != null)
                          .map((u) => u!)
                          .toList();
                    } finally {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      _model.isDataUploading = false;
                    }
                    if (selectedUploadedFiles.length == selectedMedia.length &&
                        downloadUrls.length == selectedMedia.length) {
                      setState(() {
                        _model.uploadedLocalFile = selectedUploadedFiles.first;
                        _model.uploadedFileUrl = downloadUrls.first;
                      });
                      showUploadMessage(context, 'Success!');
                    } else {
                      setState(() {});
                      showUploadMessage(context, 'Failed to upload data');
                      return;
                    }
                  }
                },
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: AuthUserStreamWidget(
                          builder: (context) => Container(
                            width: 90.0,
                            height: 90.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: CachedNetworkImage(
                              fadeInDuration: const Duration(milliseconds: 500),
                              fadeOutDuration: const Duration(milliseconds: 500),
                              imageUrl: currentUserPhoto,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: CachedNetworkImage(
                            fadeInDuration: const Duration(milliseconds: 500),
                            fadeOutDuration: const Duration(milliseconds: 500),
                            imageUrl: valueOrDefault<String>(
                              _model.uploadedFileUrl,
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/workout-web-app-manager-m1j9am/assets/v2bacnnrcrpc/addAvatarImage@2x.png',
                            ),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
          child: AuthUserStreamWidget(
            builder: (context) => TextFormField(
              controller: _model.yourNameController,
              focusNode: _model.yourNameFocusNode,
              textCapitalization: TextCapitalization.words,
              obscureText: false,
              decoration: InputDecoration(
                labelText: FFLocalizations.of(context).getText(
                  'pq5lnnya' /* Your Name */,
                ),
                labelStyle: FlutterFlowTheme.of(context).labelMedium,
                hintStyle: FlutterFlowTheme.of(context).labelMedium,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium,
              cursorColor: FlutterFlowTheme.of(context).primary,
              validator:
                  _model.yourNameControllerValidator.asValidator(context),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 12.0),
          child: AuthUserStreamWidget(
            builder: (context) => FlutterFlowDropDown<String>(
              controller: _model.stateValueController ??=
                  FormFieldController<String>(
                _model.stateValue ??=
                    valueOrDefault(currentUserDocument?.location, ''),
              ),
              options: [
                FFLocalizations.of(context).getText(
                  'ehmoq1hk' /* Abia */,
                ),
                FFLocalizations.of(context).getText(
                  'zc5uhvjm' /* Adamawa */,
                ),
                FFLocalizations.of(context).getText(
                  'kkqefmz5' /* Akwa Ibom */,
                ),
                FFLocalizations.of(context).getText(
                  'xc2d67ih' /* Anambra */,
                ),
                FFLocalizations.of(context).getText(
                  '6c5kvui9' /* Bauchi */,
                ),
                FFLocalizations.of(context).getText(
                  'z3mzn6jx' /* Bayelsa */,
                ),
                FFLocalizations.of(context).getText(
                  'pxrpbk8g' /* Benue */,
                ),
                FFLocalizations.of(context).getText(
                  '0tns3tlo' /* Borno */,
                ),
                FFLocalizations.of(context).getText(
                  'vav4xu9s' /* Cross River */,
                ),
                FFLocalizations.of(context).getText(
                  'vqhw11ys' /* Delta */,
                ),
                FFLocalizations.of(context).getText(
                  'wlse34mt' /* Ebonyi */,
                ),
                FFLocalizations.of(context).getText(
                  'sopbqnqb' /* Edo */,
                ),
                FFLocalizations.of(context).getText(
                  'dkus1ewu' /* Ekiti */,
                ),
                FFLocalizations.of(context).getText(
                  'i4vhkjzk' /* Enugu */,
                ),
                FFLocalizations.of(context).getText(
                  'zogrvszb' /* Gombe */,
                ),
                FFLocalizations.of(context).getText(
                  'g0p8sa3a' /* Imo */,
                ),
                FFLocalizations.of(context).getText(
                  'q01y81ot' /* Jigawa */,
                ),
                FFLocalizations.of(context).getText(
                  '18y30fpp' /* Kaduna */,
                ),
                FFLocalizations.of(context).getText(
                  '7inetmni' /* Kano */,
                ),
                FFLocalizations.of(context).getText(
                  '6mbs4wie' /* Katsina */,
                ),
                FFLocalizations.of(context).getText(
                  'i26ks34u' /* Kebbi */,
                ),
                FFLocalizations.of(context).getText(
                  'ln6macg3' /* Kogi */,
                ),
                FFLocalizations.of(context).getText(
                  'ylzrmvol' /* Kwara */,
                ),
                FFLocalizations.of(context).getText(
                  'mxu40o1r' /* Lagos */,
                ),
                FFLocalizations.of(context).getText(
                  'o6rv4kdj' /* Nasarawa */,
                ),
                FFLocalizations.of(context).getText(
                  'rwq5q7xu' /* Niger */,
                ),
                FFLocalizations.of(context).getText(
                  'vkl069pl' /* Ogun */,
                ),
                FFLocalizations.of(context).getText(
                  'wdzk55x3' /* Ondo */,
                ),
                FFLocalizations.of(context).getText(
                  'omxyzp8b' /* Osun */,
                ),
                FFLocalizations.of(context).getText(
                  '0bjb84rr' /* Oyo */,
                ),
                FFLocalizations.of(context).getText(
                  'kkbtkfiv' /* Plateau */,
                ),
                FFLocalizations.of(context).getText(
                  'gqq1lwz9' /* Rivers */,
                ),
                FFLocalizations.of(context).getText(
                  'tqdhcpv4' /* Sokoto */,
                ),
                FFLocalizations.of(context).getText(
                  'oux99e9i' /* Taraba */,
                ),
                FFLocalizations.of(context).getText(
                  'l0bifuak' /* Yobe */,
                ),
                FFLocalizations.of(context).getText(
                  're5l6153' /* Zamfara */,
                ),
                FFLocalizations.of(context).getText(
                  '8tyj7w8i' /* FCT */,
                )
              ],
              onChanged: (val) => setState(() => _model.stateValue = val),
              width: double.infinity,
              height: 56.0,
              textStyle: FlutterFlowTheme.of(context).bodyMedium,
              hintText: FFLocalizations.of(context).getText(
                'rjmc4vdp' /* Select State */,
              ),
              icon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 15.0,
              ),
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              elevation: 2.0,
              borderColor: FlutterFlowTheme.of(context).alternate,
              borderWidth: 2.0,
              borderRadius: 8.0,
              margin: const EdgeInsetsDirectional.fromSTEB(20.0, 4.0, 12.0, 4.0),
              hidesUnderline: true,
              isSearchable: false,
              isMultiSelect: false,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 12.0),
          child: AuthUserStreamWidget(
            builder: (context) => TextFormField(
              controller: _model.myBioController,
              focusNode: _model.myBioFocusNode,
              textCapitalization: TextCapitalization.sentences,
              obscureText: false,
              decoration: InputDecoration(
                labelStyle: FlutterFlowTheme.of(context).labelMedium,
                hintText: FFLocalizations.of(context).getText(
                  '5zr499ki' /* Your bio */,
                ),
                hintStyle: FlutterFlowTheme.of(context).labelMedium,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).primary,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                contentPadding:
                    const EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 0.0, 24.0),
              ),
              style: FlutterFlowTheme.of(context).bodyMedium,
              textAlign: TextAlign.start,
              maxLines: 3,
              cursorColor: FlutterFlowTheme.of(context).primary,
              validator: _model.myBioControllerValidator.asValidator(context),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0.0, 0.05),
          child: FFButtonWidget(
            onPressed: () async {
              await currentUserReference!.update(createUsersRecordData(
                displayName: _model.yourNameController.text,
                photoUrl: _model.uploadedFileUrl != ''
                    ? _model.uploadedFileUrl
                    : currentUserPhoto,
                bio: _model.myBioController.text,
                location: _model.stateValue,
              ));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'You have updated your profile!',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleSmallFamily,
                          color: FlutterFlowTheme.of(context).info,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleSmallFamily),
                        ),
                  ),
                  duration: const Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).primary,
                ),
              );

              context.pushNamed('mainHomePage');
            },
            text: FFLocalizations.of(context).getText(
              's1crwzpe' /* Save Changes */,
            ),
            options: FFButtonOptions(
              height: 44.0,
              padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).titleSmall,
              elevation: 2.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(50.0),
              hoverColor: FlutterFlowTheme.of(context).accent1,
              hoverBorderSide: BorderSide(
                color: FlutterFlowTheme.of(context).primary,
                width: 1.0,
              ),
              hoverTextColor: FlutterFlowTheme.of(context).primary,
            ),
          ),
        ),
      ],
    );
  }
}
