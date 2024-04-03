import 'package:flutter/material.dart';
import 'package:flutter_layout_01/widgets/button_section.dart';
import 'package:flutter_layout_01/widgets/image_section.dart';
import 'package:flutter_layout_01/widgets/text_section.dart';
import 'package:flutter_layout_01/widgets/title_section.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter Layout';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          centerTitle: true,
          toolbarHeight: 50,
        ),
        body: const Center(
          child: SingleChildScrollView(
            //Pode fazer o SchollView agora dos itens que não cabem na tela
            child: Column(
              children: [
                ImageSection(img: 'assets/img/lake.avif'),
                TitleSection(
                    name: "Oeschinen Lake Campgroud", location: "Kandersteg"),
                ButtonSection(),
                TextSection(description: '''
O Lago Oeschinen situa-se no sopé do Blüemlisalp no Alpes Berneses. Situado a 1.578 metros acima do nível do mar,é um dos maiores lagos alpinos. Um passeio de gôndola de Kandersteg, seguido de uma aminhada de meia hora pelas pastagens e pinhal, leva-o ao lago, que aquece a 20 graus Celsius no verão. Atividades desfrutadas aqui incluem o remo e a corrida de tobogã de Verão.
              ''')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
