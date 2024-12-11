import 'package:flutter/material.dart';

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi cuenta', style: TextStyle(color: Colors.purple)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.purple),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[300],
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.brown,
                  child: Icon(Icons.person, color: Colors.white, size: 50),
                ),
                SizedBox(height: 10),
                Text(
                  'ANA MARIA MERMA HUISA',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'soledaderikac@gmail.com',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildListItem(
                  Icons.help_outline,
                  'Centro de ayuda',
                  onTap: () {
                    Navigator.pushNamed(context, '/help');
                  },
                ),
                _buildListItem(Icons.group_add, 'Invitar a tus amigos'),
                _buildListItem(Icons.favorite_border, 'Favoritos'),
                _buildListItem(
                  Icons.location_on_outlined,
                  'Mis direcciones',
                  subtitle: 'Av. Tintaya',
                ),
                _buildListItem(Icons.settings, 'Ajustes'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Carrito'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Cuenta'),
        ],
      ),
    );
  }

  Widget _buildListItem(IconData icon, String title,
      {String? subtitle, VoidCallback? onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.grey[700]),
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle) : null,
      onTap: onTap,
    );
  }
}
