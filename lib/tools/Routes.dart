import 'package:flutter/material.dart';
import 'package:patreonclone/widgets/Account.dart';
import 'package:patreonclone/widgets/Configuration.dart';
import 'package:patreonclone/widgets/Home.dart';
import 'package:patreonclone/widgets/Messages.dart';
import 'package:patreonclone/widgets/Starting.dart';
import 'package:patreonclone/widgets/Suscription.dart';

final routes = [
  Route(
      route: "/configuration",
      builder: (context) => const Configuration(),
      title: "Preferences",
      icon: (context) => const Icon(Icons.settings)),
  Route(
      route: "/account",
      builder: (context) => const Account(),
      title: "Account",
      icon: (context) => const Icon(Icons.account_circle)),
  Route(
      route: '/starting',
      title: 'Starting',
      icon: (context) => const Icon(Icons.app_registration_rounded),
      builder: (context) => const Starting(
            key: null,
          )),
  Route(
      route: '/suscriptions',
      title: 'Suscription',
      icon: (context) => const Icon(Icons.login),
      builder: (context) => const Suscription()),
  Route(
      route: '/messages',
      title: 'Messages',
      icon: (context) => const Icon(Icons.shopping_bag),
      builder: (context) => const Messages(
            key: null,
          )),
  Route(
      route: '/home',
      title: 'Home',
      icon: (context) => const Icon(Icons.shopping_bag),
      builder: (context) => const Home(
            key: null,
          )),
];

class Route {
  final String route;
  final String title;
  final WidgetBuilder icon;
  final WidgetBuilder builder;
  const Route(
      {required this.route,
      required this.builder,
      required this.title,
      required this.icon});
}
