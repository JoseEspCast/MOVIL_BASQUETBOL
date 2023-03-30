import 'package:flutter/material.dart';

class tabla_partidos extends StatelessWidget {
  tabla_partidos({super.key});
      final barracolor = Color.fromARGB(255, 1, 17, 243);
     
  List<String> nombre = [
    'equipo 1 vs equipo 2',
    'equipo3 vs equipo4',
    'equipo5 vs equipo7',
    'equipo5 vs equipo7',
    'equipo5 vs equipo7',
    
  ];
  // LISTAS Y VARIABLES PARA INGRESAR 
  List<String> times = ['10:00', '12:30', '15:00','10:00', '12:30', ];
  List<String> cancha = ['CUM', 'ING 1', 'ING 2','CUM', 'ING 1', ];
  String temporada= 'TABLA DE PARTIDOS';


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        
        appBar: AppBar(   backgroundColor: barracolor,   title: Text('  $temporada')),
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
       final colorTexto =Color.fromARGB(255, 166, 186, 196);
      final estilos= TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold);
   
  final String time;
  final String cancha;
  final String nombre;
  MyCell({required this.time, required this.cancha, required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: colorTexto,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ' $nombre',
            style:estilos ,
          ),
          SizedBox(height: 10.0),
          Text(
            'Hora: $time',
            style: estilos,
          ),
          SizedBox(height: 10.0),
          Text(
            'Cancha: $cancha',
            style: estilos,
          ),
        ],
      ),
    );
  }
}
