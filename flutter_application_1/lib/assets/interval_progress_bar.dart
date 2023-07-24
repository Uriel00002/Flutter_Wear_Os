import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class IntervalProgressBar extends StatefulWidget {
  const IntervalProgressBar({Key? key}): super(key: key);

  @override
  State<IntervalProgressBar> createState() => 
  _IntervalProgressBarState();
}

class _IntervalProgressBarState extends 
State<IntervalProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Row( 
      children: [
        _bar(),
        _label(),
      ],
    );
  }

  Widget _bar(){
    return Column(
      children: [
  
        _interval(customColor: const Color.fromARGB(255, 5, 176, 5)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 5, 176, 5)),
        _separator(),
        _interval(customColor:const  Color.fromARGB(255, 131, 235, 12)),
        _separator(),
        _interval(customColor:const Color.fromARGB(255, 229, 255, 0)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 176, 170, 5)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 235, 150, 12)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 255, 162, 0)),
        _separator(),
        _interval(customColor:const  Color.fromARGB(255, 176, 76, 5)),
        _separator(),
        _interval(customColor: const  Color.fromARGB(255, 228, 25, 10)),
        _separator(),
        _interval(customColor: const Color.fromARGB(255, 255, 0, 0)),
        _separator(),
      ],
    );
  }

  Widget _separator(){
        return const SizedBox(
          height: 5,
        );
  }

  Widget _interval({required Color customColor}){
    return  SizedBox(
      width: 22.0,
      height: 5.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: customColor, 
          )
        ),
    );
  }

  Widget _label(){
    return Text(
      '1.0',
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

}