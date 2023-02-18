import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_manage/layout/default_layout.dart';
import 'package:state_manage/riverpod/state_provider.dart';
import 'package:state_manage/screen/screen1.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref 저장고 불러오기 - numberProvider
    // ref.watch , ref.read
    // build 함수에서는 watch 이벤트 발생 시 - read

    final provider = ref.watch(numberProvider);
    final provider2 = ref.watch(dateProvider);

    return DefaultLayout(
      title: 'StateProvider Screen',
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(provider.toString()),
            Text(provider2.toString()),
            ElevatedButton(
              onPressed: () {
                ref.read(numberProvider.notifier).update((state) => state + 1);
              },
              child: Text('UP'),
            ),
            ElevatedButton(
              onPressed: (){
                ref.read(dateProvider.notifier).update((state) => DateTime(state.year, state.month, state.day + 1));
              },
              child: Text('Date + 1'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => Screen1()),
                );
              },
              child: Text('Next Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
