class Food {
  final String title;
  final String duration;
  final String calories;
  final String price;
  final String image;
  final String info;
  final String rating;

  Food(
      {required this.title,
      required this.duration,
      required this.calories,
      required this.price,
      required this.image,
      required this.info,
      required this.rating});
}

class ChineseFood extends Food {
  ChineseFood()
      : super(
          title: 'Sweet and Sour Pork',
          duration: '15 min',
          calories: '500 kal',
          price: '\$${50}',
          image: 'assets/images/chinese.jpg',
          info:
              'A classic Chinese dish featuring crispy deep-fried pork, coated in a tangy sweet and sour sauce. The succulent meat pairs perfectly with the vibrant mix of bell peppers, onions, and pineapples. Served with steamed rice, it offers a delightful balance of flavors and textures, making it a popular choice in Chinese cuisine.',
          rating: '4.9(2k reviews)',
        );
}

class KoreanFood extends Food {
  KoreanFood()
      : super(
          title: 'Bibimbap',
          duration: '20 min',
          calories: '350 kal',
          price: '\$${45}',
          image: 'assets/images/korean.jpg',
          info:
              'A signature Korean dish that translates to "mixed rice." It consists of a colorful assortment of sautéed vegetables, sliced meat (often beef), a fried egg, and spicy gochujang sauce, all arranged on a bed of steamed rice. The flavors and textures come together beautifully when mixed, creating a delightful explosion of taste in every bite.',
          rating: '4.7(1.7k reviews)',
        );
}

class TurkishFood extends Food {
  TurkishFood()
      : super(
          title: 'Adana Kebab',
          duration: '15 min',
          calories: '400 kal',
          price: '\$${60}',
          image: 'assets/images/turkish.jpg',
          info:
              'A flavorful Turkish kebab made from finely minced and seasoned lamb or beef, molded onto skewers, and grilled to perfection. Named after the city of Adana in Turkey, this kebab is known for its spicy kick, blending well with aromatic herbs and spices. Served with bread, salad.',
          rating: '4.8(1.5k reviews)',
        );
}
