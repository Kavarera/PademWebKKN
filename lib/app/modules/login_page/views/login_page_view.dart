import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomFooter.dart';
import '../controllers/login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _username = TextEditingController();
    TextEditingController _password = TextEditingController();
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
          return SingleChildScrollView(
            // Mengatasi overflow dengan scroll
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                // Background image
                Container(
                  height: MediaQuery.of(context).size.height - 56,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/background.JPG'), // Path to your image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Transparent overlay
                Container(
                  height: MediaQuery.of(context).size.height - 56,
                  width: double.infinity,
                  color: Colors.white.withOpacity(0.5),
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    constraints: BoxConstraints(maxWidth: 600),
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
                        TextField(
                          controller: _username,
                          decoration: InputDecoration(
                            labelText: 'Your username or email',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          controller: _password,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Your password',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            ),
                            const Text('Remember me'),
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                controller.login(
                                    _username.value.text, _password.value.text);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    CustomColors.BRONZE, // Custom button color
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              child: Obx(
                                () => controller.isLoading.value
                                    ? CircularProgressIndicator(
                                        color: Colors.white,
                                      )
                                    : Text(
                                        'Log In',
                                        style: TextStyle(color: Colors.white),
                                      ),
                              )),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
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
        Get.back(); // Close the drawer
      },
    );
  }
}
