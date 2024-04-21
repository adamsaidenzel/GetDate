import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdate/authenticationScreen/registration_screen.dart';
import 'package:getdate/widgets/custom_text_field_widget.dart';


class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});


  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  bool showProgressBar = false;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [


              Image.asset(
                "images/logo.png",
                // width: 100, // adjust as needed
                // height: 100,
              ),

              const Text(
                "GetDate",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),
              ),
              const Text(
                "Login Now To Find A Best Match",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),
              ),

              const SizedBox(
                height: 28,
              ),

              //email
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                 child: CustomTextFieldWidget(
                editingController: emailTextEditingController,
                labelText: "Email",
                iconData: Icons.email_outlined,
                isObscure: false,
               ),
              ),

              const SizedBox(
                height: 28,
              ),
              //pasword
              SizedBox(
                width: MediaQuery.of(context).size.width - 36,
                height: 55,
                  child: CustomTextFieldWidget(
                editingController: passwordTextEditingController,
                labelText: "Password",
                iconData: Icons.lock_outline,
                isObscure: true,
              ),
              ),

              const SizedBox(
                height: 30,
              ),

              //login button
              Container(
                width: MediaQuery.of(context).size.width -36,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  )
                ),
                child: InkWell(
                  onTap: (){

                  },
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 16,
              ),

              // dont have an account create here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),

                  InkWell(
                    onTap: ()
                    {
                      Get.to(RegistrationScreen());
                    },
                    child: const Text(
                      "SignUp Now",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(
                height: 16,
              ),

              showProgressBar == true
                  ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
              )
              : Container(),

              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
