import 'package:flutter/material.dart';
import 'package:healthcare/screens/appointment.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
List symptoms = [
  "Temperature",
  "Suffle",
  "Fever",
  "Cough", 
  "Cold",
];
List imgs = [
  "doctor1.jpg",
  "doctor2.jpg",
  "doctor3.jpg",
  "doctor4.jpg",

];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding:const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Hello Alex",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("asset/images/doctor1.jpg"),
              ),
            ],
          ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color(0xff7165d6),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const  [ 
                      BoxShadow(
                      color: Color(0xff7165d6),
                      blurRadius: 2,
                      spreadRadius: 4,
                    ),]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child:const Icon(Icons.add, color: Color(0xff7165d6),
                        size: 35,
                        ),
                      ),
                      SizedBox(height: 30,),
                      const Text(
                "Clinic Visit",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5),
                      const Text(
                "Make an appointment",
                style: TextStyle(
                  color: Colors.white54,
                  
                ),
              ),
                    ],
                  ),
                ),
              ),
              //? card add
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const  [ 
                      BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      spreadRadius: 4,
                    ),]
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Color(0xfff0eefa),
                          shape: BoxShape.circle,
                        ),
                        child:
                        const Icon(
                          Icons.home_filled,
                           color: Color(0xff7165d6),
                        size: 35,
                        ),
                      ),
                      SizedBox(height: 30,),
                      const Text(
                "Home Visit",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5),
                      const Text(
                "Call the doctor home",
                style: TextStyle(
                  color: Colors.black54,
                  
                ),
              ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //* 3rd part of home screen symptoms
          const SizedBox(height: 25),
          const Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text(
              "Whats are your symptomes?",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
            ),
             
            ),
             SizedBox(height: 70,
            
             child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: symptoms.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    padding:const  EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color:const  Color(0xfff4f6fc),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Center (child:
                    Text(
              symptoms[index],
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
            ),
                    ),
                  );
                },

              ),
            ),
            //!4dr part home screen popular doctor
            const SizedBox(height: 15),
            const Padding(
              padding:EdgeInsets.only(left: 15),
              child: Text(
              "Popular Doctors",
                style: TextStyle(
                  fontSize: 23,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
            ),
              ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return InkWell(
                  onTap:(){
                    Navigator.push(context,
                    MaterialPageRoute(builder:(context)=>AppointmentScreen(),)
                    );
                  } ,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    padding:const  EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color:const  Color(0xfff4f6fc),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage("asset/images/${imgs[index]}"),
                        ),
                        const Text(
                       "Dr. Doctor Name",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                       "Therapist",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                       "4.9",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
            ),

                        ],
                      ),

                      ],
                    ),
                  ),
                );
              },
              
              ),
            

        ], 
      ),
    );
  }
}