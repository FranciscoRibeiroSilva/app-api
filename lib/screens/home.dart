import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
//import 'package:app_com_api/screens/widget/navbar.dart';
//import 'package:app_com_api/screens/widget/cards.dart';
import 'package:app_com_api/constants.dart';
import 'package:app_com_api/screens/widget/cardbotton.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        foregroundColor: Colors.white,
      ),
      backgroundColor: bgColor,
      body: const Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CardBotton(
                    icone: Icon(
                      Icons.thermostat_outlined,
                      color: cWhite,
                    ),
                    texto: 'Tempertatura',
                    valor: '39°'),
              ),
              Expanded(
                flex: 1,
                child: CardBotton(
                    icone: Icon(
                      Icons.cloud,
                      color: cWhite,
                    ),
                    texto: 'Umidade',
                    valor: '60%'),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: CardBotton(
                  icone: Icon(
                    Icons.fireplace_outlined,
                    color: cWhite,
                  ),
                  texto: 'CO²',
                  valor: 'false',
                ),
              ),
              Expanded(
                flex: 1,
                child: CardBotton(
                  icone: Icon(
                    Icons.energy_savings_leaf,
                    color: cWhite,
                  ),
                  texto: 'Voltagem',
                  valor: '0.1',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
