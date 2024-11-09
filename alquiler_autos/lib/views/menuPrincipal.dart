import 'package:alquiler_autos/views/perfil.dart';
import 'package:flutter/material.dart';
import 'detalleVehiculo.dart';

class MenuPrincipal extends StatefulWidget {
  @override
  _MenuPrincipalState createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PerfilUsuario()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: Text('Alquiler de Vehículos'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Buscar vehículo',
                hintText: 'auto',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: vehiculos.length,
              separatorBuilder: (BuildContext context, int index) => Divider(),
              itemBuilder: (BuildContext context, int index) {
                final vehiculo = vehiculos[index];
                return ListTile(
                  leading: Icon(Icons.directions_car, color: Colors.red[500]),
                  title: Text(
                    vehiculo['nombre'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Año: ${vehiculo['año']} - ${vehiculo['precio']}/día',
                    style: TextStyle(color: Colors.black54),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetalleVehiculo(
                          vehiculo: Vehiculo(
                            nombre: vehiculo['nombre'],
                            marca: vehiculo['marca'],
                            modelo: vehiculo['modelo'],
                            anio: int.parse(vehiculo['año']),
                            disponible: vehiculo['disponible'],
                          ),
                        ),
                      ),
                    );
                  },
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.red[500]),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home, color: Colors.red[500]),
              ],
            ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.directions_car, color: Colors.red[500]),
              ],
            ),
            label: 'Alquiler',
          ),
          BottomNavigationBarItem(
            icon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person, color: Colors.red[500]),
              ],
            ),
            label: 'Usuario',
          ),
        ],
      ),
    );
  }
}

final List<Map<String, dynamic>> vehiculos = [
  {'nombre': 'Toyota Corolla', 'marca': 'Toyota', 'modelo': 'Corolla', 'año': '2022', 'precio': '\$99.99', 'disponible': true},
  {'nombre': 'Nissan Sentra', 'marca': 'Nissan', 'modelo': 'Sentra', 'año': '2021', 'precio': '\$89.99', 'disponible': false},
  {'nombre': 'Ford Mustang', 'marca': 'Ford', 'modelo': 'Mustang', 'año': '2023', 'precio': '\$199.99', 'disponible': true},
  {'nombre': 'Chevrolet Camaro', 'marca': 'Chevrolet', 'modelo': 'Camaro', 'año': '2020', 'precio': '\$150.00', 'disponible': false},
];