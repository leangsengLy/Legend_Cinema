import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key, required this.typeForm});
  final String typeForm;
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.typeForm == "login" ? "Login" : "Signup",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            widget.typeForm == "login"
                ? "You can use your phone number or username to login"
                : "Enter your phone number to get verification code",
            style: TextStyle(fontSize: 13),
          ),
          const SizedBox(height: 20),
          widget.typeForm == "login"
              ? const TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                    hintText: "Enter your username",
                  ),
                )
              : const SizedBox(
                  width: 0,
                ),
          widget.typeForm == "login"
              ? const SizedBox(height: 30)
              : const SizedBox(
                  width: 0,
                ),
          widget.typeForm == "login"
              ? const TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                )
              : const SizedBox(
                  width: 0,
                ),
          widget.typeForm == "login"
              ? const SizedBox(height: 20)
              : const SizedBox(
                  width: 0,
                ),
          widget.typeForm == "login"
              ? const Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      textAlign: TextAlign.right,
                      "Forgot Password?",
                    ),
                  ),
                )
              : const SizedBox(
                  width: 0,
                ),
          widget.typeForm != "login"
              ? Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: IconButton(
                        icon: const Icon(Icons.public),
                        color: Colors.red, // Custom color
                        onPressed: () {
                          print('Icon pressed!');
                        },
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.blue, width: 2),
                      ),
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: "Phone Number",
                    ),
                  ),
                )
              : const SizedBox(
                  width: 0,
                ),
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
            ),
            alignment: Alignment.center,
            child: Text(
              widget.typeForm == "login" ? "Login" : "SignUp",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
