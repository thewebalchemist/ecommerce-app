// ProductModel
class ProductModel {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final double discountedPrice;
  final String description;
  final List<String> features;
  final double stockAmount;

  ProductModel(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.price,
      required this.discountedPrice,
      required this.description,
      required this.features,
      this.stockAmount = 1});
}

// Featured Products
final List<ProductModel> featuredProducts = [
  ProductModel(
    id: '1',
    name: 'iPhone 13 Pro Max',
    imageUrl:
        'https://www.phoneplacekenya.com/wp-content/uploads/2021/07/Apple-iPhone-13-Pro.jpg',
    price: 999.99,
    discountedPrice: 899.99,
    description: 'The latest and greatest iPhone from Apple.',
    features: [
      '6.7-inch Super Retina XDR display',
      'Triple-lens camera system',
      'A15 Bionic chip',
      'Up to 28 hours of video playback',
    ],
  ),
  ProductModel(
    id: '2',
    name: 'Samsung Galaxy S21 Ultra',
    imageUrl:
        'https://fdn2.gsmarena.com/vv/pics/samsung/samsung-galaxy-s21-ultra-5g-1.jpg',
    price: 1199.99,
    discountedPrice: 999.9,
    description: 'The ultimate flagship smartphone from Samsung.',
    features: [
      '6.8-inch Dynamic AMOLED 2X display',
      '108MP quad camera system',
      'Exynos 2100 / Snapdragon 888 chip',
      'Up to 16GB RAM and 512GB storage',
    ],
  ),
  ProductModel(
      id: '3',
      name: 'Google Pixel 6 Pro',
      imageUrl:
          'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-13-pro-silver-select?wid=470&hei=556&fmt=png-alpha&.v=1631652956000',
      price: 899.99,
      discountedPrice: 849.99,
      description:
          'The latest flagship from Google with advanced camera capabilities.',
      features: [
        '6.71-inch QHD+ OLED display',
        '50MP triple camera system',
        'Google Tensor chip',
        'Up to 12GB RAM and 512GB storage',
      ],
      stockAmount: 10),
];

// On Offer Products
final List<ProductModel> onOfferProducts = [
  ProductModel(
      id: '1',
      name: 'Apple iPhone 13 Pro Max',
      imageUrl:
          'https://www.phoneplacekenya.com/wp-content/uploads/2021/07/Apple-iPhone-13-Pro.jpg',
      price: 999.99,
      discountedPrice: 899.99,
      description: 'The latest and greatest iPhone from Apple.',
      features: [
        '6.7-inch Super Retina XDR display',
        'Triple-lens camera system',
        'A15 Bionic chip',
        'Up to 28 hours of video playback',
      ],
      stockAmount: 10),
  ProductModel(
    id: '2',
    name: 'Samsung Galaxy S21 Ultra',
    imageUrl:
        'https://www.phoneplacekenya.com/wp-content/uploads/2021/07/Apple-iPhone-13-Pro.jpg',
    price: 1199.99,
    discountedPrice: 999.9,
    description: 'The ultimate flagship smartphone from Samsung.',
    features: [
      '6.8-inch Dynamic AMOLED 2X display',
      '108MP quad camera system',
      'Exynos 2100 / Snapdragon 888 chip',
      'Up to 16GB RAM and 512GB storage',
    ],
  ),
  ProductModel(
      id: '3',
      name: 'Google Pixel 6 Pro',
      imageUrl:
          'https://www.phoneplacekenya.com/wp-content/uploads/2021/07/Apple-iPhone-13-Pro.jpg',
      price: 899.99,
      discountedPrice: 849.99,
      description:
          'The latest flagship from Google with advanced camera capabilities.',
      features: [
        '6.71-inch QHD+ OLED display',
        '50MP triple camera system',
        'Google Tensor chip',
        'Up to 12GB RAM and 512GB storage',
      ],
      stockAmount: 10),
];

// Promoted Products

final List<ProductModel> promotedProducts = [
  ProductModel(
      id: '1',
      name: 'iPhone 13 Pro Max',
      imageUrl:
          'https://www.phoneplacekenya.com/wp-content/uploads/2021/07/Apple-iPhone-13-Pro.jpg',
      price: 999.99,
      discountedPrice: 899.99,
      description: 'The latest and greatest iPhone from Apple.',
      features: [
        '6.7-inch Super Retina XDR display',
        'Triple-lens camera system',
        'A15 Bionic chip',
        'Up to 28 hours of video playback',
      ],
      stockAmount: 10),
  ProductModel(
      id: '2',
      name: 'iPhone 14 Pro Max',
      imageUrl:
          'https://www.phoneplacekenya.com/wp-content/uploads/2021/07/Apple-iPhone-13-Pro.jpg',
      price: 999.99,
      discountedPrice: 899.99,
      description: 'The latest and greatest iPhone from Apple.',
      features: [
        '6.7-inch Super Retina XDR display',
        'Triple-lens camera system',
        'A15 Bionic chip',
        'Up to 28 hours of video playback',
      ],
      stockAmount: 10),
  ProductModel(
      id: '3',
      name: 'iPhone 15 Pro Max',
      imageUrl:
          'https://www.phoneplacekenya.com/wp-content/uploads/2021/07/Apple-iPhone-13-Pro.jpg',
      price: 999.99,
      discountedPrice: 899.99,
      description: 'The latest and greatest iPhone from Apple.',
      features: [
        '6.7-inch Super Retina XDR display',
        'Triple-lens camera system',
        'A15 Bionic chip',
        'Up to 28 hours of video playback',
      ],
      stockAmount: 10),
];
