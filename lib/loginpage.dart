import 'package:flutter/material.dart';
import 'package:views/input.dart';
import 'userdata.dart';


class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  showsnack(context,message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  TextEditingController name = TextEditingController();
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
                    buildinputfield(pass, "Password", TextInputType.numberWithOptions(), true),
                    FloatingActionButton(onPressed: (){
                        var namevalue = name.text.trim();
                        var passvalue = pass.text.trim();

                        if (namevalue.isEmpty || passvalue.isEmpty) {
                          showsnack(context, "Enter valid data");
                        }else if (check(passvalue)) {
                          showsnack(context, "It will go to next page");
                        } else {
                          showsnack(context, "Create user in Registration");
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