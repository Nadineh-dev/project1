import 'package:flutter/material.dart';
import 'package:project2/widgets/button.dart';
import 'package:project2/widgets/textfield.dart';


class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Image.asset("assets/images/Screenshot 2023-03-20 025605.png",height: 180,width: 300,),
          Text(
            "Sign Up",
            style: TextStyle(color: Color(0xff71c6db), fontSize: 36, fontWeight:FontWeight.bold),
          ),
          CustomTextField(hinttext: "First name",icon: Icon(Icons.person,color: Color(0xff71c6db),),),
          CustomTextField(hinttext: "Last name",icon: Icon(Icons.person,color: Color(0xff71c6db),),),
          CustomTextField(hinttext: "Email",icon: Icon(Icons.mail,color: Color(0xff71c6db),),),
          CustomTextField(hinttext: "Password",icon: Icon(Icons.lock,color: Color(0xff71c6db),),),
          CustomTextField(hinttext: "Phone number",icon: Icon(Icons.phone,color: Color(0xff71c6db),),),
          CustomTextField(hinttext: "Number of children",icon: Icon(Icons.child_care,color: Color(0xff71c6db),),),
          CustomButton(buttonText: "Sign up",),
          
        ]),
      ),
    );
  }
}
