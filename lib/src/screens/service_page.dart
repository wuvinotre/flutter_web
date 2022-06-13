import 'package:fluent_ui/fluent_ui.dart';

class Service extends StatefulWidget {
  const Service({Key? key}) : super(key: key);

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  final List<String> services = [
    'Marcenaria.',
    'Jardinagem.',
    'Hidráulica.',
    'Mecânica.',
    'Elétrica.',
    'Serviços Gerais e muito mais.',
  ];
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
        header: const PageHeader(
            title: Text(
          "Serviços em alta na plataforma",
          style: TextStyle(fontSize: 40),
        )),
        children: [
          Container(
              margin: const EdgeInsets.all(25),
              child: Column(
                  children: services.map((e) {
                return ListTile(
                    title: Row(children: [
                  const Icon(
                    FluentIcons.increase_indent_arrow,
                    color: Colors.white,
                  ),
                  Text(e, style: const TextStyle(fontSize: 20))
                ]));
              }).toList()))
        ]);
  }
}
