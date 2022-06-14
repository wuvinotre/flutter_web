import 'package:email_validator/email_validator.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_web/src/screens/register_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
        header: const PageHeader(
            title: Text(
          "Login",
          style: TextStyle(fontSize: 40),
        )),
        children: [
          Container(
            margin: const EdgeInsets.all(100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                TextBox(
                  header: 'Senha',
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
                        Navigator.push(
                            context,
                            FluentPageRoute(
                                builder: ((context) => const Register())));
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      child: const Text(
                        'Esqueceu a senha?',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                    FilledButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              FluentPageRoute(
                                  builder: ((context) => const Register())));
                        },
                        child: const Text(
                          'Cadastra-te aqui!',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ]);
  }
}
