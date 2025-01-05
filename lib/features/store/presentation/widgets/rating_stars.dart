import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class RatingStars extends StatefulWidget {
  const RatingStars({
    super.key,
  });

  @override
  State<RatingStars> createState() => _RatingStarsState();
}
double rating=0;

class _RatingStarsState extends State<RatingStars> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Container(
          margin: EdgeInsets.only(top: R.sH(context, 4)),
          height: R.sH(context, 16),
          width: R.sW(context, 80),
          child: RatingBar.builder(
            itemSize: 16,
             initialRating: rating,
             minRating: 1,
             direction: Axis.vertical,
             allowHalfRating: true,
             itemCount: 5,
             itemPadding: EdgeInsets.only(right: 1),
             itemBuilder: (context, _) => Icon(
               Icons.star,
               color: Colors.orange,
             ),
             onRatingUpdate: (ratingx) {
              rating=ratingx;
               print(rating);
               setState(() {
                 
               });
             },
          ),
        ),
       Transform.translate(child:Text('$rating (9056 تقييم)',style: Textutils.fontcolor14w400,),offset: Offset(0,3) ,)

      ],
    );
  }
}




