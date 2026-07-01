import 'package:flutter/material.dart';

enum TaskCategories {
  education(Icons.school, Colors.blueGrey),
  work(Icons.work, Colors.green),
  home(Icons.home, Colors.amber),
  personal(Icons.person, Colors.purple),
  health(Icons.health_and_safety, Colors.red),
  shopping(Icons.shopping_cart, Colors.teal),
  social(Icons.people, Colors.indigo),
  travel(Icons.airplanemode_active, Colors.cyan),
  others(Icons.category, Colors.grey),
  finance(Icons.account_balance, Colors.orange);

  final IconData icon;
  final Color color;
  const TaskCategories(this.icon, this.color);
}