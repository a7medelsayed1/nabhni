import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';
import 'package:nabhni/features/common/widgets/appbar.dart';
import 'package:nabhni/features/store/presentation/widgets/store_item_horizontal.dart';
import 'package:nabhni/features/store/presentation/widgets/store_item_vertical.dart';

class BestsellerScreen extends StatefulWidget {
   BestsellerScreen({super.key});

  @override
  State<BestsellerScreen> createState() => _BestsellerScreenState();
}

class _BestsellerScreenState extends State<BestsellerScreen> {
 bool vertical=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        leadingWidget: BackButton(),
        title: 'الاكثر مبيعا',
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: R.sW(context, 20)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: R.sH(context, 52),
                  width: R.sW(context, 270),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        labelText: 'ما الذي تريده',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: R.sH(context, 1.25),
                                color: Mycolors.suptitlecolor),
                            borderRadius:
                                BorderRadius.circular(R.sR(context, 12)))),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      vertical=!vertical;
                    });
                  
                  },
                  child: Container(
                    height: R.sH(context, 52),
                    width: R.sW(context, 52),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(R.sR(context, 12)),
                        border: Border.all(
                            color: Mycolors.suptitlecolor,
                            width: R.sH(context, 1.25))),
                            child: vertical==false?Image.asset(Images.horicon):Image.asset(Images.vericon),
                  ),
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: R.sH(context, 20)),
              child: Row(
                children: [
                  FilterTool(text: 'الكل',),
                  FilterTool(text:"مولدات",), 
                  FilterTool(text: 'باور بانك',),
                  FilterTool(text: 'محموله',),
                 
                ],
              ),
            ),
        
            vertical==false? Expanded(
              
              child: GridView.builder(
                
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              mainAxisSpacing: 8, // Vertical spacing
              crossAxisSpacing: 8, 
              childAspectRatio: .6// Horizontal spacing
            ),
            itemCount: 10,
            itemBuilder: (context,index)=> StoreItemHorizontal(),
            
            )):Expanded(child: SingleChildScrollView(child: StoreItemVertical()))
          ],
        ),
      ),
    );
  }
}








//this is the part that exist down of the appbar
class FilterTool extends StatelessWidget {
   FilterTool({
    super.key,
    required this.text
  });
  String text;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
    
      },
      child: Container(
        margin: EdgeInsets.only(left: R.sW(context, 8)),
        padding: EdgeInsets.symmetric(
            horizontal: R.sW(context, 12),
            vertical: R.sH(context, 4)),
        height: R.sH(context, 27),
        decoration: BoxDecoration(
            color: Mycolors.lightcyan,
            borderRadius: BorderRadius.circular(R.sR(context, 32))),
        child: Text(
          text,
           style: Textutils.fontcolor14w400.copyWith(fontSize: R.F(context, 16)),
        ),
      ),
    );
  }
}
