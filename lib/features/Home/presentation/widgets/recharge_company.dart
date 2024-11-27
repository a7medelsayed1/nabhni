import 'package:flutter/material.dart';
import 'package:nabhni/core/images.dart';
import 'package:nabhni/core/mycolors.dart';
import 'package:nabhni/core/responsivity.dart';
import 'package:nabhni/core/textutils.dart';

class RechargeCompany extends StatefulWidget {
  RechargeCompany({
    super.key,
  });

  @override
  State<RechargeCompany> createState() => _RechargeCompanyState();
}

class _RechargeCompanyState extends State<RechargeCompany> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              GestureDetector(
                child: Container(
                  height: R.sH(context, 90),
                  width: R.sW(context, 90),
                  margin: EdgeInsets.symmetric(vertical: R.sH(context, 12)),
                  decoration: BoxDecoration(
                      color: selected == false
                          ? Colors.transparent
                          : Mycolors.lightcyan,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(R.sR(context, 12))),
                  child: Image.asset(Images.recharge),
                ),
                onTap: () {
                  selected = true;
                  setState(() {});
                },
              ),
              SizedBox(
                  width: R.sW(context, 92),
                  child: Text(
                    "الكهرباء العدادات الذكية",
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    style:
                        Textutils.hello14.copyWith(color: Mycolors.titlecolor),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
