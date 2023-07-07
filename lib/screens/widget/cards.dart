import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:app_com_api/constants.dart';

class Cards extends ConsumerWidget {
  const Cards(this.icone, this.texto, this.valor, {super.key});
  final Icon icone;
  final String texto;
  final String valor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      color: secondaryColor,
      child: Row(
        children: [
          Card(
            color: prussiam,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: icone,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  texto,
                  style: const TextStyle(
                    color: cWhite,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  valor,
                  style: const TextStyle(color: cWhite),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
