import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'home_page.dart'; // Import the home page file

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController fathersNameController = TextEditingController();
  TextEditingController mothersNameController = TextEditingController();
  TextEditingController educationQualificationController =
      TextEditingController();
  TextEditingController onlyChildController = TextEditingController();
  TextEditingController familyIncomeController = TextEditingController();

  DateTime? selectedDate;

  void _showRegistrationSuccessPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Registration Successful'),
          content: Text('Thank you for registering with Scholify!'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(name: nameController.text),
                  ),
                );
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scholify Registration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Hero(
                    tag: 'profilePicture',
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage('assets/Splash_Screen_Scholify.png'),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                _buildTextFormField('Name', nameController),
                _buildTextFormField('Surname', surnameController),
                _buildPhoneNumberField(),
                _buildTextFormField('Address', addressController),
                _buildTextFormField('Gender', genderController),
                _buildDateOfBirthField(context),
                _buildTextFormField('Father\'s Name', fathersNameController),
                _buildTextFormField('Mother\'s Name', mothersNameController),
                _buildTextFormField('Education Qualification',
                    educationQualificationController),
                _buildOnlyChildField(),
                _buildFamilyIncomeField(),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Handle registration logic here
                        // You can access the entered data using the controllers
                        _showRegistrationSuccessPopup(context);
                      }
                    },
                    child: Text('Register'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextFormField(
      String labelText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $labelText';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildPhoneNumberField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: phoneController,
        keyboardType: TextInputType.phone,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(10),
        ],
        decoration: InputDecoration(
          labelText: 'Phone Number',
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter Phone Number';
          } else if (value.length < 10) {
            return 'Phone Number must be at least 10 digits';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildDateOfBirthField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: dobController,
        readOnly: true,
        decoration: InputDecoration(
          labelText: 'Date of Birth',
          border: OutlineInputBorder(),
        ),
        onTap: () async {
          final DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );

          if (pickedDate != null && pickedDate != selectedDate) {
            setState(() {
              selectedDate = pickedDate;
              dobController.text = DateFormat.yMd().format(selectedDate!);
            });
          }
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter Date of Birth';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildOnlyChildField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Text('Only Child of Parents'),
          SizedBox(width: 10),
          Switch(
            value: onlyChildController.text.toLowerCase() == 'yes',
            onChanged: (value) {
              setState(() {
                onlyChildController.text = value ? 'Yes' : 'No';
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFamilyIncomeField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: familyIncomeController,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          labelText: 'Family Income',
          border: OutlineInputBorder(),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter Family Income';
          }
          return null;
        },
      ),
    );
  }
}
