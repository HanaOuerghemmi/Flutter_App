import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Setting",
            style: TextStyle(
                      fontSize: 30,
                     
                      fontWeight: FontWeight.w500,
                    ),
            ),
            SizedBox(height: 30),
           const  ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("asset/images/doctor1.jpg"),
    
              ),
              title: Text("Dr. Doctor Name",
              style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
              ),
              subtitle: Text("Profile"),
            ),
            Divider(height: 40, color: Colors.black54,),
            //! widget icon text 
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
    
    
                ),
                child:const  Icon(CupertinoIcons.person,
                color: Colors.blue,
                size: 35,
                ),
              ),
              title: const Text("Profile",
              style: TextStyle(
                    fontSize: 20,
                    
                    fontWeight: FontWeight.w500,
                  ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 20,),
            //! notification 
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  shape: BoxShape.circle,
    
    
                ),
                child:const  Icon(Icons.notifications_none_outlined,
                color: Colors.deepPurple,
                size: 35,
                ),
              ),
              title: const Text("Notifications",
              style: TextStyle(
                    fontSize: 20,
                    
                    fontWeight: FontWeight.w500,
                  ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 20,),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100,
                  shape: BoxShape.circle,
    
    
                ),
                child:const  Icon(Icons.privacy_tip_outlined,
                color: Colors.indigo,
                size: 35,
                ),
              ),
              title: const Text("Privacy",
              style: TextStyle(
                    fontSize: 20,
                    
                    fontWeight: FontWeight.w500,
                  ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 20,),
            //? general 
            ListTile( 
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  shape: BoxShape.circle,
    
    
                ),
                child:const  Icon(Icons.settings_suggest_outlined,
                color: Colors.green,
                size: 35,
                ),
              ),
              title: const Text("General",
              style: TextStyle(
                    fontSize: 20,
                    
                    fontWeight: FontWeight.w500,
                  ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 20,),
            //? about us 
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  shape: BoxShape.circle,
    
    
                ),
                child:const  Icon(Icons.info_outline_rounded,
                color: Colors.orange,
                size: 35,
                ),
              ),
              title: const Text("About Us",
              style: TextStyle(
                    fontSize: 20,
                    
                    fontWeight: FontWeight.w500,
                  ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            Divider(height: 40, color: Colors.black54 ,),
            ListTile(
              onTap: (){},
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.redAccent.shade100,
                  shape: BoxShape.circle,
    
    
                ),
                child:const  Icon(Icons.logout,
                color: Colors.redAccent,
                size: 35,
                ),
              ),
              title: const Text("Log Out",
              style: TextStyle(
                    fontSize: 20,
                    
                    fontWeight: FontWeight.w500,
                  ),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
           
          ],
    
        ),
      ),
    );
  }
}