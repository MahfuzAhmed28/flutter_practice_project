import 'package:flutter/material.dart';

void main()
{
  runApp(HelloWorld());
}
class HelloWorld extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  //Remove Corner Debug Banner
      title: 'Welcome',
      home: Home(),
    );
  }
  

}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                //showAboutDialog(context: context);
                showModalBottomSheet(
                  //barrierColor: Colors.red,
                  //backgroundColor: Colors.green.shade200,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  isScrollControlled: true,
                  useSafeArea: true,
                  enableDrag: false,
                  context: context,
                  builder: (ctx){
                    return Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  'Title',
                                  style: TextStyle(
                                    fontSize: 20
                                  ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 20,
                          thickness: 5,
                          color: Colors.green,
                        ),
                        Text('Sample'),
                        Row(
                          children: [
                            ElevatedButton(onPressed: () {}, child: Text('Save')),
                            ElevatedButton(onPressed: () {}, child: Text('Cancel')),
                          ],
                        )
                        //Divider(),
                        //Text('Yes'),
                      ],
                    );
                  }
                );
              },
              child: Text('Show dialoge'),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: TextField(
                maxLength: 50,
                onChanged: (String? value)
                {
                  print(value);
                },
                controller: TextEditingController(),
                //obscureText: true,
                maxLines: 1,
                //keyboardType: TextInputType.phone,
                enabled: true,
                decoration: InputDecoration(
                  hintText: 'Phone',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w100,
                  ),
                  labelText: 'Phone Number',
                  //label: Icon(Icons.add),
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.person),
                  // prefix: Column(
                  //   children: [
                  //     Text('abcd'),
                  //     Text('edgh'),
                  //   ],
                  // ),
                  // suffix: Column(
                  //   children: [
                  //     Text('abcd'),
                  //     Text('edgh'),
                  //   ],
                  // ),
                  icon: Icon(Icons.ac_unit),
                  //counterText: '',
                  counterStyle: TextStyle(
                    fontSize: 20
                  ),
                  fillColor: Colors.pink,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    )
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 3
                    )
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue
                    )
                  )

                ),
              ),
            ),


          ],
        ),
      ),

    );
  }
}

