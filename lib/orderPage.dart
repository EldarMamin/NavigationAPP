import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  final String productTitle;

  OrderPage({required this.productTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Заказ и оплата')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Ваш заказ: ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Text(productTitle),

            SizedBox(height: 20),

            Text(
              'Способы оплаты: ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 16),

            ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('Бансковская карта'),
            ),

            ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Электронный кошелек'),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Оплата прошла успешно')),
                  );
                },
                child: Text('Оплатить'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
