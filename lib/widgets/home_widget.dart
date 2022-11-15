// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'search contacts',
                hintStyle: TextStyle(color: Colors.white),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),

          const SizedBox(
            height: 10.0,
          ),
          // this renders the search input

          Expanded(
            child: ListView.builder(
              itemCount: 80,
              itemBuilder: ((context, index) {
                return ListTile(
                    leading: Image.asset('assets/images/user.png'),
                    title: const Text(
                      'Maxwell King',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: const Text(
                      '+234 903 029 7490',
                      style: TextStyle(color: Colors.grey),
                    ),
                    trailing: Icon(
                      Icons.arrow_drop_down_circle,
                      color: Colors.white,
                    )
                    // DropdownButton(
                    //   items: [
                    //     DropdownMenuItem(
                    //       child: Text('view contact'),
                    //     ),
                    //   ],
                    //   onChanged: ((value) {}),
                    // ),
                    );
              }),
            ),
          )
        ],
      ),
    );
  }
}
