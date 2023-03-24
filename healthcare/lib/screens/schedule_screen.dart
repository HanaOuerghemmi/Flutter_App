import 'package:flutter/material.dart';
import 'package:healthcare/screens/widgets/upcoming_schedule.dart';

class SheduleScreen extends StatefulWidget {
  const SheduleScreen({super.key});

  @override
  State<SheduleScreen> createState() => _SheduleScreenState();
}

class _SheduleScreenState extends State<SheduleScreen> {
  int _buttonIndex = 0;
  final _sheduleWidgets = [
    //Upcoming
    UpcomingSchedule(),
    //completed 
    Center(child: Text("Completed"),),
    //canceled
    Center(child: Text("Canceled"),),
  ];

  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top:40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            const Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Schedule",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,

              ),
            ),
            ),
            SizedBox(height: 20,),
            Container(
              padding:  EdgeInsets.all(2),
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.indigo.shade50,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      setState((){
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                        color: _buttonIndex ==0 ? Color(0xff7165d6) : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        "Upcoming",
                        style: TextStyle(

                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  //! completed 
                  InkWell(
                     onTap: (){
                      setState((){
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                         color: _buttonIndex == 1
                          ? Color(0xff7165d6) 
                          : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:const  Text(
                        "completed",
                        style: TextStyle(

                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  //! canceld
                  InkWell(
                    onTap: (){
                     setState((){
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
                      decoration: BoxDecoration(
                         color: _buttonIndex ==2
                          ? Color(0xff7165d6) 
                          : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:const  Text(
                        "Canceled",
                        style: TextStyle(

                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

            ),
            SizedBox(height: 30,),
            _sheduleWidgets[_buttonIndex],
          ],
        ),
        ),
    );
  }
}