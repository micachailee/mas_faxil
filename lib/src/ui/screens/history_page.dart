/*import 'package:flutter/material.dart';
import 'package:mas_faxil/main.dart';
import '../../models/result_model.dart';
import '../screens_controllers/result_page_controller.dart';
import 'home_page.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  HistoryPageState createState() => HistoryPageState();
}

class HistoryPageState extends StateMVC {
  late HistoryPageController _con;
  HistoryPageState() : super(HistoryPageController()){
    _con = HistoryPageController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Historial')),
        leading:  IconButton(
            onPressed:(){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const HomePage())
              );
            } ,
            icon: const Icon(Icons.arrow_back, color: Colors.white)) ,
      ),
      body: _body(widget.results), // This trailing comma makes auto-formatting nicer for build methods.
    ) ;

  }

  _body(List<ResultModel>? results){
    return ListView.builder(
        itemCount: ,
        itemBuilder:(BuildContext context, int index) );
  }
}

 */