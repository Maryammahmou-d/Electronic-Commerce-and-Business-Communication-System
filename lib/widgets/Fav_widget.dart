import 'package:flutter/material.dart';

class FavWidget extends StatelessWidget {
  String Description1 , price1 , imagepath1;
  FavWidget(this.Description1 , this.price1 , this.imagepath1 , this.Description2 , this.price2 , this.imagepath2) ;
  String Description2 , price2 , imagepath2;


  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(imagepath1),
                  IconButton(
                    onPressed: (){},
                    icon: CircleAvatar(
                      backgroundColor: Colors.black,
                      child:
                      Icon(Icons.favorite ,
                        color: Color.fromRGBO(255, 198, 50, 1),
                      ),
                    ),
                  ) ,
                ],
              ),
              SizedBox(height: 10),
              Text(Description1 ,
                maxLines: 2, overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w500 ) ,),
              SizedBox(height: 10),
              Text(price1 , style: TextStyle(fontWeight: FontWeight.w900),),
              SizedBox(height: 30),

            ],
          ),
        ),
        SizedBox(width: 20,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(imagepath2),
                  IconButton(
                    onPressed: (){},
                    icon: CircleAvatar(
                      backgroundColor: Colors.black,
                      child:
                      Icon(Icons.favorite ,
                        color: Color.fromRGBO(255, 198, 50, 1),
                      ),
                    ),
                  ) ,
                ],
              ),
              SizedBox(height: 10),
              Text(Description2 ,
                maxLines: 2, overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w500 ) ,),
              SizedBox(height: 10),
              Text(price2, style: TextStyle(fontWeight: FontWeight.w900),),
              SizedBox(height: 30),

            ],
          ),
        ),

      ],
    );
  }
}
