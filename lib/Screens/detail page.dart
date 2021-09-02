import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class Detailpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children:<Widget> [
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                        image: AssetImage("assets/images/help3.jpg")),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )
                  ),
            )),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListTile(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NGO 1",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text("Moto of NGO",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                        SizedBox(
                          width: 150,
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            backgroundColor: Colors.blueGrey,
                            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8)
                          ),
                          onPressed: (){},
                          child:Text("DONATE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.white70),),),




                        ],
                      ),
                      Text("What started it all, the Santhosa Samsara Family (SS Family) was started by George Ebenezer and Manju George as an orphanage for children from hard places. While they initially started with three children in 2009, the number grew to nine in three years’ time. Once the orphanage had begun to function, George and Manju realised that what the children needed was not an institution, but a family. So, a family is what they becameThe children have received love, care and a good education. They have grown into strong teenagers who are looking to make their own impact on the world. George and Manju’s biological son also lives with them and he loves his older brothers and sisters!",
                        style: TextStyle(
                          fontSize: 17,
                        ),),

                    ],
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
