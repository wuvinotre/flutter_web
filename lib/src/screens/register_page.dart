import 'package:email_validator/email_validator.dart';
import 'package:fluent_ui/fluent_ui.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _showPassword = false;
  bool _checked = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color(0xFF242424)),
      child: ScaffoldPage.scrollable(
          header: const PageHeader(
              title: Text(
            "Registra-te",
            style: TextStyle(fontSize: 40),
          )),
          children: [
            Container(
              margin: const EdgeInsets.all(100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nome',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextFormBox(
                    placeholder: 'exemplo: Vinicius Turco',
                    autovalidateMode: AutovalidateMode.always,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextFormBox(
                    placeholder: 'exemplo@gmail.com',
                    autovalidateMode: AutovalidateMode.always,
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Coloque seu email.';
                      }
                      if (!EmailValidator.validate(text)) {
                        return 'Email não válido.';
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    prefix: const Padding(
                      padding: EdgeInsetsDirectional.only(start: 8.0),
                      child: Icon(
                        FluentIcons.edit_mail,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Senha',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextBox(
                    placeholder: '*******',
                    obscureText: !_showPassword,
                    maxLines: 1,
                    suffixMode: OverlayVisibilityMode.always,
                    suffix: IconButton(
                      icon: Icon(
                        !_showPassword ? FluentIcons.lock : FluentIcons.unlock,
                      ),
                      onPressed: () =>
                          setState(() => _showPassword = !_showPassword),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Confirmar Senha',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextBox(
                    placeholder: '*******',
                    obscureText: !_showPassword,
                    maxLines: 1,
                    suffixMode: OverlayVisibilityMode.always,
                    suffix: IconButton(
                      icon: Icon(
                        !_showPassword ? FluentIcons.lock : FluentIcons.unlock,
                      ),
                      onPressed: () =>
                          setState(() => _showPassword = !_showPassword),
                    ),
                    outsideSuffix: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Button(
                        child: const Text(
                          'Entrar',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Sexo:',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(width: 50),
                      Checkbox(
                        content: const Text(
                          'Masculino',
                          style: TextStyle(fontSize: 16),
                        ),
                        checked: _checked,
                        onChanged: (value) => setState(() => _checked = value!),
                      ),
                      const SizedBox(width: 20),
                      Checkbox(
                        content: const Text(
                          'Feminino',
                          style: TextStyle(fontSize: 16),
                        ),
                        checked: _checked,
                        onChanged: (value) => setState(() => _checked = value!),
                      )
                    ],
                  )
                ],
              ),
            ),
          ]),
    );
  }
}
