import 'dart:developer';

import 'package:flutter/material.dart';

class UserBalanceScreen extends StatefulWidget {
  final String name;
  final double balance;

  const UserBalanceScreen({
    super.key,
    required this.name,
    required this.balance,
  });

  @override
  State<UserBalanceScreen> createState() => _UserBalanceScreenState();
}

class _UserBalanceScreenState extends State<UserBalanceScreen> {
  final TextEditingController _amountController = TextEditingController();
  String? _errorText;

  void _sendMoney() {
    final entered = double.tryParse(_amountController.text);

    if (entered == null || entered <= 0) {
      setState(() {
        _errorText = "Enter a valid amount.";
      });
      return;
    }

    if (entered > widget.balance) {
      setState(() {
        _errorText = "Insufficient balance.";
      });
      return;
    }

    setState(() {
      _errorText = null;
    });

    log("Sending \$${entered.toStringAsFixed(2)} to ${widget.name}");
    

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Successfully sent \$${entered.toStringAsFixed(2)}")),
    );

    _amountController.clear();
  }

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 194, 10),
        title: const Text('Account Summary',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),),
        ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            elevation: 6,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(widget.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text('Balance: \$${widget.balance.toStringAsFixed(2)}',
                      style: const TextStyle(fontSize: 20, color: Color.fromARGB(255, 28, 231, 38))),
                  const SizedBox(height: 24),
                  TextField(
                    controller: _amountController,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      labelText: 'Amount',
                      prefixIcon: const Icon(Icons.attach_money),
                      errorText: _errorText,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _sendMoney,
                    child: const Text('Send Money'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
