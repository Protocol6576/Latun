import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  bool _hidePass = true;
  bool _hideConfirm = true;

  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _storyController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmController = TextEditingController();
  final _FormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _storyController.dispose();
    _passController.dispose();
    _confirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Form'),
        centerTitle: true,
      ),
      body: Form(
        key: _FormKey ,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Full Name*',
                hintText: 'What do people call you?',
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
              validator: (value)=> _validateName(value),
            ),
            const SizedBox(height: 25),
            TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(
                labelText: 'Phone Number*',
                hintText: 'Where can we reach you?',
                helperText: 'Phone format (XXX) XXX - XXXX',
                prefixIcon: Icon(Icons.call),
                suffixIcon: Icon(
                  Icons.delete_outline,
                  color: Colors.red,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
              ),
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter(RegExp(r'^[()\d-]{1,15}$'), allow: true)
              ],
              validator: (value) => _validatePhoneNumber(value)?null:'Phone number must be entered as (###)###-####',
            ),
            const SizedBox(height: 25),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'EMail Adress',
                hintText: 'Enter e main adress',
                icon: Icon(Icons.mail),
              ),
              keyboardType: TextInputType.emailAddress,
              validator: _validateEmail,
            ),
            const SizedBox(height: 25),
            TextFormField(
              controller: _storyController,
              decoration: const InputDecoration(
                labelText: 'Life Story',
                hintText: 'Tell us about your self',
                helperText: 'Keep is short, this is just a demo',
                border: OutlineInputBorder(),
              ),
              maxLines: 3,
              inputFormatters: [LengthLimitingTextInputFormatter(100)],
            ),
            const SizedBox(height: 25),
            TextFormField(
              obscureText: _hidePass,
              maxLength: 8,
              controller: _passController,
              decoration: InputDecoration(
                labelText: 'Password*',
                hintText: 'Enter the password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _hidePass ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _hidePass = !_hidePass;
                    });
                  },
                ),
                icon: const Icon(Icons.security),
              ),
              validator: (value) => _validatePassword(value),
            ),
            const SizedBox(height: 25),
            TextFormField(
              obscureText: _hideConfirm,
              maxLength: 8,
              controller: _confirmController,
              decoration: InputDecoration(
                labelText: 'Confirm Password*',
                hintText: 'Confirm the password',
                suffixIcon: IconButton(
                  icon: Icon(
                    _hideConfirm ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _hideConfirm = !_hideConfirm;
                    });
                  },
                ),
                icon: const Icon(Icons.security),
              ),
              validator: (value) => _validatePassword(value),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: _SubmitForm,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.indigo,
                ),
              ),
              child: const Text('Submit Form'),
            ),
          ],
        ),
      ),
    );
  }

  void _SubmitForm() {
    if(_FormKey.currentState!.validate()){
      _FormKey.currentState!.save();
      print('Name :${_nameController.text}');
      print('Phone :${_phoneController.text}');
      print('Email :${_emailController.text}');
      print('Story :${_storyController.text}');
      print('Form is valid');
    }
    else{
      print('Form is not valid! Please reviw and correct');
    }
  }
  String? _validateName(String? value){
    final _nameExp = RegExp(r'^[A-Za-z]+$');
    if (value!.isEmpty){
      return 'Name is required';
    }
    else if (!_nameExp.hasMatch(value)){
      return 'Please enter alphabetical characters';
    }
    else {
      return null;
    }
  }
  bool _validatePhoneNumber(String? input){
    final _phoneExp = RegExp(r'^\(\d\d\d\)\d\d\d-\d\d\d\d');
    return _phoneExp.hasMatch(input!);    
  }
  String? _validateEmail(String? value){
    if (value!.isEmpty){
      return 'Email cannot be emputy';
    }
    else if (!_emailController.text.contains('@')){
      return 'Invaid email address';
    }
    else {
      return null;
    }
  }
  String? _validatePassword(String? value){
    if (_passController.text.length != 8){
      return '8 charcters required for password';
    }
    else if (_confirmController.text != _passController.text){
      return 'Password does not match';
    }
    else {
      return null;
    }
  }
}