import 'package:flutter/material.dart';
import 'package:state_manage/layout/default_layout.dart';
import 'package:state_manage/screen/state_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => StateProviderScreen()),
              );
            },
            child: Text('StateProvider Screen'),
          ),
        ],
      ),
    );
  }
}
