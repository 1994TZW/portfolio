import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/experience_model.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Map<String, WidgetBuilder> route(BuildContext context) {
    final routes = <String, WidgetBuilder>{
      '/': (_) => const HomePage(),
    };
    return routes;
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: ExperienceModel()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Profolio',
          theme: ThemeData(
            brightness: Brightness.dark,
          ),
          routes: route(context)),
    );
  }
}
