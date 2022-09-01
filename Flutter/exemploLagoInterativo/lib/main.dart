import 'dart:html';

import 'package:flutter/material.dart';
// Retire o comentário das linhas 3 e 6 para observar o layout visual em tempo de execução.
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
//  debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Descreve a parte da interface do usuário representada por este widget.
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Acampar no lago Oeschinen',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Suiça',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
/*           Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'), */
          //Passo4: Conecte o widget com estado à árvore de widgets
          const FavoriteWidget(),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'LIGAR'),
        _buildButtonColumn(color, Icons.near_me, 'ROTA'),
        _buildButtonColumn(color, Icons.share, 'COMPARTILHAR'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lago Oeschinen fica no sopé do Blüemlisalp no Bernese'
        'Alpes. Situado a 1.578 metros acima do nível do mar, é uma dos '
        'grandes lagos alpinos. Um passeio de gôndola de Kandersteg, seguido de uma '
        'meia hora de caminhada por pastagens e pinhal, leva você ao '
        'lago, que aquece a 20 graus Celsius no verão. Atividades '
        'disponíveis incluem remar e andar no tobogã de verão.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'image/lake.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

//Passo1: Decidir qual objeto gerencia o estado do widget
//O estado de um widget pode ser gerenciado de várias maneiras,
//mas em nosso exemplo o próprio widget, FavoriteWidget, gerenciará
//seu estado. Neste exemplo, mudar a estrela é uma ação isolada
//que não afeta o widget pai ou o restante da interface do usuário,
//portanto, o widget pode lidar com seu estado internamente.

//Passo2: Criar a classe StatefulWidget
class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

//Passo3: Definir o estado da classe
class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.centerRight,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }

//O método a seguir é chamado quando o IconButton é pressionado.
//Ele chama o setState, avisando que o estado Widget mudou e que
//por isso ele deve ser redesenhado.
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
}
