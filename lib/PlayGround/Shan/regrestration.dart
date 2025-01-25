import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  Future<void> _register() async {
    final String apiUrl = "https://mydeveloperkit.com/ttgapitesting/register";
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer 1234567890",
      },
      body: jsonEncode({
        "name": _nameController.text,
        "mobile": _mobileController.text,
        "password": _passwordController.text,
        "address": _addressController.text,
        "businessname": _businessNameController.text,
        "email": _emailController.text,
      }),
    );

    if (response.statusCode == 200) {
      // Registration successful
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registration successful')),
      );
    } else {
      // Registration failed
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Registration failed')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _mobileController,
                decoration: InputDecoration(labelText: 'Mobile'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your mobile number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _addressController,
                decoration: InputDecoration(labelText: 'Address'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _businessNameController,
                decoration: InputDecoration(labelText: 'Business Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your business name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _register();
                  }
                },
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}