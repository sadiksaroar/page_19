import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetailsScreen(),
    );
  }
}

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int itemCount = 0; // Initial count

  void incrementCount() {
    setState(() {
      itemCount++;
    });
  }

  void decrementCount() {
    setState(() {
      if (itemCount > 0) itemCount--; // Prevent negative count
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: Text(
          "Details Product",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.lock, color: Colors.black),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("GroceryStoreScreen/Link → 1-130-500x500.jpg.png"), // Use AssetImage
                fit: BoxFit.cover, // Adjust fit as needed
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 220),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pearl Milling Company Original",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        // Decrement Button
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: decrementCount,
                        ),

                        // Number Display
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            '$itemCount',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),

                        // Increment Button
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: incrementCount,
                        ),

                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 20),
                        Text(" 4.8 (320 Reviews)"),
                        Spacer(),
                        Text("Available in stock", style: TextStyle(color: Colors.green)),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text("Color", style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        colorOption(Colors.grey),
                        colorOption(Colors.blue),
                        colorOption(Colors.black),
                        colorOption(Colors.yellow),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Description",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$35.25",
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.purple),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                          ),
                          onPressed: () {},
                          child: Text("Add to Cart", style: TextStyle(color: Colors.black),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],

      )
    );
  }

  Widget colorOption(Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey.shade300),
        ),
      ),
    );
  }
}

