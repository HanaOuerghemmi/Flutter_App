import 'package:flutter/material.dart';

class UpcomingSchedule extends StatelessWidget {
  const UpcomingSchedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About Doctor",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("Therapist"),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("asset/images/doctor1.jpg"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "23/03/2023",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      Row(
                    children:const [
                      Icon(
                        Icons.access_time_filled,
                        color: Colors.black54,
                        ),
                        SizedBox(width: 5,),
                        Text("10:30 AM",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                        )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration:const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      const Text(
                        "Confirmed",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.indigo.shade50,
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: const Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),


                      ),
                      InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Color(0xff7165d6),
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: const Center(
                              child: Text(
                                "Reshedule",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),


                      ),
                    ],
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
        // ! same widget
        Text(
            "About Doctor",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("Therapist"),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("asset/images/doctor1.jpg"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "23/03/2023",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      Row(
                    children:const [
                      Icon(
                        Icons.access_time_filled,
                        color: Colors.black54,
                        ),
                        SizedBox(width: 5,),
                        Text("10:30 AM",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                        )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration:const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      const Text(
                        "Confirmed",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.indigo.shade50,
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: const Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),


                      ),
                      InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Color(0xff7165d6),
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: const Center(
                              child: Text(
                                "Reshedule",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Text(
            "About Doctor",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("Therapist"),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("asset/images/doctor1.jpg"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "23/03/2023",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      Row(
                    children:const [
                      Icon(
                        Icons.access_time_filled,
                        color: Colors.black54,
                        ),
                        SizedBox(width: 5,),
                        Text("10:30 AM",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                        )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration:const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      const Text(
                        "Confirmed",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.indigo.shade50,
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: const Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),


                      ),
                      InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Color(0xff7165d6),
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: const Center(
                              child: Text(
                                "Reshedule",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),


                      ),
                    ],
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Text(
            "About Doctor",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    spreadRadius: 2,
                  )
                ]),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  const ListTile(
                    title: Text(
                      "Dr. Doctor Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("Therapist"),
                    trailing: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage("asset/images/doctor1.jpg"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Divider(
                      thickness: 1,
                      height: 20,
                      color: Colors.black54,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.calendar_month,
                            color: Colors.black54,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "23/03/2023",
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          )
                        ],
                      ),
                      Row(
                    children:const [
                      Icon(
                        Icons.access_time_filled,
                        color: Colors.black54,
                        ),
                        SizedBox(width: 5,),
                        Text("10:30 AM",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                        )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration:const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      const Text(
                        "Confirmed",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                  
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.indigo.shade50,
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: const Center(
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),


                      ),
                      InkWell(
                          onTap: (){},
                          child: Container(
                            width: 150,
                            padding: EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Color(0xff7165d6),
                              borderRadius: BorderRadius.circular(10),

                            ),
                            child: const Center(
                              child: Text(
                                "Reshedule",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
