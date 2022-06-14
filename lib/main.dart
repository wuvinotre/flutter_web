import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_web/navigation/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          accentColor: Colors.teal,
          iconTheme: const IconThemeData(size: 24)),
      home: const Routes(),
    );
  }
}
