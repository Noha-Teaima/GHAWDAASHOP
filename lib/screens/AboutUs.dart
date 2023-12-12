import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class AboutUs extends StatefulWidget {
  // String? name;
  // String? email;
  AboutUs({super.key});

  @override
  State<AboutUs> createState() => _ProfileBeforeSignInState();
}

class _ProfileBeforeSignInState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    // final cubit = context.read<LoginCubit>();
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            child: Image.asset("lib/images/GHawda.jpg"),
            // color: Colors.black,
            decoration: BoxDecoration(
              color: Colors.white,
              // borderRadius: BorderRadius.only(
              //     bottomLeft: Radius.elliptical(150, 50),
              //     bottomRight: Radius.elliptical(150, 50))
            ),
          ),
          // LoginCubit.submit == false
          //     ? ElevatedButton(
          //         onPressed: () {
          //           print("pressed");
          //           // Get.offAll(LoginScreen());
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (BuildContext context) =>
          //                       SignUpScreenProject()));
          //         },
          //         child: Text(
          //           "تسجيل / دخول مستخدم",
          //           style: TextStyle(color: Colors.white),
          //         ),
          //         style: ElevatedButton.styleFrom(
          //           backgroundColor: Colors.black,
          //         ),
          //       )
          //     : Column(
          //         children: [
          //           Text(
          //             "Hello ${cubit.loginModel.data!.name}",
          //             style: TextStyle(fontSize: 20),
          //           ),
          //           SizedBox(
          //             height: 15,
          //           ),
          //           Text(
          //             "${cubit.loginModel.data!.email}",
          //             style: TextStyle(fontSize: 20),
          //           ),
          //         ],
          //       ),
          Divider(
            color: Colors.grey,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.arrow_back_ios),
                    trailing: Icon(Icons.water_damage_outlined),
                    title: Text("من نحن "),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                      leading: Icon(Icons.arrow_back_ios),
                      trailing: Icon(Icons.share),
                      title: Text("شارك التطبيق")),
                ),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    leading: Icon(Icons.arrow_back_ios),
                    trailing: Icon(Icons.contact_page_sharp),
                    title: Text("الصفحات الإضافية "),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.alternate_email_outlined,
                          color: Colors.black,
                        ),
                        label: Text(
                          "ايميل",
                          style: TextStyle(color: Colors.black),
                        )),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.chat_bubble,
                          color: Colors.black,
                        ),
                        label: Text("واتس اب",
                            style: TextStyle(color: Colors.black))),
                    ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          CupertinoIcons.phone_circle_fill,
                          color: Colors.black,
                        ),
                        label: Text("اتصال",
                            style: TextStyle(color: Colors.black))),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
