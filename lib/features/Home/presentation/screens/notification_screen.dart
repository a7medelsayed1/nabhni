import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}
List<NotiModel> notilist=[
  NotiModel(title: 'تنبيه !!', suptitle: 'سيتم قطع الكهرباء في منطقتك اليوم خلال العشر دقائق المقبلة ، من فضلك استعد.'),
  NotiModel(title: 'تنبيه !!', suptitle: 'سيتم قطع الكهرباء في منطقتك اليوم خلال العشر دقائق المقبلة ، من فضلك استعد.'),
  NotiModel(title: 'تنبيه !!', suptitle: 'سيتم قطع الكهرباء في منطقتك اليوم خلال العشر دقائق المقبلة ، من فضلك استعد.'),
  NotiModel(title: 'تنبيه !!', suptitle: 'سيتم قطع الكهرباء في منطقتك اليوم خلال العشر دقائق المقبلة ، من فضلك استعد.'),
  NotiModel(title: 'تنبيه !!', suptitle: 'سيتم قطع الكهرباء في منطقتك اليوم خلال العشر دقائق المقبلة ، من فضلك استعد.'),
  NotiModel(title: 'تنبيه !!', suptitle: 'سيتم قطع الكهرباء في منطقتك اليوم خلال العشر دقائق المقبلة ، من فضلك استعد.'),
  NotiModel(title: 'تنبيه !!', suptitle: 'سيتم قطع الكهرباء في منطقتك اليوم خلال العشر دقائق المقبلة ، من فضلك استعد.'),
  NotiModel(title: 'تنبيه !!', suptitle: 'سيتم قطع الكهرباء في منطقتك اليوم خلال العشر دقائق المقبلة ، من فضلك استعد.'),
  NotiModel(title: 'تنبيه !!', suptitle: 'سيتم قطع الكهرباء في منطقتك اليوم خلال العشر دقائق المقبلة ، من فضلك استعد.'),

];

class NotiModel {
  String title;
  String suptitle;
  NotiModel({required this.title,required this.suptitle});
}
class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const MainAppBar(leadingWidget: BackButton(),
      title: 'الإشعارات',
      ),
      body:Expanded(child: ListView.builder(
        itemCount: notilist.length,
        itemBuilder: (context,index)=>SwipeActionCell(
           key: ObjectKey(notilist[index]),
     trailingActions: <SwipeAction>[
       SwipeAction(
           performsFirstActionWithFullSwipe: true,
           icon: Icon(FontAwesomeIcons.trash,color: Colors.red,),
          
           onTap: (CompletionHandler handler) async {
             
             /// await handler(true) : will delete this row
             /// And after delete animation,setState will called to 
             /// sync your data source with your UI

             await handler(true);
            notilist.removeAt(index);
             setState(() {});
           },
           color: Colors.transparent),
     ],
          child: Container(
            padding: EdgeInsets.all(R.sP(context, 8)),
            height: R.sH(context,85),
            width: R.sW(context, 355),
            margin: EdgeInsets.symmetric(horizontal: R.sW(context, 8),vertical: R.sH(context, 8)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(R.sR(context, 8)),
              color: Mycolors.gridcolor,
              border: Border.all(
                color: Mycolors.mediumcyan
              )
            ),
            child: Row(
              
              children: [
              
              Container(
                margin: EdgeInsets.only(left: R.sW(context, 8)),
                width: R.sH(context, 45),
              height: R.sW(context, 45),
              decoration: BoxDecoration(
                color: Mycolors.notired,
                borderRadius: BorderRadius.circular(R.sR(context, 22.5))
              ),
              child: Image.asset(Images.noticon),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(notilist[index].title,style: Textutils.title22bold.copyWith(fontSize: R.F(context, 18)),),
                     Container(margin: EdgeInsets.only(right: R.sW(context, 120)),child: Text('10:30 صباحًا.29 نوفمبر 2024',style: Textutils.timer12,))
                  ],
                ),
                SizedBox(
                  width: R.sW(context, 263),
                  height: R.sH(context, 35),
                  child: Text(notilist[index].suptitle,style: Textutils.fontcolor14w400.copyWith(color: Mycolors.suptitlecolor),softWrap: true,overflow: TextOverflow.ellipsis,maxLines: 2,))
              ],),
                               
          
            ],),
            ),
        ))) ,
    );
  }
}