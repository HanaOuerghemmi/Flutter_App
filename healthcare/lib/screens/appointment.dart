import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  AppointmentScreen({super.key});
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7165d6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  //! circle avatar
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage("asset/images/doctor1.jpg"),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Dr. Doctor Name",
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Therapist",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xff9f97e2),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Color(0xff9f97e2),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                CupertinoIcons.chat_bubble_text_fill,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //? 2sd part
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.height / 1.5,
              width: double.infinity,
              padding: EdgeInsets.only(top: 20, left: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    "About Doctor",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Reviews",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.star, color: Colors.amber),
                      Text(
                        "4.9",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "(124)",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff7165d6)),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff7165d6)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 160,
                    //! list view of reviews
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                ),
                              ]),
                          child: SizedBox(
                              child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: AssetImage(
                                        "asset/images/${imgs[index]}"),
                                  ),
                                  title: const Text(
                                    "Dr. Doctor Name",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: const Text(
                                    "1 day ago",
                                  ),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      Text(
                                        "4.9",
                                        style: TextStyle(color: Colors.black54),
                                      )
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text(
                                    "Many thanks to Dr, Dear . He is a great and professional doctor",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                        );
                      },
                    ),
                  ),
                  //! location
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Location",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xfff0eefc),
                        shape: BoxShape.circle
                      ),
                      child:const  Icon(
                        Icons.location_on,
                        color: Color(0xff7165d6),
                        size: 30,
                      ),
                    ),
                    title:const  Text(
                      "New York, Medical Center",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("address line of the medical center,"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //! bottom screen
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(15),
        height: 130,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              spreadRadius: 2
            ),
          ],
        ),
        child: Column(
          children: [
            //? consultation price
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const[
                Text("consultation Price",
                style: TextStyle(
                  color: Colors.black54,
                ),
                ),
                Text("\$100",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],

            ),
            //? botton
            SizedBox(height: 15,),
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: Color(0xff7165d6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text("Book Appointment",
                  style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
