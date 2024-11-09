import 'package:alquiler_autos/views/metodosPago.dart';
import 'package:flutter/material.dart';

class Vehiculo {
  final String nombre;
  final String marca;
  final String modelo;
  final int anio;
  final bool disponible;

  Vehiculo({
    required this.nombre,
    required this.marca,
    required this.modelo,
    required this.anio,
    required this.disponible,
  });
}

class DetalleVehiculo extends StatelessWidget {
  final Vehiculo vehiculo;

  const DetalleVehiculo({Key? key, required this.vehiculo}) : super(key: key);

  // Método que redirige a la pantalla de método de pago
  void metodoPago(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MedioDePagoScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: const Text('Detalle del Vehículo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  Icons.directions_car,
                  size: 100,
                  color: Colors.red[500],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Marca: ${vehiculo.marca}',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              'Modelo: ${vehiculo.modelo}',
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              'Año: ${vehiculo.anio}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Disponibilidad: ${vehiculo.disponible ? "Disponible" : "No Disponible"}',
              style: TextStyle(
                color: vehiculo.disponible ? Colors.green : Colors.red,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: vehiculo.disponible
                    ? () {
                        metodoPago(context); // Redirige si el vehículo está disponible
                      }
                    : null,
                icon: const Icon(Icons.directions_car),
                label: const Text('Alquilar Vehículo'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: vehiculo.disponible ? Colors.red[500] : Colors.grey,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}