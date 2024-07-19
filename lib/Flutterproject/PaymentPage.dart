import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _type = 1; // Default selection

  void _handleRadio(int? value) {
    setState(() {
      _type = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Retrieve screen size
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Payment Method',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              buildPaymentOption(
                size,
                'Amazon Pay',
                Icon(Icons.payments, color: Colors.green),
                1,
              ),
              SizedBox(height: 15),
              buildPaymentOption(
                size,
                'Credit Card',
                Icon(Icons.credit_card, color: Colors.green),
                2,
              ),
              SizedBox(height: 15),
              buildPaymentOption(
                size,
                'Pay Pal',
                Icon(Icons.account_balance_wallet, color: Colors.green),
                3,
              ),
              SizedBox(height: 15),
              buildPaymentOption(
                size,
                'Google Pay',
                Icon(Icons.payment, color: Colors.green),
                4,
              ),
              SizedBox(height: 100),
              buildSummaryRow('Sub-Total', '\ Rs.2000'),
              SizedBox(height: 10),
              buildSummaryRow('Shipping fee', '\ Rs.150.50'),
              SizedBox(height: 10),
              buildSummaryRow(
                'Total Payment',
                '\ Rs.2150.50',
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.redAccent,
                ),
              ),
              SizedBox(height: 70),
              InkWell(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Your order is placed'),
                      backgroundColor: Colors.green,
                      elevation: 10,
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.all(5),
                    ),
                  );
                },
                child: Container(
                  width: size.width,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xFFDB3022),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Proceed Payment',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPaymentOption(Size size, String title, Icon icon, int value) {
    return Container(
      width: size.width,
      height: 55,
      decoration: BoxDecoration(
        border: _type == value
            ? Border.all(width: 1, color: Color(0xFFDB3022))
            : Border.all(width: 0.3, color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
        color: Colors.transparent,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Radio(
                    value: value,
                    groupValue: _type,
                    onChanged: _handleRadio,
                    activeColor: Color(0xFFDB3022),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: _type == value ? Colors.grey : Colors.white,
                    ),
                  ),
                ],
              ),
              icon,
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSummaryRow(String label, String amount, {TextStyle? textStyle}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        Text(
          amount,
          style: textStyle ??
              TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
        ),
      ],
    );
  }
}
