import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_web/src/components/toogle_switch.dart';
import 'package:flutter_web/src/screens/client.dart';
import 'package:flutter_web/src/screens/home_page.dart';

class Routes extends StatefulWidget {
  const Routes({Key? key}) : super(key: key);
  @override
  State<Routes> createState() => _RoutesState();
}

class _RoutesState extends State<Routes> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return NavigationView(
        content: NavigationBody(index: index, children: const [
          Home(),
          Client(),
        ]),
        appBar: const NavigationAppBar(),
        pane: NavigationPane(
            selected: index,
            onChanged: (newIndex) {
              setState(() {
                index = newIndex;
              });
            },
            displayMode: PaneDisplayMode.compact,
            header: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 15),
                child: const Toggle()),
            items: [
              PaneItem(
                  icon: const Icon(FluentIcons.home),
                  title: const Text("Home")),
              PaneItem(
                  icon: const Icon(FluentIcons.location_circle),
                  title: const Text("Client"))
            ]));
  }
}
