import 'package:flutter/material.dart';
import 'package:mas_faxil/src/ui/screens/result_page.dart';
import 'package:mas_faxil/src/ui/screens_controllers/object_form_page_controller.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../models/measure_model.dart';
import 'object_selection_page.dart';

class ObjectFormPage extends StatelessWidget{
  const ObjectFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Center(child: Text('Medidas Necesarias')),
        leading:  IconButton(
            onPressed:(){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> const ObjectSelectionPage())
                  );
                } ,
            icon: const Icon(Icons.arrow_back, color: Colors.white)) ,
      ),
      body: const MyForm(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MyForm extends StatefulWidget{
  const MyForm({Key? key}) : super(key: key);

  @override
  MyFormState createState(){
    return MyFormState();
  }
}
class MyFormState extends StateMVC{
  late ObjectFormPageController _con;
  MyFormState() : super(ObjectFormPageController()){
    _con = ObjectFormPageController();
  }
@override

Widget build (BuildContext context){
  return Column(
    children: [
    Container(
    height: 80,
    decoration:const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('lib/src/images/third_step.png'),
            fit: BoxFit.fill)
    ),
  ),
      Expanded(
        child: ListView.builder(
            itemBuilder: (BuildContext context, int index){
              return _measure(_con.GetList()[index]);
            },
          itemCount:_con.GetList().length ,
        ),
      ),
      SizedBox(
        height: 80,
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const ResultPage())
              );
            },
            style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(300,50)),
                backgroundColor: MaterialStateProperty.all(Colors.brown),
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    )
                )
            ),

            child: const Text('SIGUIENTE',
              style: TextStyle(color: Colors.white,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),

          ),
        ),
      )
    ],
  );
}
_measure(MeasureModel measure){
  return TextFormField(
    decoration: InputDecoration(
      icon:  const Icon(Icons.calculate_outlined),
      hintText: 'Ingrese la medida en cm',
      labelText: measure.name,
    ),
    validator: (String? value){
    return(value!=null)? 'Ingrese nuevamente':null;
    },
  );
}


}
