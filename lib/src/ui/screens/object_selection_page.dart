import 'package:flutter/material.dart';
import 'package:mas_faxil/src/ui/screens/object_form_page.dart';

import 'category_selection_page.dart';

class ObjectSelectionPage extends StatelessWidget{
  const ObjectSelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Seleccione la prenda'),
        leading: IconButton(
            onPressed:(){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=> const CategorySelectionPage())
                );
              },
            icon: const Icon(Icons.arrow_back, color: Colors.white)) ,
      ),
      body: _body(context) , // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
_body(context){
  return Column(
    children: [
    Container(
    height: 80,
    decoration:const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/second_step.png'),
            fit: BoxFit.fill)
      ),
    ),
      const Text('Disponibles para sastreria'),
      Expanded(
        child: Column(
          children: [
            _option('Remera','images/scissors.png'),
            _option('Pantalon','images/scissors.png'),
          ],
        ),
      ),
      SizedBox(
        height: 80,
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const ObjectFormPage())
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
  ]
  );
}
_option(String object,String image){
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: ElevatedButton(
        onPressed: null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shadowColor: MaterialStateProperty.all(Colors.grey)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: Text(object)),
            Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image),
                  ),
                ),
            ),
          ],
        )
    ),
  );
}