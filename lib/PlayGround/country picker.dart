import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class CountryCodeSelector extends StatefulWidget {
  @override
  _CountryCodeSelectorState createState() => _CountryCodeSelectorState();
}

class _CountryCodeSelectorState extends State<CountryCodeSelector> {
  String countryCode = "+91"; // Default country code (US)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Country Code")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selected Country Code: $countryCode",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showCountryPicker(
                  context: context,
                  showPhoneCode: true, // Display country codes
                  onSelect: (Country country) {
                    setState(() {
                      countryCode = "+${country.phoneCode}";
                    });
                  },
                );
              },
              child: Text("Select Country"),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CountryCodeSelector(),
  ));
}
