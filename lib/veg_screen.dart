import 'package:flutter/material.dart';

class VegScreen extends StatefulWidget {
  const VegScreen({super.key});

  @override
  State<VegScreen> createState() => _VegScreenState();
}

class _VegScreenState extends State<VegScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                const Text("Find the home furniture  "),
                const Spacer(),
                Column(
                  children: [
                    Container(
                      width: 73,
                      height: 81,
                      decoration: BoxDecoration(
                        color: const Color(0xffCFCFCF),
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: const Icon(
                        Icons.screen_rotation_rounded,
                        color: Color(0xff7993AE),
                      ),
                    ),
                    const Icon(Icons.menu),
                  ],
                )
              ],
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'Search',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: Colors.red, width: 5),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: (MediaQuery.of(context).size.height / MediaQuery.of(context).size.width) * 2.3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (_, index) => Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    // border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text("Item $index"),
                ),
                itemCount: 19,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
