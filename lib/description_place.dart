import 'package:flutter/material.dart';
import 'button_purple.dart';

Widget fullStarIconWidget() {
  return Icon(
    Icons.star,
    color: Color(0XFFF2C611),
  );
}

Widget halfStarIconWidget() {
  return Icon(
    Icons.star_half,
    color: Color(0XFFF2C611),
  );
}

Widget emptyStarIconWidget() {
  return Icon(
    Icons.star_border,
    color: Color(0XFFF2C611),
  );
}

Widget validateStarIconWidget(double numberOfStars) {
  if (numberOfStars >= 1.0) {
    return fullStarIconWidget();
  }

  if (numberOfStars >= 0.5) {
    return halfStarIconWidget();
  }

  return emptyStarIconWidget();
}

Widget starWidget(double numberOfStars) {
  return Container(
    margin: EdgeInsets.only(top: 323.0, right: 3.0),
    child: validateStarIconWidget(numberOfStars),
  );
}

Widget starsWidget(double numberOfStars) {
  List<Widget> rowStars = [];

  for (int i = 1; i <= 5; i++) {
    rowStars.add(starWidget(numberOfStars));
    numberOfStars--;
  }

  return Row(children: rowStars);
}

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  double stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final title_stars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
              fontFamily: "Lato",
            ),
          ),
        ),
        Row(
          children: [starsWidget(stars)],
        )
      ],
    );

    final description = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a),
          fontFamily: "Lato",
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title_stars,
        description,
        ButtonPurple("Navigate"),
      ],
    );
  }
}
