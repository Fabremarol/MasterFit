import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : LoginWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: 'HomeRutinas',
          path: '/homeRutinas',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'HomeRutinas')
              : HomeRutinasWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'HomePage')
              : HomePageWidget(),
        ),
        FFRoute(
          name: 'Actividades',
          path: '/actividades',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Actividades')
              : ActividadesWidget(),
        ),
        FFRoute(
          name: 'Ejercicios',
          path: '/ejercicios',
          asyncParams: {
            'subRutinas': getDoc(['rutinas'], RutinasRecord.fromSnapshot),
          },
          builder: (context, params) => EjerciciosWidget(
            subRutinas: params.getParam('subRutinas', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'Registro',
          path: '/registro',
          builder: (context, params) => RegistroWidget(),
        ),
        FFRoute(
          name: 'CalendarioActividades',
          path: '/calendarioActividades',
          builder: (context, params) => CalendarioActividadesWidget(),
        ),
        FFRoute(
          name: 'HomeShop',
          path: '/homeShop',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'HomeShop')
              : HomeShopWidget(),
        ),
        FFRoute(
          name: 'Supplements',
          path: '/supplements',
          builder: (context, params) => SupplementsWidget(),
        ),
        FFRoute(
          name: 'RegistrarActividades',
          path: '/registrarActividades',
          builder: (context, params) => RegistrarActividadesWidget(),
        ),
        FFRoute(
          name: 'CancelarActividades',
          path: '/cancelarActividades',
          builder: (context, params) => CancelarActividadesWidget(),
        ),
        FFRoute(
          name: 'AdministrarActividades',
          path: '/administrarActividades',
          builder: (context, params) => AdministrarActividadesWidget(),
        ),
        FFRoute(
          name: 'HomeShopAdmin',
          path: '/homeShopAdmin',
          builder: (context, params) => HomeShopAdminWidget(),
        ),
        FFRoute(
          name: 'AddShoes',
          path: '/addShoes',
          builder: (context, params) => AddShoesWidget(),
        ),
        FFRoute(
          name: 'AdminHomeRutinas',
          path: '/adminHomeRutinas',
          builder: (context, params) => AdminHomeRutinasWidget(),
        ),
        FFRoute(
          name: 'CrearHomeRutina',
          path: '/crearHomeRutina',
          builder: (context, params) => CrearHomeRutinaWidget(),
        ),
        FFRoute(
          name: 'CrearEjercicio',
          path: '/crearEjercicio',
          asyncParams: {
            'subRutina': getDoc(['rutinas'], RutinasRecord.fromSnapshot),
          },
          builder: (context, params) => CrearEjercicioWidget(
            subRutina: params.getParam('subRutina', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'EditarZapato',
          path: '/editarZapato',
          asyncParams: {
            'pasarPrenda':
                getDoc(['tiendaRopa'], TiendaRopaRecord.fromSnapshot),
          },
          builder: (context, params) => EditarZapatoWidget(
            pasarPrenda: params.getParam('pasarPrenda', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'EditarSuplemento',
          path: '/editarSuplemento',
          asyncParams: {
            'pasarSuplemento': getDoc(
                ['tiendaSuplementos'], TiendaSuplementosRecord.fromSnapshot),
          },
          builder: (context, params) => EditarSuplementoWidget(
            pasarSuplemento:
                params.getParam('pasarSuplemento', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'AddSupplement',
          path: '/addSupplement',
          builder: (context, params) => AddSupplementWidget(),
        ),
        FFRoute(
          name: 'HomeNutricionista',
          path: '/homeNutricionista',
          builder: (context, params) => HomeNutricionistaWidget(),
        ),
        FFRoute(
          name: 'InfoNutricionista',
          path: '/infoNutricionista',
          builder: (context, params) => InfoNutricionistaWidget(),
        ),
        FFRoute(
          name: 'Medidas',
          path: '/medidas',
          builder: (context, params) => MedidasWidget(),
        ),
        FFRoute(
          name: 'borradorhome',
          path: '/borradorhome',
          builder: (context, params) => BorradorhomeWidget(),
        ),
        FFRoute(
          name: 'HomeEntrenador',
          path: '/homeEntrenador',
          builder: (context, params) => HomeEntrenadorWidget(
            entrenador: params.getParam('entrenador',
                ParamType.DocumentReference, false, ['entrenadores']),
          ),
        ),
        FFRoute(
          name: 'perfilEntrenador',
          path: '/perfilEntrenador',
          builder: (context, params) => PerfilEntrenadorWidget(
            entrenadores: params.getParam('entrenadores',
                ParamType.DocumentReference, false, ['entrenadores']),
          ),
        ),
        FFRoute(
          name: 'PerfilUsuario',
          path: '/perfilUsuario',
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'PerfilUsuario')
              : PerfilUsuarioWidget(),
        ),
        FFRoute(
          name: 'EditarMedidas',
          path: '/editarMedidas',
          asyncParams: {
            'pasarMedidas': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => EditarMedidasWidget(
            pasarMedidas: params.getParam('pasarMedidas', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'bucarMedidas',
          path: '/bucarMedidas',
          builder: (context, params) => BucarMedidasWidget(),
        ),
        FFRoute(
          name: 'AdminEjercicios',
          path: '/adminEjercicios',
          asyncParams: {
            'subRutinas2': getDoc(['rutinas'], RutinasRecord.fromSnapshot),
          },
          builder: (context, params) => AdminEjerciciosWidget(
            subRutinas2: params.getParam('subRutinas2', ParamType.Document),
          ),
        ),
        FFRoute(
          name: 'CrearEntrenador',
          path: '/crearEntrenador',
          builder: (context, params) => CrearEntrenadorWidget(),
        ),
        FFRoute(
          name: 'HomeAdminEntrenador',
          path: '/homeAdminEntrenador',
          builder: (context, params) => HomeAdminEntrenadorWidget(),
        ),
        FFRoute(
          name: 'EditarEntrenadores',
          path: '/editarEntrenadores',
          builder: (context, params) => EditarEntrenadoresWidget(
            entrenador: params.getParam('entrenador',
                ParamType.DocumentReference, false, ['entrenadores']),
          ),
        ),
        FFRoute(
          name: 'AdminPerfil',
          path: '/adminPerfil',
          builder: (context, params) => AdminPerfilWidget(),
        ),
        FFRoute(
          name: 'AdminSupplements',
          path: '/adminSupplements',
          builder: (context, params) => AdminSupplementsWidget(),
        ),
        FFRoute(
          name: 'AdminZapatos',
          path: '/adminZapatos',
          builder: (context, params) => AdminZapatosWidget(),
        ),
        FFRoute(
          name: 'AdminUsuarios',
          path: '/adminUsuarios',
          builder: (context, params) => AdminUsuariosWidget(),
        ),
        FFRoute(
          name: 'Shoes',
          path: '/shoes',
          builder: (context, params) => ShoesWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    List<String>? collectionNamePath,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList,
        collectionNamePath: collectionNamePath);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/Diseo_sin_ttulo_(1).png',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouter.of(context).location;
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}
