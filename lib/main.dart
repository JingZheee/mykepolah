import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mykepolah/pages/forums/community.dart';

import 'package:iconsax/iconsax.dart';
import 'package:mykepolah/pages/forums/update.dart';
import 'package:mykepolah/roots/forum.dart';
import 'package:mykepolah/roots/home.dart';
import 'package:mykepolah/roots/profile.dart';
import 'package:mykepolah/roots/reported.dart';
import 'package:mykepolah/routes/ScafoldWithBottomNavBar.dart';
import 'package:mykepolah/tools/SizeConfig.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp()
  ));
}


class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _rootNavigatorKey = GlobalKey<NavigatorState>();
  final _shellNavigatorKey = GlobalKey<NavigatorState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final tabs = [
      ScaffoldWithNavBarTabItem(
        initialLocation: '/home',
        icon: Container(child: Icon(Icons.home_outlined)),
        label: 'Home',
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: '/forum',
        icon: Container(padding: EdgeInsets.only(right: SizeConfig.safeBlockHorizontal! * 13),child: Icon(Iconsax.people)),
        label: 'Forum',
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: '/reported',
        icon: Container(padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal! * 13),child: Icon(Icons.hourglass_top)),
        label: 'Reported',
      ),
      ScaffoldWithNavBarTabItem(
        initialLocation: '/profile',
        icon: Container(child: Icon(Icons.person_2_outlined)),
        label: 'Profile',
      ),
      
    ];
    final GoRouter goRouter = GoRouter(
      initialLocation: '/forum',
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
                routes: [
                  GoRoute(
                    path: 'community',
                    builder: (context, state) => const Community(),
                    routes: [
                      GoRoute(
                        path: 'update',
                        builder: (context, state) => const Update(),
                      )
                    ]
                )
              ]
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
