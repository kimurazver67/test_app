import 'package:flutter/material.dart';
import 'package:test_app/Screens/resetpass_screen.dart';
import 'package:test_app/customIcons.dart';

class EnterPass extends StatefulWidget {
  const EnterPass({Key? key}) : super(key: key);

  @override
  State<EnterPass> createState() => _EnterPass();
}

class _EnterPass extends State<EnterPass> {
  late TextEditingController controllerText;
  bool isActive = false;
  bool _isVisible = false;
  final formKey = GlobalKey<FormState>();

  final ButtonStyle outlineButtonStyle1 = ButtonStyle(
    textStyle: MaterialStateProperty.all(
      const TextStyle(
        color: Color.fromRGBO(54, 131, 252, 1),
      ),
    ),
    shape: MaterialStateProperty.all(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    ),
    minimumSize: MaterialStateProperty.all(
      const Size(182.36, 47.33),
    ),
    side: MaterialStateProperty.all(
      const BorderSide(
        color: Color.fromRGBO(54, 131, 252, 1),
      ),
    ),
  );
  final ButtonStyle outlineButtonStyle2 = ButtonStyle(
    textStyle: MaterialStateProperty.all(
      const TextStyle(
        color: Color.fromRGBO(142, 143, 156, 1),
      ),
    ),
    shape: MaterialStateProperty.all(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    ),
    minimumSize: MaterialStateProperty.all(
      const Size(182.36, 47.33),
    ),
    side: MaterialStateProperty.all(
      const BorderSide(
        color: Color.fromRGBO(225, 225, 225, 1),
      ),
    ),
  );
  @override
  void initState() {
    controllerText = TextEditingController();
    controllerText.addListener(() {
      final isActive = controllerText.text.isNotEmpty;
      setState(() {
        this.isActive = isActive;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<State> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 127,
              ),
              child: Container(
                height: 80.22,
                width: 153.07,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Logo 3.png'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 71.78, left: 87, right: 87),
              child: Text(
                'New Password',
                style: TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 6),
              child: Text(
                "Enter your new password. Please try to use both numbers and english letters. You need to enter between 6 to 10 characters.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(149, 149, 149, 1),
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: TextFormField(
                  key: formKey,
                  validator: (value) {
                    if (value!.isEmpty || value.length < 6) {
                      return 'Enter correct password';
                    } else {}
                  },
                  controller: controllerText,
                  style: const TextStyle(
                      fontFamily: 'DMSans',
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                  textAlign: TextAlign.start,
                  maxLength: 10,
                  obscureText: !_isVisible,
                  obscuringCharacter: '*',
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                      counterText: "",
                      hintText: 'New Password',
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(142, 143, 156, 1),
                      ),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isVisible = !_isVisible;
                          });
                        },
                        icon: _isVisible
                            ? const Icon(
                                MyFlutterApp.eye_show_filled_icon_200617,
                                color: Color.fromRGBO(54, 131, 252, 1),
                              )
                            : const Icon(
                                MyFlutterApp.eye_show_filled_icon_200617,
                                color: Color.fromRGBO(142, 143, 156, 1),
                              ),
                      ))),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 67),
              child: OutlinedButton(
                  onPressed: isActive
                      ? () {
                          setState(() {
                            isActive = false;
                            if (formKey.currentState!.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ResetPassEmail()));
                            } else {}
                          });
                        }
                      : null,
                  child: Text('Confirm',
                      style: isActive
                          ? TextStyle(color: Color.fromRGBO(54, 131, 252, 1))
                          : TextStyle(
                              color: Color.fromRGBO(142, 143, 156, 1),
                            )),
                  style: isActive ? outlineButtonStyle1 : outlineButtonStyle2),
            )
          ],
        ),
      )),
    );
  }
}
