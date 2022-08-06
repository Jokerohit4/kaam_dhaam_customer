import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*class CardStyle extends StatelessWidget {
  final String usertype;
  final Color colour;
  final Widget Direct;
  final Image img;
  final Image img2;
  final emptyp;
  //var myGroup = AutoSizeGroup();
 // final _firestore = FirebaseFirestore.instance;
  CardStyle(
      {this.usertype,
      @required this.colour,
      this.Direct,
      this.img,
      this.img2,
      this.emptyp});
  @override
  Widget build(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width / 1.2,
      height: MediaQuery.of(context).size.height / 6,
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
            ),
            color: colour,
          child: ElevatedButton(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: img,
                  ),
                 Text(
                    usertype,
                    style: kLableTextStyle,
                    maxLines: 1,
                    //group: myGroup,
                  ),
                ],
              ),
              onPressed: () {
             //   _firestore.collection('Details').add({
              //    'Employee Type': emptyp,
                });
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Direct));
              }),
        ),
      ),
    );
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Widget>('Direct', Direct));
  }
}

class Botons extends StatelessWidget {
  Botons({
    @required this.txt,
    @required this.color,
    @required this.onPres,
    this.icon,
  });
  final String txt;
  final Color color;
  final Function onPres;
  final IconData icon;
  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          elevation: 5.0,
          color: color,
          borderRadius: BorderRadius.circular(30.0),
          child: MaterialButton(
            onPressed: () {},
            minWidth: 200.0,
            height: 42.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  txt,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

/*class MyPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}*/

class NeButton extends StatelessWidget {
  NeButton({@required this.char});
  final String char;
  @override
  Widget build(BuildContext context) => Expanded(
        flex: 1,
        child: Container(
          width: 58,
          height: 58,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(12, 1),
                blurRadius: 26,
                color: Color(0xffaaaaaa).withOpacity(0.1),
              ),
            ],
          ),
          child: Text(
            char,
            style: GoogleFonts.sourceSansPro(
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: Colors.blue[800],
            ),
          ),
        ),
      );
}

class OuterClippedPart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height / 4);
    path.cubicTo(size.width * 0.55, size.height * 0.16, size.width * 0.85,
        size.height * 0.05, size.width / 2, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class InnerClippedPart extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width * 0.7, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height * 0.1);
    path.quadraticBezierTo(
        size.width * 0.8, size.height * 0.11, size.width * 0.7, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

/*class _TransitionListTile extends StatelessWidget {
  const _TransitionListTile({
    this.onTap,
    this.title,
    this.subtitle,
  });

  final GestureTapCallback onTap;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      leading: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.black54,
          ),
        ),
        child: const Icon(
          Icons.play_arrow,
          size: 35,
        ),
      ),
      onTap: onTap,
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}*/

/*class DatabaseEmployeeManager {
  final CollectionReference details =
      FirebaseFirestore.instance.collection('Details');

  Future<void> createUserData(
    String name,
    String gender,
    String dob,
    String uid,
    int adhaarno,
    String emptyp,
    String address,
  ) async {
    return await details.doc(uid).set({
      'Name': name,
      'Sex': gender,
      'D.O.B.': dob,
      'Adhaar Number': adhaarno,
      'Employee Type': emptyp,
      'Address': address,
    });
  }

  Future updateUserList(
    String name,
    String gender,
    String dob,
    String uid,
    int adhaarno,
    String emptyp,
    String address,
  ) async {
    return await details.doc(uid).update({
      'Name': name,
      'Sex': gender,
      'D.O.B.': dob,
      'Adhaar Number': adhaarno,
      'Employee Type': emptyp,
      'Address': address,
    });
  }

  Future getUsersList() async {
    List itemsList = [];

    try {
      await details.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data);
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}*/

class DatabaseEmployerManager {
  final CollectionReference user =
      FirebaseFirestore.instance.collection('user');

  Future<void> createUserData(
    String fname,
    String lname,
    String sex,
    String dob,
    String uid,
    String address,
    int phno,
  ) async {
    return await user.doc(uid).set({
      'First Name': fname,
      'Last Name': lname,
      'Sex': sex,
      'D.O.B.': dob,
      'Address': address,
      'Phone No.': phno,
    });
  }

  Future updateUserList(
    String fname,
    String lname,
    String sex,
    String dob,
    String uid,
    String address,
    int phno,
  ) async {
    return await user.doc(uid).update({
      'First Name': fname,
      'Last Name': lname,
      'Sex': sex,
      'D.O.B.': dob,
      'Address': address,
      'Phone No.': phno,
    });
  }

  Future getUsersList() async {
    List itemsList = [];

    try {
      await user.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data);
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}*/
