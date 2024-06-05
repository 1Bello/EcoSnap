import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  void _showInfoDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          content: Text(message),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8, // Reducimos el ancho del contenedor
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(color: Colors.green, width: 2.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Información',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2, // Mostrar en dos columnas
                  crossAxisSpacing: 10.0, // Espacio entre columnas
                  mainAxisSpacing: 10.0,
                  children: [
                    IconButton(
                      icon: Icon(Icons.shopping_cart, size: 50.0),
                      onPressed: () {
                        _showInfoDialog(context, 'Cartón', 'Información sobre el cartón.');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.local_activity, size: 50.0),
                      onPressed: () {
                        _showInfoDialog(context, 'Vidrio', 'Información sobre el vidrio.');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.local_florist, size: 50.0),
                      onPressed: () {
                        _showInfoDialog(context, 'Plástico', 'Información sobre el plástico.');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.local_drink, size: 50.0),
                      onPressed: () {
                        _showInfoDialog(context, 'Lata', 'Información sobre las latas.');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.category, size: 50.0),
                      onPressed: () {
                        _showInfoDialog(context, 'Metal', 'Información sobre el metal.');
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, size: 50.0),
                      onPressed: () {
                        _showInfoDialog(context, 'Basura', 'Información sobre la basura.');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
