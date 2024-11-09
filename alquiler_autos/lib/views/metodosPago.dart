import 'package:flutter/material.dart';

class MedioDePagoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[500],
        title: Text('Medio de Pago'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.credit_card, color: Colors.blue),
            title: Text('Tarjeta de Crédito o Débito'),
            tileColor: Colors.blue[50],
            onTap: () {
              // Acción cuando se selecciona esta opción
              print('Tarjeta de Crédito o Débito seleccionada');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_balance_wallet, color: Colors.red),
            title: Text('PayPal'),
            onTap: () {
              // Acción cuando se selecciona esta opción
              print('PayPal seleccionado');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.account_balance, color: Colors.red),
            title: Text('Transferencia Bancaria'),
            onTap: () {
              // Acción cuando se selecciona esta opción
              print('Transferencia Bancaria seleccionada');
            },
          ),
        ],
      ),
    );
  }
}