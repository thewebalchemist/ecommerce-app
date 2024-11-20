import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/models/categoryModel.dart';
import 'package:myapp/models/productModel.dart';
import 'package:myapp/widgets/categories-items.dart';
import 'package:myapp/widgets/product-items.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          padding: const EdgeInsets.all(2),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: AppColors.primaryColor),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ),
        title: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Delivery address',
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              TextSpan(
                text: '\nNairobi, Kenya',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: const EdgeInsets.all(2),
            margin: EdgeInsets.all(5),
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[300]),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search input
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 16),

              // Small banner
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://via.placeholder.com/600x150',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Welcome to our store!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Category items
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    categories.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: CategoryCard(category: categories[index]),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),

              // Product cards
              Text(
                'Featured Products',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    featuredProducts.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: ProductItemCard(product: featuredProducts[index]),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 16),
              Text(
                'On Offer',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    onOfferProducts.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: ProductItemCard(
                        product: onOfferProducts[index],
                      ),
                    ),
                  ),
                ),
              ),


              // Promoted Products
              SizedBox(height: 16),
              Text(
                'Promoted Products',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                    List.generate(
                      promotedProducts.length,
                      (index) => Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: ProductItemCard(
                        product: promotedProducts[index],
                      ),
                    ),
                      
                      )
                  )
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[500],
        showUnselectedLabels: true,
        selectedItemColor: AppColors.primaryColor,
        unselectedFontSize: 12,
        selectedFontSize: 12,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Catalog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
