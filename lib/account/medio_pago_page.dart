import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentPage(),
    );
  }
}

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A tu servicio"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Acción al presionar el botón de retroceso
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "¿Cómo deseas pagar?",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            PaymentOptionCard(
              title: "Tarjeta de crédito",
              subtitle: "Hasta doce cuotas sin intereses",
              icon: Icons.credit_card,
              color: Colors.purple[100]!,
              onTap: () {
                // Acción al seleccionar esta opción
              },
            ),
            PaymentOptionCard(
              title: "Tarjeta de débito",
              subtitle: "",
              icon: Icons.credit_card_outlined,
              color: Colors.grey[300]!,
              onTap: () {
                // Acción al seleccionar esta opción
              },
            ),
            PaymentOptionCard(
              title: "Pago desde tu banco por internet",
              subtitle: "",
              icon: Icons.account_balance,
              color: Colors.grey[300]!,
              onTap: () {
                // Acción al seleccionar esta opción
              },
            ),
            Spacer(),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "TOTAL",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "S/. 000.00",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: TextButton(
                onPressed: () {
                  // Acción para ver los detalles de la compra
                },
                child: Text(
                  "Detalles de tu compra",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentOptionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  PaymentOptionCard({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: color,
        child: ListTile(
          leading: Icon(icon, size: 40),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: subtitle.isNotEmpty ? Text(subtitle) : null,
        ),
      ),
    );
  }
}
