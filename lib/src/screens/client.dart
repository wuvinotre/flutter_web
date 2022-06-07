import 'package:fluent_ui/fluent_ui.dart';

class Client extends StatelessWidget {
  const Client({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
        header: PageHeader(
            title: Text(
          "Sobre",
          style: TextStyle(fontSize: 40),
        )),
        content: SingleChildScrollView());
  }
}
