
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:responsive_builder/responsive_builder.dart';
void main()
{
  runApp(DevicePreview(
    enabled: kDebugMode,
    builder: (BuildContext context) => MyApp())
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Hello'),
      ),
      /*body: Center(
        child: Text(_getDeviceName(size.width)),
      ),*/
      body: Center(
        /*child: ResponsiveBuilder(
          builder: (context, sizingInformation){
            if(sizingInformation.isDesktop){
              return Text('Desktopp');
            }
            else if(sizingInformation.isTablet){
              return Text('Tablett');
            }
            else{
              return Text('Mobilee');
            }
          }
        ),*/
        child: ScreenTypeLayout.builder(
          mobile: (context) => const Text('Mobile'),
          desktop: (context) => const Text('Desktop'),
          tablet: (context) => const Text('Tablet'),
        ),
      ),


    );
  }
  /*String _getDeviceName(double screenWidth)
  {
    if(screenWidth <= 640)
    {
      return 'Mobile';
    }
    else if(screenWidth > 640 && screenWidth <=1008){
      return 'Tablet';
    }
    else{
      return 'Desktop';
    }
  }*/
}






