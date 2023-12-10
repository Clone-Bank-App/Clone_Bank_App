//
// import 'package:flutter/material.dart';
//
//
// class Bankscreens extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: List.generate(10, (index) => Bankscreens()),
//     );
//   }
//
//   Widget bankContainer(int index) {
//     // 색상, 아이콘, 텍스트 등의 데이터는 예시를 위해 하드코딩되었지만, 실제로는 파라미터나 데이터 모델을 통해 전달될 수 있습니다.
//     return Container(
//       margin: EdgeInsets.all(10.0),
//       padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10.0),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 5,
//             blurRadius: 7,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Icon(Icons.account_balance_wallet, color: Colors.green),
//           Text(
//             '은행거래 기다리지 않는 방법',
//             style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
//           ),
//           Icon(Icons.arrow_forward_ios, color: Colors.grey),
//         ],
//       ),
//     );
//   }
// }
