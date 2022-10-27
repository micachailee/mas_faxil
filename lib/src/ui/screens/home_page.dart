import 'package:flutter/material.dart';
import 'package:mas_faxil/src/ui/screens/result_page.dart';
import 'package:mas_faxil/src/ui/screens_controllers/home_page_controller.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import 'category_selection_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends StateMVC {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container( color: Colors.deepOrange,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                    width: 2000,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/scissors.png'),
                      ),
                    ),
                ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 60,
                        child: Center(
                          child: ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=> const CategorySelectionPage())
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

                            child: const Text('COMENZAR',
                              style: TextStyle(color: Colors.white,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.bold),
                            ),

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
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

                            child: const Text('HISTORIAL',
                              style: TextStyle(color: Colors.white,
                                  letterSpacing: 2.0,
                                  fontWeight: FontWeight.bold),
                            ),

                          ),
                        ),
                      ),
                    ],
                  )
                  
              ],
            ),
          ),
        )
      ],
    );

    }

  }
