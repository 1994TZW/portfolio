import 'package:flutter/material.dart';

import 'mobile_page.dart';
import 'web_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        //for web view
        if (constraints.maxWidth >= 1000) {
          return const WebPage();
        } else {
          // for mobile view
          return const MobilePage();
        }
      },
    );
  }
}
