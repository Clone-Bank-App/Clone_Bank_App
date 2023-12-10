import 'package:flutter/material.dart';

class bankslistscreen extends StatefulWidget {
  @override
  _bankslistscreenState createState() => _bankslistscreenState();
}

class _bankslistscreenState extends State<bankslistscreen> {

  void initState() {
    super.initState();}


  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(10, (index) => bankelement(index)),
    );
  }

  @override
  Widget bankelement(int index) {
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
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.yellow, // 배경색 설정
            child: Icon(
                Icons.account_balance_wallet, color: Colors.black), // 아이콘 색상 설정
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'KB국민은행-보통예금', // 통장 이름
                    style: TextStyle(
                      fontSize: 9,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '356,784원', // 금액
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          OutlinedButton(
            onPressed: () {
              // 송금 버튼 로직
            },
            child: Text('송금'),
            style: OutlinedButton.styleFrom(
              primary: Colors.black, // 버튼 텍스트 색상
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
            ),
          ),
        ],
      ),
    );
  }}