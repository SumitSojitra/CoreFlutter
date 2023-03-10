List expenses = [
  "fruits",
  "food",
  "shopping",
  "clothing",
];

List income = ["rental", "dividents", "salary", "other"];
String path = "assets/images/";
String p1 = "cutlery.png";
String p2 = "fruits.png";
String p3 = "shopping-bag.png";
String p4 = "tshirt.png";

String p5 = "rent.png";
String p6 = "cashback.png";
String p7 = "money.png";
String p8 = "other.png";

List exp = [p1, p2, p3, p4];
List inc = [p5, p6, p7, p8];

List<Map> expense = [
  {
    'image': path + p1,
    'name': "fruits",
  },
  {
    'image': path + p2,
    'name': "food",
  },
  {
    'image': path + p3,
    'name': "shopping",
  },
  {
    'image': path + p4,
    'name': "clothing",
  }
];
List<Map> incom = [
  {
    'image': path + p5,
    'name': "rental",
  },
  {
    'image': path + p6,
    'name': "dividents",
  },
  {
    'image': path + p7,
    'name': "salary",
  },
  {
    'image': path + p8,
    'name': "other",
  }
];
