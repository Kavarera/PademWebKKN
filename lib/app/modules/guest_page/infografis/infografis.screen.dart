import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/infografis.controller.dart';

class InfografisScreen extends GetView<InfografisController> {
  const InfografisScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InfografisScreen'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'InfografisScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
