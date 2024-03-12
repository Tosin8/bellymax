// ignore_for_file: public_member_api_docs, sort_constructors_first
class FoodMenu {
  String title; 
  String image;
  FoodMenu({
    required this.title,
    required this.image,
  });
}

final List FoodMenus = [
  FoodMenu(
    title: 'Salad',
    image: 'assets/images/menu/salad.jpg',
  ), 
  FoodMenu(
    title: 'Burger',
    image: 'assets/images/menu/burger.jpg',
  ), 
  FoodMenu(
    title: 'Soup',
    image: 'assets/images/menu/soup.jpg',
  ), 
  FoodMenu(
    title: 'Chicken',
    image: 'assets/images/menu/chicken.jpg',
  ), 
  FoodMenu(
    title: 'Sea Food',
    image: 'assets/images/menu/sea_food.jpg',
  ), 
  FoodMenu(
    title: 'Drinks',
    image: 'assets/images/menu/drinks.jpg',
  ), 
  FoodMenu(
    title: 'Desserts',
    image: 'assets/images/menu/desserts.jpg',
  ), 
  FoodMenu(
    title: 'SandWish',
    image: 'assets/images/menu/sandwish.jpg',
  ), 
]; 