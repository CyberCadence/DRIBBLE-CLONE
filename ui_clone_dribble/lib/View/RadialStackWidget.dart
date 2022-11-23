import 'package:flutter/material.dart';
class CustomCircularWidget extends StatelessWidget {
  const CustomCircularWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
          child: Container(color: Colors.white,height: double.maxFinite,width: double.maxFinite,
            child: Stack(
              
              alignment: Alignment.center,
              children: [
              ClipOval(
                child: Container(color: Colors.blue,padding: const EdgeInsets.all(2),
                  child: ClipOval(
                    child: Container(color: Colors.grey,padding: const EdgeInsets.all(40),
                      child: ClipOval(
                        child: Container(color: Colors.white,padding: const EdgeInsets.all(2),
                          child: ClipOval(
                            child: Container(color: Colors.blueAccent,
                            padding: const EdgeInsets.all(25),
                              child: ClipOval(
                                child: Container(color: Colors.grey,padding: const EdgeInsets.all(30),
                                  child: ClipOval(
                                    child: Container(
                                      padding: const EdgeInsets.all(5),
                                      color: Colors.deepPurple,
                                      child: ClipOval(
                                        child: Container(padding: const EdgeInsets.all(5),
                                          color: Colors.white,
                                          child: CircleAvatar(radius: 50,
                                          backgroundColor: Colors.blue,
                                          child: ClipOval(
                                            child: Container(
                                              
                                              decoration: 
                                            const BoxDecoration(
                                              
                                              image: DecorationImage(image: AssetImage(
                                              
                                                'assets/images/wall.jpg'),fit: BoxFit.cover)),),
                                          )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )) ,Positioned(right: 170,top: 55,
                
                
                child: ClipOval(
                  child: Container( 
                    width: 70,height: 70,
                    decoration: 
                                              const BoxDecoration( 
                                                
                                                image: DecorationImage(image: AssetImage(
                                                
                                                  'assets/images/wall.jpg'),fit: BoxFit.cover))),
                )),Positioned(left: 170,bottom: 55,
                
                
                child: ClipOval(
                  child: Container( 
                    width: 70,height: 70,
                    decoration: 
                                              const BoxDecoration( 
                                                
                                                image: DecorationImage(image: AssetImage(
                                                
                                                  'assets/images/wall.jpg'),fit: BoxFit.cover))),
                ))],),
          ),);

  }
}