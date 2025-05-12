import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaCinco extends StatefulWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  State<PantallaCinco> createState() => _PantallaCincoState();
}

class _PantallaCincoState extends State<PantallaCinco> {
  bool _isLoading = false;
  String _statusText = 'Presiona el botón para cargar datos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cargando Datos'),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              _simulateLoading();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isLoading) ...[
              const CupertinoActivityIndicator(
                radius: 30,
                color: Colors.orangeAccent,
              ),
              const SizedBox(height: 20),
              const Text(
                'Cargando contenido...',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.orangeAccent,
                ),
              ),
            ] else ...[
              Icon(
                Icons.cloud_download,
                size: 60,
                color: Colors.orangeAccent.withOpacity(0.7),
              ),
              const SizedBox(height: 20),
              Text(
                _statusText,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
              ),
              onPressed: () {
                _simulateLoading();
              },
              child: const Text(
                'Cargar Datos',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _simulateLoading() async {
    setState(() {
      _isLoading = true;
      _statusText = 'Procesando...';
    });

    // Simulamos una carga de 3 segundos
    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      _isLoading = false;
      _statusText = 'Datos cargados exitosamente!\n'
          'Presiona el botón para recargar';
    });
  }
}
