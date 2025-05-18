import 'package:flutter/material.dart';
import 'package:views/input.dart';
import 'userdata.dart';


class Registrationpage extends StatefulWidget {
  const Registrationpage({super.key});

  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  showsnack(context,message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildinputfield(name,"User name",TextInputType.name,false),
              SizedBox(height: 20),
              buildinputfield(email, "Email address", TextInputType.emailAddress, false),
              SizedBox(height: 20),
              buildinputfield(pass, "Password", TextInputType.numberWithOptions(), true),
              FloatingActionButton(onPressed: (){
                  var namevalue = name.text.trim();
                  var emailvalue = email.text.trim();
                  var passvalue = pass.text.trim();

                  if (namevalue.isEmpty || emailvalue.isEmpty || passvalue.isEmpty) {
                    showsnack(context, "Enter valid data");
                  } else if (!emailvalue.contains('@')) {
                    showsnack(context, "Enter valid email address");
                  } else if (check(passvalue)) {
                    showsnack(context, "User already exists");
                  } else {
                    add(passvalue,namevalue,emailvalue);
                    showsnack(context, "New user created");
                  }

                },
                child: Text("Click"),
              )
            ],
          ),
        ),
      )
    );
  }
}