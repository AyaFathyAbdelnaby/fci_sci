import 'package:fci_sci/order_details_screen.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Orders"),
      //   centerTitle: true,

      // ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/camera.jpg",
            height: double.infinity,
            fit: BoxFit.fitHeight,
          ),
           Positioned(
            top: 100,
            // left: 20,
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 115, 0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  'Find the best home furniture for your room.',
                  style: TextStyle(
                    color: const Color(0xFFFFFFFF).withOpacity(0.9),
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          // PositionedDirectional(
          //   start: 20,
          //   top: 200,
          //   child: Text(
          //     "Order Detail",
          //     style: TextStyle(
          //       color: Colors.black,
          //       fontSize: 20,
          //     ),
          //   ),
          // ),
          PositionedDirectional(
            start: 20,
            end: 20,
            bottom: 200,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 40,
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                      // Navigator.of(context).pop();
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.arrow_forward),
                    iconSize: 40,
                    color: Colors.white,
                    onPressed: () {
                      // Navigator.of(context).pushReplacement(
                      //   MaterialPageRoute(
                      //     builder: (context) => const OrderDetailScreen(),
                      //   ),
                      // );
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const OrderDetailScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
