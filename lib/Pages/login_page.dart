import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_tutorial/Pages/json_offline_mapping.dart';
import 'package:velocity_x/velocity_x.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isClicked = false;
  TextEditingController? userName = TextEditingController();
  TextEditingController? userPass = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Logging() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isClicked = true;
      });
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: "Welcome,\n${userName?.text.toString()}"
              .text
              .bold
              .xl
              .makeCentered()));
      await Future.delayed(Duration(seconds: 2));

      // print(
      //     "Welcome , \n${userName?.text.toString()} , ${userPass?.text.toString()}");
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        isClicked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Form(
      key: _formKey,
      child: Column(
        children: [
          Image.network(
              'https://img.freepik.com/free-photo/computer-security-with-login-password-padlock_107791-16191.jpg?w=900&t=st=1709493654~exp=1709494254~hmac=391aa6a1f9eb2d2784a9fc108359fb4fc187041e87496eac65f0e7ae5c38608f'),
          "Welcome".text.xl4.bold.makeCentered(),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty)
                return "Please Enter Your Name";
              else
                return null;
            },
            controller: userName,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: "name Here",
                labelText: "Name",
                suffixIcon: Icon(CupertinoIcons.mail_solid)),
          ).px32().py2(),
          TextFormField(
            validator: (value) {
              if (value!.isEmpty)
                return "Password Can't be Empty";
              else if (value!.isNotEmpty && value!.length <= 8)
                return "Minimum Length of Password is 8";
              else
                return null;
            },
            obscureText: true,
            controller: userPass,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: "password",
                labelText: "Password",
                suffixIcon: Icon(CupertinoIcons.lock_fill)),
          ).px32(),
          InkWell(
              onTap: () async => Logging(),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 1000),
                decoration: BoxDecoration(
                    color: Vx.teal500,
                    borderRadius: BorderRadius.circular(isClicked ? 50 : 10)),
                width: isClicked ? 50 : 150,
                height: 50,
                child: isClicked
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : "Login".text.bold.xl.white.make().centered(),
              ).p32()),
        ],
      ),
    ))));
  }
}
