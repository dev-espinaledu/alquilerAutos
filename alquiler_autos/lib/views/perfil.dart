import 'package:flutter/material.dart';

class PerfilUsuario extends StatelessWidget {
  const PerfilUsuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: const Text('Perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Foto de perfil
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey[300],
              child: Icon(Icons.person, size: 40, color: Colors.grey[600]),
            ),
            const SizedBox(height: 16),
            // Nombre y correo
            Text(
              'Nombre de Usuario',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              'correo@ejemplo.com',
              style: TextStyle(color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),
            // Número de licencia
            ListTile(
              leading: Icon(Icons.badge, color: Colors.grey[600]),
              title: Text('Número de licencia'),
              subtitle: Text('123456789'),
            ),
            Divider(),
            // Cambiar contraseña
            ListTile(
              leading: Icon(Icons.lock, color: Colors.grey[600]),
              title: Text('Cambiar contraseña'),
              onTap: () {
                // Acción para cambiar la contraseña
              },
            ),
            Divider(),
            // Revisar alquileres
            ListTile(
              leading: Icon(Icons.search, color: Colors.grey[600]),
              title: Text('Revisar Alquileres'),
              onTap: () {
                // Acción para revisar alquileres
              },
            ),
          ],
        ),
      ),
    );
  }
}