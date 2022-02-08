class Food{
  final String id;
  final String foodName;
  final String imagePath;
  final String category;
  final double price;
  final double discount; // giảm giá
  final double ratings;

  // constructor
  Food({
    this.id,
    this.foodName,
    this.imagePath,
    this.category,
    this.price,
    this.discount,
    this.ratings
  });
}