import 'package:fluent_ui/fluent_ui.dart';

class Client extends StatelessWidget {
  const Client({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
      header: const PageHeader(
          title: Text(
        "Clientes",
        style: TextStyle(fontSize: 40),
      )),
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.80,
              width: MediaQuery.of(context).size.width * 0.25,
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Serviço $index'),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 50, top: 25, right: 50, bottom: 25),
              child: Column(
                children: const [
                  Text(
                    'Nome do Usuário',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "E assim vamos indo as qualificações",
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Experiências",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
