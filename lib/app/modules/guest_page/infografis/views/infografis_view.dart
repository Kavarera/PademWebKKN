import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/infografis_controller.dart';

class InfografisView extends GetView<InfografisController> {
  const InfografisView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InfografisView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'InfografisView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
