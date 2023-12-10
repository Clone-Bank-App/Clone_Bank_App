import 'package:flutter/material.dart';
import 'package:clone_bank_app/funcions/server.dart'; // Make sure this import is correct
import 'package:clone_bank_app/widget/container_functions.dart';
import 'package:clone_bank_app/funcions/server.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String accountName = 'Loading...'; // 초기값 설정

  @override
  void initState() {
    super.initState();
    _loadDataFromServer();
  }

  Future<void> _loadDataFromServer() async {
    try {
      var data = await getDataFromBackend();
      setState(() {
        accountName =  data['firstCell']; // 예를 들어 서버로부터 받은 이름 데이터
      });
    } catch (e) {
      print('Error loading data: $e');
    }
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
                  accountName,
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset('assets/images/KB_logo.png'), // Replace with your asset
                          title: Text('일반보통예금'),
                          subtitle: Text('024-801-044-25101'),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('0원', style: TextStyle(fontSize: 20)),
                              ElevatedButton(
                                onPressed: () {
                                  // Transfer button logic
                                },
                                child: Text('이체'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.amber, // Button background color
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
