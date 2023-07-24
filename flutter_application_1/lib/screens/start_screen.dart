import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget{
  const StartScreen({Key? key}) : super (key : key);



  @override
  State<StartScreen> createState () => _StartScreenState();
}



class _StartScreenState extends State<StartScreen> {


  @override
  Widget build (BuildContext context){



    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          _totalMl(),
          _indicators(),
          _buttonReg(),
        ],
      ),
      backgroundColor: Colors.amber,
    );
  }

  Widget _totalMl(){
    return Column(
      children: [
        Text(
          '0 mL',
           style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
              }

  Widget _indicators(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       Text(
          '0%',
          style:Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            '1.0',
             style:Theme.of(context).textTheme.headlineSmall,
             ),
         ],
     );
  }

  Widget _buttonReg(){
     return   Center( 
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  foregroundColor: Colors.white
                ),
                onPressed: () {},
                child : const Text('Registrar'),
            ),
          );
  }

}