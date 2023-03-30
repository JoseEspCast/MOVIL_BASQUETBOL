import 'package:flutter/material.dart';

class maps extends StatelessWidget {
  maps({super.key});
  final colorfondo = Colors.grey;
  final colorTexto = Colors.white;
  String textbar = 'Tabla ...';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${textbar}'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: colorfondo,
              child: Center(
                child: Text(
                  'Fila 1',
                  style: TextStyle(
                    color: colorTexto,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: colorfondo,
              child: Center(
                child: Text(
                  'Fila 2',
                  style: TextStyle(
                    color: colorTexto,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: colorfondo,
              child: Center(
                child: Text(
                  'Fila 3',
                  style: TextStyle(
                    color: colorTexto,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: colorfondo,
              child: Center(
                child: Text(
                  'Fila 4',
                  style: TextStyle(
                    color: colorfondo,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: colorfondo,
              child: Center(
                child: Text(
                  'Fila 5',
                  style: TextStyle(
                    color: colorTexto,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: colorfondo,
              child: Center(
                child: Text(
                  'Fila 6',
                  style: TextStyle(
                    color: colorTexto,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
