import 'package:cine_stream_ui/constant/colors.dart';
import 'package:cine_stream_ui/controller/authController.dart';
import 'package:cine_stream_ui/reusable_widget/auth_reusable/textFile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AutuScreen extends StatefulWidget {
  const AutuScreen({super.key});

  @override
  State<AutuScreen> createState() => _AutuScreenState();
}

class _AutuScreenState extends State<AutuScreen> {
  final authController = Get.put(AuthController());
  final lUserName = TextEditingController(text: "admin");
  final lPassword = TextEditingController(text: "12l;woiEUY892348273434");
  final sUsername = TextEditingController(text: "admin");
  final sPassword = TextEditingController(text: "12l;woiEUY892348273434");
  final sEmail = TextEditingController(text: "admin1234@gmail.com");
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackAppColors,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backApp.png'),
            fit: BoxFit.cover,
            opacity: 0.3,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 160),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey !",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 2,
                      spreadRadius: 2,
                    ),
                  ],
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          child: TabBar(
                              isScrollable: false,
                              dividerColor: Colors.transparent,
                              indicatorWeight: 5,
                              splashFactory: NoSplash.splashFactory,
                              indicatorSize: TabBarIndicatorSize.tab,
                              indicator: UnderlineTabIndicator(
                                borderSide:
                                    BorderSide(width: 5, color: Colors.white),
                                insets: EdgeInsets.symmetric(horizontal: 60.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              tabs: [
                                Tab(child: TabLabel(TabName: "Login")),
                                Tab(child: TabLabel(TabName: "Sign Up"))
                              ]),
                        ),
                      ),
                      SizedBox(height: 20),
                      Expanded(
                        child: TabBarView(children: [
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    labelTextFilde(
                                      Label: "Username",
                                    ),
                                    TextFieldReusabel(
                                      suffixIcon: Icons.person,
                                      controller: lUserName,
                                    ),
                                    SizedBox(height: 15),
                                    labelTextFilde(Label: "Password"),
                                    TextFieldReusabel(
                                      obscureText: showPassword,
                                      controller: lPassword,
                                      onPressedFunction: () {
                                        setState(() {
                                          showPassword = !showPassword;
                                        });
                                      },
                                      suffixIcon: showPassword
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility_outlined,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8),
                                          child: Text(
                                            "Forgot Password?",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 40),
                                    InkWell(
                                        onTap: () {
                                          authController.login(
                                            lUserName.text.trim(),
                                            lPassword.text.trim(),
                                          );
                                        },
                                        child: btnAuth(LabelBTN: "Login")),
                                  ]),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  labelTextFilde(Label: "Username"),
                                  TextFieldReusabel(
                                      suffixIcon: Icons.person,
                                      controller: sUsername),
                                  SizedBox(height: 15),
                                  labelTextFilde(Label: "Email"),
                                  TextFieldReusabel(
                                      suffixIcon: Icons.mail,
                                      controller: sEmail),
                                  SizedBox(height: 15),
                                  labelTextFilde(Label: "Password"),
                                  TextFieldReusabel(
                                    obscureText: showPassword,
                                    onPressedFunction: () {
                                      setState(() {
                                        showPassword = !showPassword;
                                      });
                                    },
                                    suffixIcon: showPassword
                                        ? Icons.visibility_off_outlined
                                        : Icons.visibility_outlined,
                                    controller: sPassword,
                                  ),
                                  SizedBox(height: 30),
                                  InkWell(
                                      onTap: () {
                                        authController.register(
                                          sUsername.text.trim(),
                                          sEmail.text.trim(),
                                          sPassword.text.trim(),
                                        );
                                      },
                                      child: btnAuth(LabelBTN: "Sign Up")),
                                ],
                              ),
                            ),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
