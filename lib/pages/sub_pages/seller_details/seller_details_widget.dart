import '/components/gradient_button/gradient_button_widget.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'seller_details_model.dart';
export 'seller_details_model.dart';

class SellerDetailsWidget extends StatefulWidget {
  const SellerDetailsWidget({super.key});

  @override
  _SellerDetailsWidgetState createState() => _SellerDetailsWidgetState();
}

class _SellerDetailsWidgetState extends State<SellerDetailsWidget>
    with TickerProviderStateMixin {
  late SellerDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(60.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 175.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 175.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 175.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 20.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 50.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SellerDetailsModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.topNavModel,
                updateCallback: () => setState(() {}),
                child: const TopNavWidget(),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: double.infinity,
                          constraints: const BoxConstraints(
                            maxWidth: 1170.0,
                          ),
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 16.0, 0.0, 12.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.gradientButtonModel,
                                          updateCallback: () => setState(() {}),
                                          child: GradientButtonWidget(
                                            action: () async {
                                              context.pushNamed(
                                                'mainHomePage',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                    duration: Duration(
                                                        milliseconds: 0),
                                                  ),
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 4.0, 0.0),
                                          child: Icon(
                                            Icons.chevron_right_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 16.0,
                                          ),
                                        ),
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.safePop();
                                          },
                                          child: Container(
                                            height: 32.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'xp3k9uo6' /* Product Details */,
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 4.0, 0.0),
                                          child: Icon(
                                            Icons.chevron_right_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 16.0,
                                          ),
                                        ),
                                        Container(
                                          height: 32.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .accent1,
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              width: 2.0,
                                            ),
                                          ),
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'recmxv1z' /* Seller Details */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'rowOnPageLoadAnimation1']!),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 8.0, 32.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 800.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x33000000),
                                            offset: Offset(0.0, 2.0),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      8.0, 8.0, 12.0, 8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 200.0,
                                                    height: 160.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(2.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        child: Image.network(
                                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmdmz2-Fj6f7Ph0roNmVyy0jx_mav6xUp8fQ&usqp=CAU',
                                                          width: 210.0,
                                                          height: 200.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                  ))
                                                    Expanded(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFLocalizations.of(
                                                                      context)
                                                                  .getText(
                                                                'nm85o1zu' /* Randy Alcorn */,
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineLarge,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        8.0,
                                                                        12.0,
                                                                        12.0),
                                                            child: RatingBar
                                                                .builder(
                                                              onRatingUpdate: (newValue) =>
                                                                  setState(() =>
                                                                      _model.ratingBarValue1 =
                                                                          newValue),
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      Icon(
                                                                Icons
                                                                    .star_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondary,
                                                              ),
                                                              direction: Axis
                                                                  .horizontal,
                                                              initialRating:
                                                                  _model.ratingBarValue1 ??=
                                                                      4.0,
                                                              unratedColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent2,
                                                              itemCount: 5,
                                                              itemSize: 24.0,
                                                              glowColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'igyjsan9' /* 240 Sales */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodySmallFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        fontSize:
                                                                            12.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            2.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'v9iy1tiz' /* San Antonio, Tx. */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                ],
                                              ).animateOnPageLoad(animationsMap[
                                                  'rowOnPageLoadAnimation2']!),
                                            ),
                                            if (responsiveVisibility(
                                              context: context,
                                              tablet: false,
                                              tabletLandscape: false,
                                              desktop: false,
                                            ))
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'wnemwnep' /* Tomisin */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 8.0,
                                                                12.0, 12.0),
                                                    child: RatingBar.builder(
                                                      onRatingUpdate: (newValue) =>
                                                          setState(() => _model
                                                                  .ratingBarValue2 =
                                                              newValue),
                                                      itemBuilder:
                                                          (context, index) =>
                                                              Icon(
                                                        Icons.star_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                      direction:
                                                          Axis.horizontal,
                                                      initialRating: _model
                                                              .ratingBarValue2 ??=
                                                          4.0,
                                                      unratedColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent2,
                                                      itemCount: 5,
                                                      itemSize: 24.0,
                                                      glowColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    4.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            's68lfylu' /* 240 Sales */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodySmall
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmallFamily,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 12.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodySmallFamily),
                                                              ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    4.0,
                                                                    2.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xvgn05g3' /* Makoko, Lagos */,
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 0.0),
                                                child: Column(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          const Alignment(-1.0, 0),
                                                      child:
                                                          FlutterFlowButtonTabBar(
                                                        useToggleButtonStyle:
                                                            false,
                                                        isScrollable: true,
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge,
                                                        unselectedLabelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelMedium,
                                                        labelColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        unselectedLabelColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        backgroundColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderWidth: 2.0,
                                                        borderRadius: 12.0,
                                                        elevation: 0.0,
                                                        labelPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    0.0,
                                                                    20.0,
                                                                    0.0),
                                                        buttonMargin:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    16.0,
                                                                    0.0),
                                                        tabs: [
                                                          Tab(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'sioyk981' /* Purchased Items */,
                                                            ),
                                                          ),
                                                          Tab(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'nzb9quxn' /* Sold Items */,
                                                            ),
                                                          ),
                                                          Tab(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              '3wqz9aas' /* Reviews */,
                                                            ),
                                                          ),
                                                        ],
                                                        controller: _model
                                                            .tabBarController,
                                                        onTap: (i) async {
                                                          [
                                                            () async {},
                                                            () async {},
                                                            () async {}
                                                          ][i]();
                                                        },
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: TabBarView(
                                                        controller: _model
                                                            .tabBarController,
                                                        children: [
                                                          ListView(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            12.0,
                                                                            4.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                          child:
                                                                              Image.network(
                                                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjQJ4UZsPs8Xk1AMWQvddnq_XZz7b-8--LeA&usqp=CAU',
                                                                            width:
                                                                                120.0,
                                                                            height:
                                                                                120.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '1fgo9413' /* Fresh Cat Fish */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleLarge,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'gwh84tik' /* Ordered on Dec 15, 2023 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '40j4sjcj' /* #2500.20 */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.end,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).headlineSmall,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation1']!),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            12.0,
                                                                            4.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                          child:
                                                                              Image.network(
                                                                            'data:image/jpeg;base64,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',
                                                                            width:
                                                                                120.0,
                                                                            height:
                                                                                120.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'jd38hyuu' /* Fresh mackerel fish */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleLarge,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'g2gazda8' /* Ordered on Dec 15, 2023 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'o8ty4e6u' /* #1200.00 */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.end,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).headlineSmall,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation2']!),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            12.0,
                                                                            4.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                          child:
                                                                              Image.network(
                                                                            'data:image/jpeg;base64,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',
                                                                            width:
                                                                                120.0,
                                                                            height:
                                                                                120.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'pcsyvjid' /* Fresh tilapia fish */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleLarge,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'qop0utq4' /* Ordered on Dec 15, 2023 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '0f9ghbdy' /* #950.00 */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.end,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).headlineSmall,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation3']!),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            12.0,
                                                                            4.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                          child:
                                                                              Image.network(
                                                                            'data:image/jpeg;base64,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',
                                                                            width:
                                                                                120.0,
                                                                            height:
                                                                                120.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '9k9o1usz' /* Fresh jumbo prawns */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleLarge,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'zwsyb75n' /* Ordered on Dec 15, 2023 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            '7h13vm1y' /* #3200.00 */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.end,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).headlineSmall,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation4']!),
                                                              ),
                                                            ],
                                                          ),
                                                          ListView(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            12.0,
                                                                            4.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                          child:
                                                                              Image.network(
                                                                            'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/0a5ea9d8-2f0d-40f1-893d-3390def8a1ec/free-metcon-5-womens-training-shoes-z3mwK7.png',
                                                                            width:
                                                                                120.0,
                                                                            height:
                                                                                120.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'tms7z9l0' /* Vitsoe 1982 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleLarge,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'zukvebil' /* Ordered on Feb 15, 2022 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'ny33f3sg' /* $126.20 */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.end,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).headlineSmall,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation5']!),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            12.0,
                                                                            4.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                          child:
                                                                              Image.network(
                                                                            'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/0a5ea9d8-2f0d-40f1-893d-3390def8a1ec/free-metcon-5-womens-training-shoes-z3mwK7.png',
                                                                            width:
                                                                                120.0,
                                                                            height:
                                                                                120.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '9znic1t6' /* Vitsoe 1982 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleLarge,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'nmfxcvuy' /* Ordered on Feb 15, 2022 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'mtekn84b' /* $126.20 */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.end,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).headlineSmall,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation6']!),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            12.0,
                                                                            4.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                          child:
                                                                              Image.network(
                                                                            'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/0a5ea9d8-2f0d-40f1-893d-3390def8a1ec/free-metcon-5-womens-training-shoes-z3mwK7.png',
                                                                            width:
                                                                                120.0,
                                                                            height:
                                                                                120.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '6z2f0xtb' /* Vitsoe 1982 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleLarge,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '23xtih5e' /* Ordered on Feb 15, 2022 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'qu1tcewe' /* $126.20 */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.end,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).headlineSmall,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation7']!),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            12.0,
                                                                            4.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            2.0,
                                                                        color: Color(
                                                                            0x520E151B),
                                                                        offset: Offset(
                                                                            0.0,
                                                                            1.0),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                          child:
                                                                              Image.network(
                                                                            'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/0a5ea9d8-2f0d-40f1-893d-3390def8a1ec/free-metcon-5-womens-training-shoes-z3mwK7.png',
                                                                            width:
                                                                                120.0,
                                                                            height:
                                                                                120.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                16.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'updre08g' /* Vitsoe 1982 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleLarge,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      '2u4kw89o' /* Ordered on Feb 15, 2022 */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'i3rbdgg3' /* $126.20 */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.end,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).headlineSmall,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                        animationsMap[
                                                                            'containerOnPageLoadAnimation8']!),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        12.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: ListView(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          12.0),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                8.0,
                                                                                12.0,
                                                                                8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.all(2.0),
                                                                                      child: Container(
                                                                                        width: 44.0,
                                                                                        height: 44.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).accent1,
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          shape: BoxShape.rectangle,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsets.all(2.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                            child: Image.network(
                                                                                              'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                                                              width: 70.0,
                                                                                              height: 70.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'rit8s57n' /* UserName */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyLarge,
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                '0s2monir' /* user@domainname.com */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelMedium,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                                                  children: [
                                                                                    Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'pu1my2ed' /* Overall */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).labelSmall,
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'hk7nuz3d' /* 5 */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).headlineMedium,
                                                                                          ),
                                                                                        ),
                                                                                        const Icon(
                                                                                          Icons.star_rounded,
                                                                                          color: Color(0xFF4B39EF),
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                12.0,
                                                                                8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'd63wz320' /* "These sports shoes are incred... */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          12.0),
                                                                  child:
                                                                      Container(
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .alternate,
                                                                        width:
                                                                            2.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              4.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                8.0,
                                                                                12.0,
                                                                                8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsets.all(2.0),
                                                                                      child: Container(
                                                                                        width: 44.0,
                                                                                        height: 44.0,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).accent1,
                                                                                          borderRadius: BorderRadius.circular(10.0),
                                                                                          shape: BoxShape.rectangle,
                                                                                          border: Border.all(
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                          ),
                                                                                        ),
                                                                                        child: Padding(
                                                                                          padding: const EdgeInsets.all(2.0),
                                                                                          child: ClipRRect(
                                                                                            borderRadius: BorderRadius.circular(10.0),
                                                                                            child: Image.network(
                                                                                              'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                                                              width: 70.0,
                                                                                              height: 70.0,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                                                                                      child: Column(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                                        children: [
                                                                                          Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              'ln21h0c0' /* UserName */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyLarge,
                                                                                          ),
                                                                                          Padding(
                                                                                            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                                                                                            child: Text(
                                                                                              FFLocalizations.of(context).getText(
                                                                                                'sjg6yamn' /* user@domainname.com */,
                                                                                              ),
                                                                                              style: FlutterFlowTheme.of(context).labelMedium,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                                Column(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                                                  children: [
                                                                                    Text(
                                                                                      FFLocalizations.of(context).getText(
                                                                                        'q23nrsx0' /* Overall */,
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).labelSmall,
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                          child: Text(
                                                                                            FFLocalizations.of(context).getText(
                                                                                              '8rq6jved' /* 5 */,
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).headlineMedium,
                                                                                          ),
                                                                                        ),
                                                                                        const Icon(
                                                                                          Icons.star_rounded,
                                                                                          color: Color(0xFF4B39EF),
                                                                                          size: 20.0,
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                12.0,
                                                                                8.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Expanded(
                                                                                  child: AutoSizeText(
                                                                                    FFLocalizations.of(context).getText(
                                                                                      'mapdswqy' /* "These sports shoes are incred... */,
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).labelMedium,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
