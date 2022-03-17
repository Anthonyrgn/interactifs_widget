import 'package:flutter/material.dart';

class InteractifPage extends StatefulWidget {
  @override
  //State<StatefulWidget> createState() {
  //return InteractifPageState();
  //}
  InteractifPageState createState() => InteractifPageState();
}

class InteractifPageState extends State<InteractifPage>{

  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;
  bool textButtonPressed = true;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  } // Tout ce que l'on va faire pendant l'initialisation du Widget

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  } //Tout ce que l'on va faire quand le widget sera dispose. Quand le Widget sera
  // Supprimé.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text(updateAppBarText()),),
        body: Center(child: Column(
          children: [
            TextButton(
                onPressed: updateAppBar,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.work),
                    const Padding(padding: EdgeInsets.only(left: 15)),
                    textButtonText(),
                  ],
                )
            )
          ],
        ),),
        floatingActionButton: FloatingActionButton(
          onPressed: updateColors,
          child: const Icon(Icons.build),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }

  updateColors(){
    return setState(() {
      backgroundColor = (backgroundColor == Colors.white) ? Colors.black : Colors.white;
      textColor = (textColor == Colors.black) ? Colors.white : Colors.black;
    });
  }

  updateAppBar(){
    setState(() => textButtonPressed = !textButtonPressed);
  }

  String updateAppBarText(){
    return (textButtonPressed)? "Je m'y connais un peu" : "Les intéractifs";
  }

  Text textButtonText(){
    return const Text("Je suis un TextButton", style: TextStyle(
      color: Colors.pink,
      backgroundColor: Colors.grey
    ),);
  }
}