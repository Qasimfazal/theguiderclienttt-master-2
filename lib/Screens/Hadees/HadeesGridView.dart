

import 'package:flutter/material.dart';
import 'package:theguiderclienttt/List/hadeesList.dart';

class Hadees extends StatefulWidget {
  const Hadees({Key key}) : super(key: key);

  @override
  _HadeesState createState() => _HadeesState();
}

class _HadeesState extends State<Hadees> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
        height: 800,
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.fill)),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      left: 30,
                      width: 80,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/light-1.png'))),
                      )),
                  Positioned(
                    left: 140,
                    width: 80,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/light-2.png'))),
                    ),
                  ),
                  Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/clock.png'))),
                    ),
                  ),
                  Positioned(
                      top: 30,
                      left: 30,
                      child: Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Center(
                          child: Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                   Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.arrow_back_outlined,
                                    color: Colors.white,
                                  )),
                              SizedBox(
                                width: 25,
                              ),
                              //   Text('Teacher Portal',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w300),)
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ),
            Text('SAHEH AL-BUKHARI \nIN URDU AND ARABIC',style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.w300),),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    //childAspectRatio: (itemWidth / itemHeight),
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12),
                itemCount: Hadeeslist.length,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: () {

                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) =>
                          Hadeeslist[index].navigation));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height/5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage( Hadeeslist[index].image,),
                              fit: BoxFit.contain,
                            ),
                            //color: const Color(0xff7c94b6),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.indigoAccent.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset:
                                Offset(1, 1), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(30),
                          ),

                        ),
                        Text(Hadeeslist[index].destination),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


}
