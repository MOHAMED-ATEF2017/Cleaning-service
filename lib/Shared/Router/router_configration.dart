import 'package:clean_sevice/Screens/AuthScreens/LoginScreen/login_screen.dart';
import 'package:clean_sevice/Screens/AuthScreens/SignUpScreen/sign_up_screen.dart';
import 'package:clean_sevice/Screens/MainTapScreen/main_tap_screen.dart';
import 'package:clean_sevice/Screens/OrderScreen/order_screen.dart';
import 'package:clean_sevice/Screens/PaymentMethodsScreen/payment_methods_screen.dart';
import 'package:clean_sevice/Screens/SplashScreen/splash_screen.dart';
import 'package:clean_sevice/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Screens/OrderScreen/complete_order_screen.dart';

class AppRoutersConfigration {
  static GoRouter router = GoRouter(
    initialLocation: SplashScreen.splashScreenRoute,
    routes: <RouteBase>[
      //*********************** splash ******************* */
      GoRoute(
        path: SplashScreen.splashScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      //*********************** login ******************* */
      GoRoute(
        path: LoginScreen.loginScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      //*********************** signup ******************* */
      GoRoute(
        path: SignUpScreen.signUpScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpScreen();
        },
      ),
      //*********************** main tap ******************* */
      GoRoute(
        path: MainTapScreen.mainTapScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return MainTapScreen(
            initialIndex:
                int.tryParse(state.uri.queryParameters['index'] ?? ''),
          );
        },
      ),
      //***********************  paymnet methods screen ******************* */
      GoRoute(
        path: PaymnetMethodsScreen.paymnetMethodsScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const PaymnetMethodsScreen();
        },
      ),
      //***********************  order screen ******************* */
      GoRoute(
        path: OrderScreen.orderScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return OrderScreen(
            assetGenImage:
                AssetGenImage(state.uri.queryParameters['image'] ?? ''),
            title: state.uri.queryParameters['title'] ?? '',
          );
        },
      ),
      //***********************  complete order screen ******************* */
      GoRoute(
        path: CompleteOrderScreen.completeOrderScreenRoute,
        builder: (BuildContext context, GoRouterState state) {
          return const CompleteOrderScreen();
        },
      ),
    ],
  );
}
