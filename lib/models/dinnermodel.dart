class DinnerModel{
  final String name;
  final String pic;
  final int rate;
  DinnerModel(this.name, this.pic, this.rate);
}
List<DinnerModel> DinnerData=[
  new DinnerModel('Idly', 'https://fashionchefinkitchen.com/wp-content/uploads/IMG_9095-720x720.jpg', 7),
  new DinnerModel('Chapathi', 'https://s3-ap-southeast-1.amazonaws.com/sb-singleserver-prod-bucket/ad61850a1297c372af7f8ff2c3b7ebf1/o_1523182046.jpg', 20),
  new DinnerModel('Dosa', 'https://www.culturesforhealth.com/learn/wp-content/uploads/2016/04/Fermented-Indian-Dosas-Recipe_header.jpg', 15),
  new DinnerModel('S-Dosa', 'https://www.recipeselected.com/wp-content/uploads/2019/03/Recipes-Selected-Indian-Dosa.jpg', 30),
  new DinnerModel('Onion-D', 'https://s3-ap-south-1.amazonaws.com/betterbutterbucket-silver/angeline--david14795676475830691f6e409.jpg', 30),
];