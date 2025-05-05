import 'package:flutter/material.dart';
import 'package:kobi_finance/user_balance.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: UserBalanceScreen(name: 'Wakil Abubakar', balance: 123250.75),
  ));
}
