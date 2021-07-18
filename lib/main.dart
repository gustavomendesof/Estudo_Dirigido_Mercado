import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mercado do Zé'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Image.asset('imagens/compras.jpg'),
        Center(
          child: ElevatedButton(
            child: Text('SETORES'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
        ),
      ]),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Setores do Mercado"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: ListView(children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('imagens/acougue.png'),
            ),
            title: Text('Açougue'),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('imagens/fruta.png'),
            ),
            title: Text('Fruteira'),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('imagens/verdura.png'),
            ),
            title: Text('Verduras'),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          ListTile(
            leading: Image(
              image: AssetImage('imagens/padaria.png'),
            ),
            title: Text('Padaria'),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          RaisedButton(
            child: Text(
              "Promoções",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            color: Colors.orangeAccent,
            onPressed: () {},
          ),
          Image(
            image: AssetImage('imagens/banner.png'),
          ),
          Padding(
            padding: EdgeInsets.all(5),
          ),
          Center(
            child: ElevatedButton(
              child: Text('PROMOÇÕES'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdRoute()),
                );
              },
            ),
          ),
        ]));
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pesquisa'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextFormField(
              cursorColor: Theme.of(context).cursorColor,
              maxLength: 20,
              decoration: InputDecoration(
                labelText: 'Nome do produto',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orangeAccent),
                ),
              ),
            ),
            TextFormField(
              cursorColor: Theme.of(context).cursorColor,
              maxLength: 20,
              decoration: InputDecoration(
                labelText: 'Setor do Mercado',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orangeAccent),
                ),
              ),
            ),
            TextFormField(
              cursorColor: Theme.of(context).cursorColor,
              maxLength: 20,
              decoration: InputDecoration(
                labelText: 'Codigo do Produto',
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.orangeAccent),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            ElevatedButton(
              onPressed: () {
                // Respond to button press
              },
              child: Text('Pesquisar'),
            ),
            Padding(
              padding: EdgeInsets.all(5),
            ),
            ElevatedButton(
              child: Text('VOLTAR'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstRoute()),
                );
              },
            ),
          ]),
        ));
  }
}
