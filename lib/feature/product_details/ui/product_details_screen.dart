import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.grey.shade300,
                child: const Icon(Icons.image, size: 50),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Customize Your Burger to Your Tastes. Ultimate Experience',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Gap(5),
                  Text(
                    'Price: \$10.99',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
              Gap(10),
            ],
          ),
          const Gap(20),

          /// Toppings
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(5, (index) {
                return Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Topping ${index + 1}'),
                    ),
                    Container(
                      width: 100,
                      height: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Text('Topping ${index + 1}'),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              // Handle add topping
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
          const Gap(20),

          /// Side Options
          /// Toppings
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Topping ${index + 1}'),
                    ),
                    Container(
                      width: 100,
                      height: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Text('Topping ${index + 1}'),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.add),
                            onPressed: () {
                              // Handle add topping
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const Gap(20),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Total Price',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  Gap(5),
                  Text(
                    '\$10.99',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  // Handle add to cart
                },
                child: const Text('Add to Cart'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
