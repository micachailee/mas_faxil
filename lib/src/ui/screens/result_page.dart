import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import '../../models/object_model.dart';
import '../screens_controllers/result_page_controller.dart';
import 'home_page.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);


  @override
  ResultPageState createState() => ResultPageState();
}

class ResultPageState extends StateMVC {
  late ResultPageController _con;
  ResultPageState() : super(ResultPageController()){
    _con = ResultPageController();
  }
@override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Expanded(
          child: Container(
            color: Colors.brown,
          ),
        ),
        Column(
          children: [        
            Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            width: 2000,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/src/images/scissors.png'),
              ),
            ),
          ),
            _results(),
            SizedBox(
              height: 80,
              width: 300,
              child: Center(
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=> const HomePage())
                    );
                  },
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(const Size(300,50)),
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          )
                      )
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.check,
                      color: Colors.black,),
                       Text('LISTO',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                ),
              ),
            )
          ],
        )
      ],
    );
  }

_results(){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      const Text('Cuenta realizada',
      style: TextStyle(color: Colors.white,
      letterSpacing: 2.0,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.none,
      fontSize: 30.0),
      ),
      _title('A partir de los datos que brindaste, tienes:'),
      _myresults(_con.object),
    ],
  );
}
_myresults(ObjectModel? object){
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _title('Tipo de prenda: '),
    _data('${object?.name}'),
    _title('Tipo de tela: '),
    _data('${object?.fabric}'),
    _title('Medidas necesarias'),
     Text(('${_con.result?.forSkirt()} cm2 '),
      style: const TextStyle(color: Colors.white,
          letterSpacing: 2.0,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
          fontSize: 30.0),
    ),
  ],
  );
}
_title(String title){
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.none,
            color: Colors.white,
            letterSpacing: 2.0,
            fontSize: 16.0
        ),
      ),
    ),
  );
}
_data(String data){
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text( data,
        style: const TextStyle(
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 14.0
        ),
      ),
    ),
  );
}
}