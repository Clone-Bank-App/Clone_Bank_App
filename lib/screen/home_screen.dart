import 'package:flutter/material.dart';
import 'package:clone_bank_app/model/bank_name.dart'; // Make sure this import is correct
import 'package:clone_bank_app/widget/container_functions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
      super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Bank App'), // You might want to add a title
      ),
      body: ListView(children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  // Add your logic here
                },
                child: Text(
                  '김혜윤',
                  style: TextStyle(color: Colors.black),
                ), // Replace with actual child widget
              ),
              TextButton(
                onPressed: () {
                  // Add your logic here
                },
                child: Text('베스트',
                    style: TextStyle(
                        color:
                            Colors.black)), // Replace with actual child widget
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          color: Colors.white,
          child: SizedBox(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(

                      flex: 1, // Image에 할당된 공간의 비율
                      child: Image.asset('assets/images/KB_logo.png'),
                    ),
                    Flexible(
                      flex: 7, // Column에 할당된 공간의 비율
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {
                              // 로직 추가
                            },
                            child: Text('일반보통예금'),
                          ),
                          TextButton(
                            onPressed: () {
                              // 로직 추가
                            },
                            child: Text('024-801-044-25101',
                              style: TextStyle(fontSize: 10)),
                          ),
                          SizedBox(height: 20),
                          TextButton(
                            onPressed: () {
                              // 로직 추가
                            },
                            child: Text('0원',
                            textAlign: TextAlign.start ,),
                          ),
                          TextButton(
                            onPressed: () {
                              // 로직 추가
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.amber),
                              minimumSize:MaterialStateProperty.all<Size>(Size(200, 40)),
                            ),
                            child: Text(
                              '이체',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          // 다른 위젯들 추가 가능
                        ],
                      ),
                    ),
                  ],
                ),

                VerticalDivider(
                  color: Color.fromARGB(255, 211, 211, 211),
                  thickness: 1.0,
                ),
                // Expanded(
                //   child:
                //       BankListScreen(), // Make sure BankListScreen is defined
                // ),
              ],
            ),
          ),
        ),
        Container(
          child: MyWidget(),
        )
      ]),
    );
  }
}
