class Product {
  String _name;
  double _price;
  Product(this._name, this._price);
  String get name => _name;
  double get price => _price;
  set price(double value) {
    if (value > 0) {
      _price = value;
      print(">> ราคา $_name เป็น $value บาทเรียบร้อย");
    } else {
    }
  }
  void applyDiscount(double percent) {
    double discountAmount = _price * (percent / 100);
    _price -= discountAmount;
    print(">> ลดราคา $_name ลง $percent% เหลือ $_price บาท");
  }
  void showDetail() {
    print("สินค้า: $_name | ราคา: $_price บาท");
  }
}
class Phone extends Product {
  String brand;
  Phone(String name, double price, this.brand) : super(name, price);
  @override
  void showDetail() {
    print("[Phone] ยี่ห้อ: $brand | รุ่น: $name | ราคา: $price บาท");
  }
}
class Book extends Product {
  String author;
  Book(String name, double price, this.author) : super(name, price);
  @override
  void showDetail() {
    print("[Book] หนังสือ: $name | ผู้แต่ง: $author | ราคา: $price บาท");
  }
}
void main() {
  print("--- เริ่มต้นระบบจัดการสินค้า (Product Management) ---");
  Phone p1 = Phone("iPhone 17", 32000, "Apple");
  Book b1 = Book("Dart Programming", 450, "Somchai");
  List<Product> inventory = [p1, b1];
  print("\n--- 1. สิ้นค้าและราคา (Products and prices) ---");
  p1.price = 30000; 
  b1.price = -500; 
  b1.price = 500; 
  print("\n--- 2. ทดสอบส่วนลด (Discount) ---");
  p1.applyDiscount(10); 
  b1.applyDiscount(15);
  print("\n--- 3. สรุปยอดสินค้าคงเหลือ (Final Summary) ---");
  for (var item in inventory) {
    item.showDetail();
  }
}