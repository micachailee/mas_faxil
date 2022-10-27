import 'package:flutter/material.dart';
import 'package:mas_faxil/src/ui/screens_controllers/category_selection_page_controller.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'home_page.dart';
import 'object_selection_page.dart';

class CategorySelectionPage extends StatefulWidget {
  const CategorySelectionPage({Key? key}) : super(key: key);


  @override
  CategorySelectionPageState createState() => CategorySelectionPageState();
}

class CategorySelectionPageState extends StateMVC{
//final CategorySelectionPageController _con = CategorySelectionPageController();
 late CategorySelectionPageController _con;
 CategorySelectionPageState() : super(CategorySelectionPageController()){
   _con = CategorySelectionPageController();
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seleccione una categoria'),
        leading: IconButton(
          onPressed:(){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> const HomePage())
            );
             },
          icon: const Icon(Icons.arrow_back, color: Colors.white,)) ,
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            decoration:const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/src/images/first_step.png'),
                    fit: BoxFit.fill)
            ),
          ),
          Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _decoration('lib/src/images/scissors.png',_con.text1), //-------------USO LA PROPIEDAD
                  _decoration('lib/src/images/scissors.png',_con.text2),
                ],
              )
          ),
          SizedBox(
            height: 80,
            child: Center(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const ObjectSelectionPage())
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
      ),
    );
  }
  _decoration(String image, String category){
    return SizedBox(
      width: 200,
      height:250,
      child: Column(
        children: [
          Container(height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill),
              )
          ),
          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
                minimumSize: MaterialStateProperty.all(const Size(double.infinity,100)),
              ),
              onPressed: (){
                setState(() {
                });
              },
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(category,
                    textAlign: TextAlign.left
                    ,),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.check,),
                  )
                ],
              ) )
        ],
      ),
    );
  }
}