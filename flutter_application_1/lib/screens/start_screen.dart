import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _totalMl(),
          _indicators(),
          _buttonReg(),
        ],
      ),
      backgroundColor: Colors.amber,
    );
  }

  Widget _totalMl() {
    return Column(
      children: [
        Text(
          '0 mL',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          'Faltan 250ml',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }

  Widget _indicators() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _percentage(),
        _smallDivider(),
        _hydratation(),
      ],
    );
  }

  Widget _percentage() {
    return Column(
      children: [
        Stack(
          children: [
            const CircularProgressIndicator(
              strokeWidth: 6,
              value: 1.0,
            ),
            Text(
              '0%',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ],
    );
  }

  Widget _smallDivider() {
    return const VerticalDivider(
      color: Colors.brown,
      thickness: 2,
      width: 20,
      indent: 10,
      endIndent: 0,
    );
  }

  Widget _hydratation() {
    return Text(
      '1.0',
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  Widget _buttonReg() {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Registrar'),
      ),
    );
  }
}
