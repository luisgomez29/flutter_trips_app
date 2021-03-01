import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review("assets/img/traveler_avatar.jpg", "Andrea Ramirez"),
        Review("assets/img/girl.webp", "Carolina Pabón"),
        Review("assets/img/people.jpg", "Juan Perez"),
      ],
    );
  }
}
