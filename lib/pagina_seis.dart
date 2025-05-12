import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  double _currentValue = 1;
  final double _minValue = 0;
  final double _maxValue = 10;
  final int _divisions = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Control Deslizante'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              _showInfoDialog(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      'Valor actual:',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _currentValue.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            CupertinoSlider(
              value: _currentValue,
              min: _minValue,
              max: _maxValue,
              divisions: _divisions,
              activeColor: Colors.blueAccent,
              thumbColor: Colors.white,
              onChanged: (selectedValue) {
                setState(() {
                  _currentValue = selectedValue;
                });
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _minValue.toString(),
                  style: const TextStyle(color: Colors.grey),
                ),
                Text(
                  _maxValue.toString(),
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              icon: const Icon(Icons.refresh),
              label: const Text('Reiniciar'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
              ),
              onPressed: () {
                setState(() {
                  _currentValue = 1;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Cómo usar'),
        content: const Text(
          'Desliza el control para seleccionar un valor entre '
          '0 y 10. Puedes reiniciar el valor con el botón inferior.',
        ),
        actions: [
          TextButton(
            child: const Text('Entendido'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
