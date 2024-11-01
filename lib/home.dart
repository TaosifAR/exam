import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    RxBool go = false.obs;
    return SafeArea(child:
    Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Obx(()=> Stack(
          children: [
            AnimatedPositioned(duration: Duration(milliseconds: 555),
              left: go.value? size.width*.5 - size.width*.13*.8 :  size.width*.5- size.width*.20*.5,
              top: go.value? size.height*.5 + size.width*.18*.3  : size.height*.5- size.width*.20*.5,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 555),
                width:go.value? size.width *.13 : size.width *.20,
                height: go.value? size.width*.18: size.width*.20,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(1000),
                ),
              ),
            ),


            AnimatedPositioned(
              duration: Duration(milliseconds: 555),
              left: go.value? size.width*.5 - size.width *.13*.8:  size.width*.5- size.width*.16*.5,
              top: go.value? size.height*.5 - size.width*.25 :size.height*.5- size.width*.16*.5,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 555),
                width: go.value? size.width *.13 : size.width *.16,
                height: go.value? size.width*.25 : size.width*.16,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(1000),
                ),
              ),
            ),


            Stack(
              children: [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 555),
                  left: go.value? size.width*.2: size.width*.5- size.width*.13*.5,
                  top: go.value? size.height*.5-size.height*.4 *.5 : size.height*.5- size.width*.13*.5,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 555),
                    width: size.width *.13,
                    height: go.value? size.height*.4 : size.width*.13,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(1000),

                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: ()
                        {
                          go.value = !go.value;
                        },

                        child: Opacity(
                          opacity: go.value? 0:1,
                          child: Text("GO",style: TextStyle(fontSize: size.width*.16*.2,fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),



              ],
            )


          ],
        )),
      ),
    )
    );
  }
}
