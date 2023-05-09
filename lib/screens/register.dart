import 'package:disgo/bottom_nav_back_bar.dart';
import 'package:disgo/circle_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBackBar(
          onPressed: () {
            Navigator.pop(context);
          },
          context: context),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.center,
                  child: Text(
                    'WELCOME TO DISCGO',
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(color: Colors.green),
                  ),
                ),
                circleLogo,
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.center,
                  child: Text(
                    'The official fantasy disc golf app for the DGPT',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.green),
                  ),
                ),
                TextFormFieldProfile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFormFieldProfile extends StatefulWidget {
  const TextFormFieldProfile({Key? key}) : super(key: key);

  @override
  State<TextFormFieldProfile> createState() => _TextFormFieldProfileState();
}

class _TextFormFieldProfileState extends State<TextFormFieldProfile> {
  final GlobalKey<FormFieldState<String>> _passwordFieldKey =
      GlobalKey<FormFieldState<String>>();

  String? _name;
  String? _phoneNumber;
  String? _email;
  String? _password;

  String? _validateName(String? value) {
    if (value?.isEmpty ?? false) {
      return 'Name is required.';
    }
    final RegExp nameExp = RegExp(r'^[A-Za-z ]+$');
    if (!nameExp.hasMatch(value!)) {
      return 'Please enter only aphabetical characters.';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(height: 24.0),
          // "Name" form.
          TextFormField(
            textCapitalization: TextCapitalization.words,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.person),
              hintText: 'What do people call you?',
              labelText: 'Name *',
            ),
            onSaved: (String? value) {
              this._name = value;
              print('name=$_name');
            },
            validator: _validateName,
          ),
          const SizedBox(height: 24.0),
          // "Phone number" form.
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.phone),
              hintText: 'Where can we reach you?',
              labelText: 'Phone Number *',
              prefixText: '+1 ',
            ),
            keyboardType: TextInputType.phone,
            onSaved: (String? value) {
              this._phoneNumber = value;
              print('phoneNumber=$_phoneNumber');
            },
            // TextInputFormatters are applied in sequence.
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
          const SizedBox(height: 24.0),
          // "Email" form.
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              icon: Icon(Icons.email),
              hintText: 'Your email address',
              labelText: 'E-mail',
            ),
            keyboardType: TextInputType.emailAddress,
            onSaved: (String? value) {
              this._email = value;
              print('email=$_email');
            },
          ),
          const SizedBox(height: 24.0),
          // "Life story" form.
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Tell us about yourself',
              helperText: 'Keep it short, this is just a demo.',
              labelText: 'Life story',
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 24.0),
          // "Salary" form.
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Salary',
              prefixText: '\$',
              suffixText: 'USD',
              suffixStyle: TextStyle(color: Colors.green),
            ),
          ),
          const SizedBox(height: 24.0),
          // "Password" form.
          PasswordField(
            fieldKey: _passwordFieldKey,
            helperText: 'No more than 8 characters.',
            labelText: 'Password *',
            onFieldSubmitted: (String value) {
              setState(() {
                this._password = value;
              });
            },
          ),
          const SizedBox(height: 24.0),
          // "Re-type password" form.
          TextFormField(
            enabled: this._password != null && this._password!.isNotEmpty,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              filled: true,
              labelText: 'Re-type password',
            ),
            maxLength: 8,
            obscureText: true,
          ),
        ],
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
  });

  final Key? fieldKey;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      obscureText: _obscureText,
      maxLength: 8,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        filled: true,
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
