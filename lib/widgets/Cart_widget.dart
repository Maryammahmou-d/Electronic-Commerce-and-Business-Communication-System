import 'package:flutter/material.dart';
class CartWidget extends StatefulWidget {
  String? imagePath;
  String? tittle;
  String? Description;
  String? estimatedtime;
  String? Price;

  CartWidget(this.imagePath, this.tittle, this.Description, this.estimatedtime,
      this.Price,
      {super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: MediaQuery.of(context).size.width * .9,
      height: MediaQuery.of(context).size.height * .16,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(236, 236, 236, 1)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              widget.imagePath!,
            ),
          ),
          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.tittle!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    widget.Description!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    widget.estimatedtime!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          widget.Price!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                         
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Data {
  static final product = <CartWidget>[
    CartWidget(
        'lib/assets/pay_fav/Shoes.png',
        'Cellular Line Music Sound Headphones',
        'Headphones Maxi, Black',
        'FREE delivery on Tuesday, Aug 29',
        '5000 EGP'),
    CartWidget(
        'lib/assets/pay_fav/Shoes.png',
        'Cellular Line Music Sound Headphones',
        'Headphones Maxi, Black',
        'FREE delivery on Tuesday, Aug 29',
        '5000 EGP'),
    CartWidget(
        'lib/assets/pay_fav/Shoes.png',
        'Cellular Line Music Sound Headphones',
        'Headphones Maxi, Black',
        'FREE delivery on Tuesday, Aug 29',
        '5000 EGP'),
    CartWidget(
        'lib/assets/pay_fav/Shoes.png',
        'Cellular Line Music Sound Headphones',
        'Headphones Maxi, Black',
        'FREE delivery on Tuesday, Aug 29',
        '5000 EGP'),
    CartWidget(
        'lib/assets/pay_fav/Shoes.png',
        'Cellular Line Music Sound Headphones',
        'Headphones Maxi, Black',
        'FREE delivery on Tuesday, Aug 29',
        '5000 EGP')
  ];
}
