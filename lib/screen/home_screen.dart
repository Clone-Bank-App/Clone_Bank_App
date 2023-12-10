import 'package:flutter/material.dart';
import 'package:clone_bank_app/funcions/server.dart'; // Make sure this import is correct
import 'package:clone_bank_app/widget/container_functions.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String showname = ""; // 클래스 레벨에 showname을 정의합니다.

  @override
  void initState() {
    super.initState();
    _loadDataFromServer();
  }

  Future<void> _loadDataFromServer() async {
    try {
      Map<String, dynamic> data = await getDataFromBackend();
      setState(() {
        showname = data['firstCell']; // 서버로부터 받은 데이터를 showname에 저장합니다.
      });
    } catch (e) {
      print('Error loading data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank App'),
      ),
      body: ListView(children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  // 여기에 로직을 추가합니다.
                },
                child: Text(
                  showname, // showname 변수를 여기에서 사용합니다.
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  // 여기에 로직을 추가합니다.
                },
                child: Text('베스트', style: TextStyle(color: Colors.black)),
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
                          subtitle: Text('024-801-044-0000')
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
