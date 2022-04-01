import 'package:flutter/material.dart';
import 'package:flutterfirebase/methods/grid.dart';

class Page_View extends StatefulWidget {
  Page_View({Key? key}) : super(key: key);

  @override
  State<Page_View> createState() => _Page_ViewState();
}

class _Page_ViewState extends State<Page_View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: (
        PageView(
          children: [
            page(
              title: "Pantalla 1",
              color: Colors.purple,
            ),

            page(
              title: "Pantalla 2",
              color: Colors.green,            
            ),

            page(
              title: "Pantalla 3",
              color: Colors.orange,            
            ),

            page(
              title: "Pantalla 4",
              color: Colors.lime,   
                               
            ),

          ],
        )
      ),

      
      
    );
  }
}

class page extends StatelessWidget {

  Color? color;
  MaterialButton? booton;

  String? title;

  
  page({

    this.color,
    this. booton,
    this.title,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: color, 

      child: Stack( children: [ 

        Positioned(
          top: 40,
          left: 140,
          right: 0,
         
          child: Container(
            width: double.infinity,
            child: Text(
              //sirve para poner texto entre pageView
              title!,

              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
        ),
        
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,

//pagina que queremos cargar al dar clic en el boton
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => GridContainer()));
          },
          child: Container(
                  width: 200,
                  height: 80,
                  margin: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Center(child: Text('Ir a Principio', style: TextStyle(color: Colors.black),)),                
                ),
        )
        )
      ]
      ),
    );
  }
}