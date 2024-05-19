import 'package:flutter/material.dart';
import 'package:task_manager_app/screens/home_screen.dart';
import 'package:task_manager_app/utils/theme_constants.dart';

import '../Database/ApiService.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiService apiService = ApiService(baseUrl: 'https://dummyjson.com/auth/login');
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text("Provide your Credential", style: notesTheme.textTheme.titleMedium?.copyWith(color: Colors.white)),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.all(15),
              child: TextFormField(
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
                onChanged: (value) {},
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: const Icon(Icons.person_outline_rounded, color: Colors.grey),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),

                  focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.blue, width: 1.0), borderRadius: BorderRadius.circular(10.0)),
                  fillColor: Colors.grey,

                  hintText: "email/mobile",

                  //make hint text
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 16, fontFamily: "verdana_regular", fontWeight: FontWeight.w400),

                  //create lable
                  labelText: 'Email/Mobile',
                  //lable style
                  labelStyle: const TextStyle(color: Colors.grey, fontSize: 16, fontFamily: "verdana_regular", fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.all(15),
              child: TextFormField(
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.w600,
                ),
                onChanged: (value) {},
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  prefixIcon: const Icon(Icons.password, color: Colors.grey),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),

                  focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.blue, width: 1.0), borderRadius: BorderRadius.circular(10.0)),
                  fillColor: Colors.grey,

                  hintText: "password/pin",

                  //make hint text
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 16, fontFamily: "verdana_regular", fontWeight: FontWeight.w400),

                  //create lable
                  labelText: 'Password/Pin',
                  //lable style
                  labelStyle: const TextStyle(color: Colors.grey, fontSize: 16, fontFamily: "verdana_regular", fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  child: Text("Login", style: notesTheme.textTheme.titleSmall?.copyWith(color: Colors.black)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
              },
              child: Text.rich(
                TextSpan(
                  text: "New Register User", // First part of the text
                  style: Theme.of(context).textTheme.bodySmall,
                  children: <InlineSpan>[
                    const WidgetSpan(
                      child: SizedBox(width: 8.0), // Adjust the width as needed for the space
                    ),
                    TextSpan(
                      text: "SignUp",
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.red, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
