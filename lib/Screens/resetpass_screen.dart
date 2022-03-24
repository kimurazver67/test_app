import 'package:flutter/material.dart';

import 'verification_code.dart';

class ResetPassEmail extends StatefulWidget {
  const ResetPassEmail({Key? key}) : super(key: key);

  @override
  State<ResetPassEmail> createState() => _ResetPassEmailState();
}

class _ResetPassEmailState extends State<ResetPassEmail> {
  late TextEditingController controllerText;
  bool isActive = false;

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
                'Reset Password',
                style: TextStyle(
                    fontFamily: 'DMSans',
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 6),
              child: Text(
                "If you've forgotten your password enter your e-mail address and we send you a verification code, then you can reset your password.",
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
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: controllerText,
                style: const TextStyle(
                    fontFamily: 'DMSans',
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
                textAlign: TextAlign.start,
                decoration: const InputDecoration(
                    hintText: 'Enter your Email ID',
                    hintStyle: const TextStyle(
                      color: const Color.fromRGBO(142, 143, 156, 1),
                    ),
                    border: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      ),
                    )),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 67),
              child: OutlinedButton(
                  onPressed: isActive
                      ? () {
                          setState(() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const VerificatioCode()));
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
