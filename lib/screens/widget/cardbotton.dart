import 'package:flutter/material.dart';
import 'package:app_com_api/constants.dart';

class CardBotton extends StatelessWidget {
  const CardBotton(
      {super.key,
      required this.icone,
      required this.texto,
      required this.valor});
  final Icon icone;
  final String texto;
  final String valor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: secondaryColor),
        onPressed: () {},
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: icone,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  texto,
                  style: const TextStyle(
                    color: cWhite,
                    fontSize: 10,
                  ),
                ),
                Text(
                  valor,
                  style: const TextStyle(
                    color: cWhite,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
