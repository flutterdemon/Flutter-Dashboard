import 'package:flutter/material.dart';
import 'package:webapp/helpers/responsiveness.dart';
import 'package:webapp/widgets/large_screen.dart';
import 'package:webapp/widgets/small_screen.dart';
import 'package:webapp/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  SiteLayout({Key key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(),
      body: const Responsiveness(
          largeScreen: LargeScreen(), smallScreen: SmallScreen()),
    );
  }
}
