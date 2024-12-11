import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fluttertoast/fluttertoast.dart'; // Importa Fluttertoast

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddService(),
    );
  }
}

class AddService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            // Acción para regresar
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.camera_alt, size: 50, color: Colors.red),
            SizedBox(height: 8),
            Text(
              'SUBIR UNA IMAGEN',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                labelText: 'Nombre del servicio',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField(
                    items: [
                      DropdownMenuItem(
                        child: Text("Tipo de servicio"),
                        value: "tipo_servicio",
                      ),
                    ],
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    // Acción para marcar como oferta
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  child: Text('OFERTA'),
                ),
              ],
            ),
            SizedBox(height: 16),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Descripción de servicio',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            _buildCategorySection('Nombre de la categoría 1'),
            SizedBox(height: 16),
            _buildServiceDetails(),
            _buildServiceDetails(),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _showToast(); // Llama a la función para mostrar la notificación
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
              ),
              child: Text('Subir Servicio '),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favoritos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: 'Carrito'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: 'Cuenta'),
        ],
      ),
    );
  }

  Widget _buildCategorySection(String categoryName) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          categoryName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Divider(thickness: 1),
      ],
    );
  }

  Widget _buildServiceDetails() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Nombre del servicio',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            labelText: 'Descripción del servicio',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            _buildContactButton(Icons.phone, 'Teléfono'),
            SizedBox(width: 16),
            _buildContactButton(Icons.email, 'Email'),
            SizedBox(width: 16),
            _buildContactButton(FontAwesomeIcons.whatsapp, 'WhatsApp'),
          ],
        ),
        Divider(thickness: 1, height: 24),
      ],
    );
  }

  Widget _buildContactButton(IconData icon, String label) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, size: 30, color: Colors.grey),
          SizedBox(height: 4),
          Text(label, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  // Función para mostrar la notificación
  void _showToast() {
    Fluttertoast.showToast(
      msg: "¡Servicio subido exitosamente!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.purple,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
