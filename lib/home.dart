import 'package:basquetbol/paginas/maps.dart';
import 'package:basquetbol/paginas/resultado_juegos.dart';
import 'package:basquetbol/paginas/partido.dart';
import 'package:basquetbol/paginas/tabla_partidos.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';




class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int pageIndex = 0;

  //llamas a las paginas que necesitas
  final tabla_partidos _tabla_partidos = tabla_partidos();
  final maps _maps = maps();
  final partido _partido = partido();
  final resultado_juegos _resultado_juegos = resultado_juegos();

  final colorTexto = Color.fromARGB(255, 255, 255, 255);
  final colorPlantillas = Color.fromARGB(255, 1, 17, 243);
  final TamTexto = 20.0;

  Widget verpagina = new tabla_partidos();

  paginaSelec(int opc) {
    switch (opc) {
      case 0:
        return _tabla_partidos;
        break;
      case 1:
        return _partido;
        break;
      case 2:
        return _resultado_juegos;
        break;
      case 3:
        return _maps;
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: pageIndex,
          items: <Widget>[
            Text('INICIO',
                style: TextStyle(
                  color: colorTexto,
                  fontSize: TamTexto,
                )),
            Text('PARTIDO',
                style: TextStyle(
                  color: colorTexto,
                  fontSize: TamTexto,
                )),
            Text('TABLA',
                style: TextStyle(
                  color: colorTexto,
                  fontSize: TamTexto,
                )),
            Text('MAPA',
                style: TextStyle(
                  color: colorTexto,
                  fontSize: TamTexto,
                )),
          ],
          color: colorPlantillas,
          buttonBackgroundColor: colorPlantillas,
          backgroundColor: Color.fromARGB(255, 226, 223, 16),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (int tappedIndex) {
            setState(() {
              verpagina = paginaSelec(tappedIndex);
            });
          },
        ),
        body: Container(
          color: colorPlantillas,
          child: Center(
            child: verpagina,
          ),
        ));
  }
}
