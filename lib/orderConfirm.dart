import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderConfirm extends StatelessWidget {
  final String title;

  OrderConfirm({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 100),

            SizedBox(height: 16),

            Text(
              'Заказ успешно оформлен!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),

            SizedBox(height: 16),

            Text(title),

            SizedBox(height: 32),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: Text('Вернуться в каталог'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
