import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:mykepolah/roots/forum.dart';
import 'package:mykepolah/roots/home.dart';
import 'package:mykepolah/roots/profile.dart';
import 'package:mykepolah/roots/reported.dart';
import 'package:mykepolah/routes/ScafoldWithBottomNavBar.dart';
import 'package:mykepolah/tools/SizeConfig.dart';

void main() {
  runApp(MyApp()
  );
}


class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _shellNavigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final tabs = [
      ScaffoldWithNavBarTabItem(
        initialLocation: '/home',
        icon: Container(padding: EdgeInsets.only(right: SizeConfig.safeBlockVertical! * 0),child: Icon(Icons.home_outlined)),
        label: 'Home',
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: '/forum',
        icon: Container(padding: EdgeInsets.only(right: SizeConfig.safeBlockVertical! * 5),child: Icon(Icons.calendar_month_outlined)),
        label: 'Forum',
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: '/reported',
        icon: Container(padding: EdgeInsets.only(left: SizeConfig.safeBlockVertical! * 5),child: Icon(Icons.sticky_note_2_outlined)),
        label: 'Reported',
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: '/profile',
        icon: Container(padding: EdgeInsets.symmetric(horizontal: 10),child: Icon(Icons.person_2_outlined)),
        label: 'Profile',
      ),
      
    ];
    final goRouter = GoRouter(
      initialLocation: '/home',
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: true,
      routes: [
        ShellRoute(
          // navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return ScaffoldWithBottomNavBar(tabs: tabs, child: child);
          },
          routes: [
            //Home page
            GoRoute(
              path: '/home',
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const Home(),
                ),
            ),
            //Sessions page
            GoRoute(
              path: '/forum',
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: Forum(),
                ),
            ),
            //Resources page
            GoRoute(
              path: '/reported',
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const Reported(),
                ),
            ),
            //Profile page
            GoRoute(
              path: '/profile',
              pageBuilder: (context, state) => NoTransitionPage(
                key: state.pageKey,
                child: const Profile(),
                ),
            ),
          ]
        )
      ]
    );

    return MaterialApp.router(
       routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}



class ScaffoldWithNavBarTabItem extends BottomNavigationBarItem {
  /// Constructs an [ScaffoldWithNavBarTabItem].
  const ScaffoldWithNavBarTabItem(
      {required this.initialLocation, required Widget icon, String? label})
      : super(icon: icon, label: label);

  /// The initial location/path
  final String initialLocation;
}
