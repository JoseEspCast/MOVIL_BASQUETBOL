import 'package:flutter/material.dart';

class partido extends StatelessWidget {
  partido({super.key});
  final colorfondo = Color.fromARGB(255, 1, 17, 243);
  final colorTexto = Colors.black;
  final colorEtiqueta =  Color.fromARGB(255, 233, 121, 29);


  @override
  Widget build(BuildContext context) {
    String Torneo,
        Edicion,
        Rama,
        categoria,
        equipo1,
        equipo2,
        cancha,
        horario,
        fecha;
    int equipo1puntos, equipo2puntos;

    //Datos de prueba
    Torneo = 'FIM UAS';
    Edicion = '2023';
    Rama = 'Varonil';
    categoria = 'Libre';
    equipo1 = 'michis';
    equipo2 = 'firulais';
    cancha = 'CUM';
    horario = '10:00 AM';
    fecha = 'viernes 10 Abril';
    equipo1puntos = 1;
    equipo2puntos = 2;

    return Scaffold(
      appBar: AppBar(
        //ENCABEZADO DE LA PAGINA
        backgroundColor: colorfondo,
        title: Text(
          'TORNEO ${Torneo} ${Edicion}',
          
          style: TextStyle(
            color:colorTexto,
            fontSize: 24,
            
          ),
        ),
      ),
      body: Column(
        children: [
          //TEXTO  HORARIO
          Expanded(
            flex: 0,
            child: Container(
              color: colorEtiqueta,
              child: Center(
                child: Text(
                  'HORARIO',
                  style: TextStyle(
                    color: colorTexto,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),

          //FILA DE HORARIO DEL PARTIDO
          Expanded(
            flex: 0,
            child: Container(
              // color: Color.fromARGB(255, 247, 247, 253),
              decoration: BoxDecoration(
                color: colorEtiqueta,
              ),
              child: Center(
                child: Text(
                  ' ${fecha}  ${horario}',
                  style: TextStyle(
                    color: colorTexto,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),

          //FILA RESULTADO
          Expanded(
            flex: 0,
            child: Container(
              color: colorEtiqueta,
              child: Center(
                child: Text(
                  'RESULTADOS',
                  style: TextStyle(
                    color: colorTexto,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  '${equipo1} :  ${equipo1puntos}',
                  style: TextStyle(
                    color: colorTexto,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              child: Center(
                child: Text(
                  '${equipo2} : ${equipo2puntos}',
                  style: TextStyle(
                    color: colorTexto,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),

          // NOMBRE DE LO QUE NECESITAMOS USAR
          Expanded(
            flex: 0,
            child: Container(
              color: colorEtiqueta,
              child: Center(
                child: Text(
                  'FALTAS',
                  style: TextStyle(
                    color: colorTexto,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
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
