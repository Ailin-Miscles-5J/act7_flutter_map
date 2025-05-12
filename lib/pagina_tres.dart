import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificaciones'),
        backgroundColor: Colors.deepPurple,
        actions: [
          // Ejemplo de badge en el AppBar
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Badge(
              backgroundColor: Colors.red,
              alignment: AlignmentDirectional.topEnd,
              largeSize: 20,
              label: const Text(
                '3',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: IconButton(
                icon: const Icon(Icons.message),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Ejemplo de Badge',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 40),
            // Badge original adaptado
            const Badge(
              backgroundColor: Colors.red,
              alignment: AlignmentDirectional.topEnd,
              largeSize: 25,
              label: Text(
                '45',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              child: Icon(
                Icons.notifications_active_rounded,
                size: 60,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Tienes 45 notificaciones nuevas',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 40),
            // Ejemplo adicional de badge
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Badge(
                  backgroundColor: Colors.green,
                  label: const Text('Nuevo'),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Mensajes'),
                  ),
                ),
                Badge(
                  backgroundColor: Colors.orange,
                  label: const Text('5'),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Tareas'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Badge(
        backgroundColor: Colors.red,
        label: const Text('1'),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.deepPurple,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
