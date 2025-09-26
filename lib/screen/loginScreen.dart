import 'package:cyneox_test/utils/global_color.dart';
import 'package:cyneox_test/utils/main_button.dart';
import 'package:cyneox_test/utils/text_field.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _selectedCountryCode = '+1'; 
  final _phoneController = TextEditingController();
  final _icController = TextEditingController();
  final _passwordController = TextEditingController();

  final List<String> countryCodes = ['+1', '+60', '+91', '+44']; 

  @override
  void dispose() {
    _phoneController.dispose();
    _icController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 90),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
              child: Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                  height: 120,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mobile Number',
                  style: TextStyle(
                    fontSize: 16,
                    color: GlobalColors.mainColor,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: GlobalColors.mainColor,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 80,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            value: _selectedCountryCode,
                            isExpanded: true,
                            iconStyleData: IconStyleData(
                              icon: Icon(Icons.arrow_drop_down, color: GlobalColors.white),
                            ),
                            style: TextStyle(color: GlobalColors.white),
                            dropdownStyleData: DropdownStyleData(
                              decoration: BoxDecoration(
                                color: GlobalColors.bgColor,
                                border: Border.all(
                                  color: GlobalColors.mainColor,
                                  width: 1.5,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              offset: const Offset(0, 0),
                            ),
                            buttonStyleData: const ButtonStyleData(
                              padding: EdgeInsets.zero, 
                            ),
                            onChanged: (value) {
                              setState(() {
                                _selectedCountryCode = value!;
                              });
                            },
                            items: countryCodes.map((code) {
                              return DropdownMenuItem(
                                value: code,
                                child: Text(
                                  code,
                                  style: TextStyle(color: GlobalColors.white),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: TextField(
                          controller: _phoneController,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(color: GlobalColors.white),
                          decoration: const InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 12),
                            border: InputBorder.none, 
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextInputField(
              label: 'NRIC Number',
              controller: _icController,
              hintText: 'Your NRIC Number',
            ),
            const SizedBox(height: 20),
            TextInputField(
              label: 'Password',
              controller: _passwordController,
              obscureText: true,
              hintText: 'Your Password',
            ),
            const SizedBox(height: 50),
            MainButton(
              onPressed: () {
                Get.offNamed('/home');
              },
              text: 'Log in',
            ),
            const SizedBox(height: 30),
            Text('Don\'t have an account yet?',style: TextStyle(color: GlobalColors.white,fontSize: 14)),
            TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size(0, 0),  
                tapTargetSize: MaterialTapTargetSize.shrinkWrap, 
              ),
              onPressed: () {
              },
              child: Text(
                'Register Now',
                style: TextStyle(
                  color: GlobalColors.mainColor, 
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
