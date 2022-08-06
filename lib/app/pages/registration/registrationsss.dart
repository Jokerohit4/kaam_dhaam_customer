/*class RegistrationScreen extends StatelessWidget {
  // final _auth = FirebaseAuth.instance;
  AnimationController _controller;
  String email;
  String password;
  bool showSpinner = false;
  final int _currentStep = 0;
  String title = 'Stepper (Custom)';
  final FAStepperType _stepperType = FAStepperType.vertical;
  final _key = GlobalKey<FormState>();

  final List<FAStep> _stepper = [
    FAStep(
      title: Row(
        children: [
          Icon(
            Icons.person,
            color: Colors.blue[800],
            size: 35,
            textDirection: TextDirection.ltr,
          ),
          Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              Text(
                'NAME',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.grey.withOpacity(0.5),
                  letterSpacing: 5,
                ),
              ),
            ],
          ),
        ],
      ),
      isActive: true,
      content: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'First Name cannot be empty';
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.name,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black),
            onChanged: (value) {
              //  email = value;
            },
            cursorWidth: 3,
            cursorColor: Colors.blue[800],
            decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your name', labelText: 'First Name'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Last Name cannot be empty';
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.name,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black),
            onChanged: (value) {
              //  email = value;
            },
            cursorWidth: 3,
            cursorColor: Colors.blue[800],
            decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your last name', labelText: 'Last Name'),
          ),
        ],
      ),
    ),
    FAStep(
      title: Row(
        children: [
          Icon(
            Icons.phone,
            color: Colors.blue[800],
            size: 35,
            textDirection: TextDirection.ltr,
          ),
          Text(
            '&',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.blue[800],
              letterSpacing: 5,
            ),
          ),
          Icon(
            Icons.calendar_today_rounded,
            color: Colors.blue[800],
            size: 35,
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Phone No. & D.O.B.',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.grey.withOpacity(0.5),
                  letterSpacing: 5,
                ),
              ),
            ],
          ),
        ],
      ),
      isActive: true,
      content: Column(
        children: [
          /* RaisedButton(
            child: Text('Pick a date'),
            onPressed: () {
              Future.delayed(Duration.zero).then((context) {
                showDatePicker(
                  context: context,
                  initialDate: DateTime(2015),
                  firstDate: DateTime(1990),
                  lastDate: DateTime.now(),
                ).then((value) {});
              });
            },
          ),*/
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Birth Date cannot be empty';
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.datetime,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black),
            onChanged: (value) {
              //email=value;
            },
            decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your birth date', labelText: 'D.O.B'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Phone Number cannot be empty';
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.phone,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black),
            onChanged: (value) {
              //  email = value;
            },
            decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your phone number', labelText: 'Phone Number'),
          ),
        ],
      ),
    ),
    FAStep(
      title: Row(
        children: [
          Icon(
            Icons.home_outlined,
            color: Colors.blue[800],
            size: 40,
            textDirection: TextDirection.ltr,
          ),
          Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              Text(
                'Address',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.grey.withOpacity(0.5),
                  letterSpacing: 5,
                ),
              ),
            ],
          ),
        ],
      ),
      isActive: true,
      content: TextFormField(
        keyboardType: TextInputType.streetAddress,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.black),
        onChanged: (value) {
          //  email = value;
        },
        decoration: kTextFieldDecoration.copyWith(
            hintText: 'Enter your address', labelText: 'Address'),
      ),
    ),
    FAStep(
      title: Row(
        children: [
          Icon(
            Icons.email_outlined,
            color: Colors.blue[800],
            size: 38,
            textDirection: TextDirection.ltr,
          ),
          Text(
            '&',
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.blue[800],
              letterSpacing: 5,
            ),
          ),
          Icon(
            Icons.lock_outlined,
            color: Colors.blue[800],
            size: 35,
            textDirection: TextDirection.ltr,
          ),
          Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              Text(
                'Email and Password',
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.grey.withOpacity(0.5),
                  letterSpacing: 5,
                ),
              ),
            ],
          ),
        ],
      ),
      isActive: true,
      content: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Email cannot be empty';
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.emailAddress,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
            onChanged: (value) {
              // email = value;
            },
            decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your email', labelText: 'Email'),
          ),
          const SizedBox(
            height: 10.0,
          ),
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Password cannot be empty';
              } else if (value.length <= 8) {
                return 'Password cannot be less than 8 characters';
              } else {
                return null;
              }
            },
            obscureText: true,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.black),
            onChanged: (value) {
              //password = value;
            },
            decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your password', labelText: 'Password'),
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) => SafeArea(
        child: ModalProgressHUD(
          inAsyncCall: showSpinner,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 5.0,
                      ),
                      Expanded(
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.oswald(
                            fontSize: 38,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Expanded(
                        child: Container(
                          child: FAStepper(
                            stepNumberColor: Colors.grey,
                            physics: const ClampingScrollPhysics(),
                            steps: _stepper,
                            type: _stepperType,
                            currentStep: _currentStep,
                            onStepTapped: (step) {
/* setState(() {
                                this._currentStep = step;
                              });
                              print('onS');*/
                            },
                            onStepContinue: () {
                           /*   setState(() {
                                if (this._currentStep <
                                    this._stepper.length - 1)
                                  this._currentStep = this._stepper.length + 1;
                                else
                                  _currentStep = 0;
                              });
                              print('onS');*/
                            },
                            onStepCancel: () {
                          /*    setState(() {
                                if (this._currentStep > 0) {
                                  this._currentStep = this._stepper.length - 1;
                                } else {
                                  _currentStep = 0;
                                }
                              });
                              print('onS');*/
                            },
                          ),
                        ),
                      ),
                      Botons(
                          txt: 'Create an account',
                          color: Colors.blueAccent,
                          onPres: () async {
                            //if (_key.currentState.validate()) {
                            await Get.to<Navigator>(RegistrationScreen());
                          }),
                      /*  try {
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);
                          if (newUser != null)
                            Navigator.pushNamed(context, Requirements.id);
                          setState(() {
                            showSpinner = false;
                          });
                        } catch (e) {
                          print(e);
                        }*/
                      // },
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              NeButton(char: 'G'),
                              const SizedBox(width: 10),
                              NeButton(char: 'f'),
                            ],
                          ),
                          Text(
                            'Sign up with',
                            style: GoogleFonts.abrilFatface(
                              fontSize: 18,
                              color: Colors.black26.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2.0,
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Already have an account?',
                              style: GoogleFonts.ubuntu(
                                fontSize: 15,
                                color: Colors.grey.withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'Sign in',
                              style: GoogleFonts.ubuntu(
                                fontSize: 15,
                                color: Colors.blue[800],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ClipPath(
                    clipper: OuterClippedPart(),
                    child: Container(
                      color: Colors.blue[400],
                    ),
                  ),
                  ClipPath(
                    clipper: InnerClippedPart(),
                    child: Container(
                      color: Colors.blue[900],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}*/
