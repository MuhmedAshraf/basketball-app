import 'package:basketball_counter_app/Cubit/counter_cubit.dart';
import 'package:basketball_counter_app/Cubit/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(pointsCounter());
}

class pointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  int teamAPoints = 0;
  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.orange,
                title: Text('Points Counter'),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Team E',
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                              // هنا بقوله انا عاوز القيمة بتاع المتغير دا اللي متخزنه عنده ف الكيوبيت كدا اصح عشان ميحصلش غلط لو عملت هوت ريلود ميرجعليش القيمة بصفر لأن دي استيتليسس ويدجيت ف مفيهاش ستيتس بتاخد قيمة المتغير المتعرفة فوق بصفر بس فلاز اقوله هاتلي اللي عندك من الكيوبت احسن
                              style: TextStyle(
                                fontSize: 150,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .counterIncrement(team: 'A', number: 1);
                              },
                              child: Text(
                                'Add 1 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .counterIncrement(team: 'A', number: 2);
                              },
                              child: Text(
                                'Add 2 Point',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .counterIncrement(team: 'A', number: 3);
                              },
                              child: Text(
                                'Add 3 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 500,
                        child: VerticalDivider(
                          indent: 50,
                          endIndent: 50,
                          color: Colors.grey,
                          thickness: 1,
                        ),
                      ),
                      Container(
                        height: 500,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Team B',
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                            Text(
                              '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                              // هنا بقوله انا عاوز القيمة بتاع المتغير دا اللي متخزنه عنده ف الكيوبيت كدا اصح عشان ميحصلش غلط لو عملت هوت ريلود ميرجعليش القيمة بصفر لأن دي استيتليسس ويدجيت ف مفيهاش ستيتس بتاخد قيمة المتغير المتعرفة فوق بصفر بس فلاز اقوله هاتلي اللي عندك من الكيوبت احسن
                              style: TextStyle(
                                fontSize: 150,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(8),
                                primary: Colors.orange,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .counterIncrement(team: 'B', number: 1);
                              },
                              child: Text(
                                'Add 1 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .counterIncrement(team: 'B', number: 2);
                              },
                              child: Text(
                                'Add 2 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                minimumSize: Size(150, 50),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .counterIncrement(team: 'B', number: 3);
                              },
                              child: Text(
                                'Add 3 Point ',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(8),
                      primary: Colors.orange,
                      minimumSize: Size(150, 50),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Reset',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        listener: (context, state) {
          // هنا بكتب الدالة اللي من خلالها هاكسيس الحاجة اللي ف الكيوبيت واخزنها عشان امسكها ف متغيرات ومن خلالهم بقا اغير شغلهم ف ال ui
          if (state is CounterAIncrementState) {
            teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
          } else {
            teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
          }
        });
  }
}
