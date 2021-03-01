import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/traveler_avatar.jpg";
  String name = "Santiago";
  String details = "1 Review / 5 photos";
  String comment = "There is an amazing place in Sri";

  Review(this.pathImage, this.name);

  @override
  Widget build(BuildContext context) {
    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 17.0, fontFamily: "Lato", color: Color(0xFFa3a5a7)),
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 13.0, fontFamily: "Lato"),
      ),
    );

    final userComment = Container(
      width: MediaQuery.of(context).size.width * 0.65,
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: "Lato",
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfo, userComment],
    );

    final avatar = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      height: 80.0,
      width: 80.0,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(pathImage),
      ),
    );

    return Row(
      children: [avatar, userDetails],
    );
  }
}
