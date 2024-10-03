import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomFooter.dart';
import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: CustomColors.OLIVE_GREEN,
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            _buildDrawerItem(0, 'Beranda'),
            _buildDrawerItem(1, 'Profile Dusun'),
            _buildDrawerItem(2, 'Infografis'),
            _buildDrawerItem(3, 'Berita'),
            _buildDrawerItem(4, 'Produk dan Jasa'),
            _buildDrawerItem(5, 'Login'),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView( // Mengatasi overflow dengan scroll
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight, // Sesuaikan tinggi minimum
              ),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          // Background image
                          Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/background.jpg'), // Path to your image
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Transparent overlay
                          Container(
                            color: Colors.white.withOpacity(0.5),
                          ),
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              margin: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 10,
                                    spreadRadius: 4,
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const TextField(
                                    decoration: InputDecoration(
                                      labelText: 'Your username or email',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  const TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      labelText: 'Your password',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                            value: true,
                                            onChanged: (value) {},
                                          ),
                                          const Text('Remember me'),
                                        ],
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          // Forgot password logic
                                        },
                                        child: const Text('Forgot your password?'),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Login button logic
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFF725201), // Custom button color
                                        padding: const EdgeInsets.symmetric(vertical: 15),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5),
                                        ),
                                      ),
                                      child: const Text(
                                        'Log In',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  const Text("Don't have an account yet?"),
                                  TextButton(
                                    onPressed: () {
                                      // Sign Up button logic
                                    },
                                    child: const Text('Sign Up Here'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Footer
                    CustomFooter(constraints.maxWidth),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDrawerItem(int index, String title) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      onTap: () {
        controller.changeState(index);
        Get.back(); // Close the drawer
      },
    );
  }
}
