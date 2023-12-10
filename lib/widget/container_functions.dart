import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final List<String> containerTitles = [
    '한눈에 보는 지출',
    '자산관리',
    'KBPICK',
    '예산 설정',
    '투자 현황',
    '송금하기',
    '청구서',
    '할인 혜택',
    '신용 점수',
    '알림',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(containerTitles.length, (index) => buildCustomContainer(containerTitles[index])),
    );
  }

  Widget buildCustomContainer(String title) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.account_balance_wallet, color: Colors.green),
          Text(
            title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.grey),
        ],
      ),
    );
  }
}
