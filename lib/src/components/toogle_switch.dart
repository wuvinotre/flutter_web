import 'package:fluent_ui/fluent_ui.dart';

class Toggle extends StatefulWidget {
  const Toggle({Key? key}) : super(key: key);

  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
        checked: _checked,
        onChanged: (v) => setState(() => _checked = v),
        content: Text(_checked ? 'Light' : 'Dark'));
  }
}
