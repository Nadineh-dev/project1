import 'package:flutter/material.dart';
import 'package:project2/pages/signup_page.dart';
import 'package:project2/widgets/button.dart';
import 'package:project2/widgets/textfield.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Spacer(flex: 1,),
          Image.asset(
            "assets/images/undraw_Login_re_4vu2.png",
            height: 330,
            width: 330,
          ),
          Text(
            "Welcome back !",
            style: TextStyle(color: Color(0xff71c6db), fontSize: 36, fontWeight:FontWeight.bold),
          ),
          Spacer(flex: 1,),
          CustomTextField(hinttext: "Enter your email",icon: Icon(Icons.mail,color: Color(0xff71c6db),),),
          CustomTextField(hinttext: "Enter your password",icon: Icon(Icons.lock,color: Color(0xff71c6db),),),
          CustomButton(buttonText: "Log in",),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("don\'t have a account ?"),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignUpPage();
                }));
              },
              child: Text("   Sign up",style: TextStyle(color: Color(0xff71c6db)),)
              ),
          ],),
          Spacer(flex: 3,)
        ]),
      ),
    );
  }
}
