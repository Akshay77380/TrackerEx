import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: LoginFormData(),
    );
  }
}

class LoginFormData extends StatefulWidget {
  const LoginFormData({super.key});

  @override
  State<LoginFormData> createState() => _LoginFormDataState();
}

class _LoginFormDataState extends State<LoginFormData> {
  String _selectedGender = 'male';
  final _formKey = GlobalKey<FormState>();
  FocusNode _focusNode = FocusNode();
  void _sumbit() {
    // final isValid = _formKey.currentState.validate();
    // if (isValid) {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: ((context) => VerifyMe())));
    // }
    // _formKey.currentState.save();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                      child: Image.asset('assets/images/logo.png',
                          height: 180, width: 150)),
                  SizedBox(
                    height: 5,
                  ),
                  Card(
                    elevation: 0,
                    child: Column(

                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Expanded(
                              flex: 1,
                            child: ListTile(
                              leading: Radio<String>(
                                value: 'male',
                                groupValue: _selectedGender,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedGender = value!;
                                  });
                                },
                              ),
                              title: const Text('Male'),
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Expanded(
                              flex: 1,
                            child: ListTile(
                              leading: Radio<String>(
                                value: 'female',
                                groupValue: _selectedGender,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedGender = value!;
                                  });
                                },
                              ),
                              title: const Text('FeMale'),
                            ),
                          ),
                        ),
                        Text(_selectedGender == 'male'
                            ? 'Hello gentlement!'
                            : 'Hi lady!')
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
