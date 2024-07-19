import 'package:flutter/material.dart';
import 'package:flutterfirst_project/Flutterproject/OTPVerification.dart'; // Import for OTPVerification page

class CreateAnAccount extends StatefulWidget {
  const CreateAnAccount({super.key});

  @override
  State<CreateAnAccount> createState() => _CreateAnAccountState();
}

class _CreateAnAccountState extends State<CreateAnAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(
            Icons.turn_left_rounded,
            size: 24,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Create An Account",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name = ''; // Variable to store the entered name
  String _email = ''; // Variable to store the entered email
  String _phone = '';
  String _password = '';
  String _confirmPassword = '';

  void _submitForm() {
    // Check if the form is valid
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save(); // Save the form data
      // You can perform actions with the form data here and extract the details
      print('Username: $_name'); // Print the name
      print('Email: $_email'); // Print the email
      print('Phone number: $_phone');
      print('Password: $_password');
      print('Confirm password: $_confirmPassword');


      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('You have signed up successfully'),
          backgroundColor: Colors.green,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(5),
        ),
      );


      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OTPVerification()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // Associate the form key with this Form widget
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(color: Colors.green),
              ),
              validator: (value) {

                if (value!.isEmpty) {
                  return 'Please enter your name.';
                }
                return null;
              },
              onSaved: (value) {
                _name = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.green),
              ),
              validator: (value) {

                if (value!.isEmpty ||
                    !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                  return 'Please enter a valid email address!';
                }
                return null;
              },
              onSaved: (value) {
                _email = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Phone number',
                labelStyle: TextStyle(color: Colors.green),
              ),
              validator: (value) {

                if (value!.isEmpty || !RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                  return 'Please enter a valid 10-digit phone number.';
                }
                return null;
              },
              onSaved: (value) {
                _phone = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.green),
              ),
              obscureText: true,
              validator: (value) {

                if (value!.isEmpty) {
                  return 'Please enter your password.';
                }
                if (value.length < 6) {
                  return 'Password must be at least 6 characters long.';
                }
                return null; //
              },
              onSaved: (value) {
                _password = value!;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                labelStyle: TextStyle(color: Colors.green),
              ),
              obscureText: true,
              validator: (value) {

                if (value!.isEmpty) {
                  return 'Please confirm your password.';
                }
                return null;
              },
              onSaved: (value) {
                _confirmPassword = value!;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _submitForm,
              child: Text('Sign Up'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                ),
              ), // Text on the button
            ),
          ],
        ),
      ),
    );
  }
}
