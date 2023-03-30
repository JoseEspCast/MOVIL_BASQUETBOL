import 'package:flutter/material.dart';

class resultado_juegos extends StatelessWidget {
  resultado_juegos({super.key});

  List<String> nombre = [
    'equipo 1 vs equipo 2',
    'equipo3 vs equipo4',
    'equipo5 vs equipo7',
    'equipo5 vs equipo7',
    'equipo5 vs equipo7',
    'equipo5 vs equipo7',
  ];
  // LISTAS Y VARIABLES PARA INGRESAR 
  List<String> times = ['10:00', '12:30', '15:00','10:00', '12:30', '15:00'];
  List<String> cancha = ['CUM', 'ING 1', 'ING 2','CUM', 'ING 1', 'ING 2'];
  String temporada= 'TABLA DE PARTIDOS';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(      backgroundColor:Color.fromARGB(255, 1, 17, 243), title: Text('  $temporada')),
        body: GridView.builder(
        
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: times.length,
          itemBuilder: (context, index) {
            return MyCell(
                nombre: nombre[index],
                time: times[index],
                cancha: cancha[index]);
          },
        ),
      ),
    );
  }
}

// CREA LA CLASE DONDE SOLICITARA LA INFORMACION
class MyCell extends StatelessWidget {
  final String time;
  final String cancha;
  final String nombre;
  MyCell({required this.time, required this.cancha, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey[200],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ' $nombre',
            style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            'Hora: $time',
            style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            'Cancha: $cancha',
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
    );
  }
}
