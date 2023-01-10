import 'package:flutter/material.dart';
import 'package:webapp/helpers/responsiveness.dart';
import 'package:webapp/widgets/large_screen.dart';
import 'package:webapp/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Dashboard"),
      ),
      body: const Responsiveness(
          largeScreen: LargeScreen(), smallScreen: SmallScreen()),
    );
  }
}
