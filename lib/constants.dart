const appCurrencySybmbol = "₹";

enum RequestingMethods { get, post, put, delete }

const List<String> kDummyProducts = [
  "Apple",
  "Banana",
  "Cherry",
  "Date",
  "Elderberry",
  "Fig",
  "Grape",
  "Honeydew",
  "Jackfruit",
  "Kiwi",
  "Lemon",
  "Mango",
  "Nectarine",
  "Orange",
  "Papaya",
  "Quince",
  "Raspberry",
  "Strawberry",
  "Tangerine",
  "Ugli fruit",
  "Vanilla bean",
  "Watermelon",
  "Xigua melon",
  "Yellow passion fruit",
  "Zucchini",
];

const introParagraph =
    '''Welcome to Blinkit, your one-stop destination for all your grocery needs! In today's fast-paced world, we understand that convenience and efficiency are key factors when it comes to shopping for groceries. That's why we've created Blinkit, an innovative e-commerce grocery app designed to make your shopping experience easier, faster, and more enjoyable than ever before.With Blinkit, you can say goodbye to long queues and crowded supermarkets. Now, you have the power to browse through an extensive range of high-quality groceries and essential items, all from the comfort of your own home or wherever you are. Whether you're in need of fresh produce, pantry staples, household products, or even specialty items, Blinkit has got you covered.What sets Blinkit apart is its user-friendly interface and intuitive features. Our app is designed to provide you with a seamless shopping experience, allowing you to effortlessly navigate through different categories, search for specific products, and discover exciting new items. Plus, we offer personalized recommendations based on your preferences and shopping history, ensuring that you never miss out on your favorite items or exclusive deals.At Blinkit, we prioritize the quality and freshness of our products. We partner with trusted local vendors and renowned brands to bring you the finest selection of groceries available. Each item is carefully sourced, inspected, and delivered directly to your doorstep, guaranteeing the highest level of satisfaction and reliabilityBut that's not all - Blinkit is committed to saving you time and money. We offer flexible delivery options, allowing you to choose a convenient time slot that suits your schedule. Our dedicated team of delivery professionals ensures prompt and secure deliveries, ensuring that your groceries arrive in pristine condition. Moreover, we provide regular promotions, discounts, and loyalty programs to help you maximize your savings while enjoying a delightful shopping experience.At Blinkit, your satisfaction is our top priority. We are dedicated to continuously improving our app, incorporating your feedback, and enhancing our services to meet your evolving needs. With Blinkit, you can trust that your grocery shopping will be hassle-free, efficient, and enjoyable.So why wait? Experience the future of grocery shopping with Blinkit - the ultimate e-commerce grocery app that brings convenience, quality, and savings right to your fingertips. Download our app now and join the Blinkit community today!''';


List kDummyCoupons = [
  {
    "headline": "Get 10% off on your first order",
    "couponCode": "NEWUSER",
    "dataPoints": [
      "Get 10% off on your first order",
      "Minimum order value: ₹500",
      "Maximum discount: ₹100",
      "Valid till: 31st December 2021",
    ],
  },
  {
    "headline": "Flat ₹50 off on fruits",
    "couponCode": "FRUITS50",
    "dataPoints": [
      "Flat ₹50 off on fruits",
      "Minimum order value: ₹200",
      "Valid till: 31st December 2021",
    ],
  },
  {
    "headline": "Buy 1 get 1 free on vegetables",
    "couponCode": "VEGGIES",
    "dataPoints": [
      "Buy 1 get 1 free on vegetables",
      "Valid till: 31st December 2021",
    ],
  },
  {
    "headline": "₹100 off on groceries",
    "couponCode": "GROCERY100",
    "dataPoints": [
      "₹100 off on groceries",
      "Minimum order value: ₹1000",
      "Valid till: 31st December 2021",
    ],
  },
  {
    "headline": "Flat 20% off on dairy products",
    "couponCode": "DAIRY20",
    "dataPoints": [
      "Flat 20% off on dairy products",
      "Minimum order value: ₹300",
      "Maximum discount: ₹50",
      "Valid till: 31st December 2021",
    ],
  },
  {
    "headline": "₹75 off on personal care items",
    "couponCode": "CARE75",
    "dataPoints": [
      "₹75 off on personal care items",
      "Minimum order value: ₹500",
      "Valid till: 31st December 2021",
    ],
  },
  {
    "headline": "Flat 15% off on household products",
    "couponCode": "HOUSE15",
    "dataPoints": [
      "Flat 15% off on household products",
      "Minimum order value: ₹400",
      "Maximum discount: ₹100",
      "Valid till: 31st December 2021",
    ],
  },
  {
    "headline": "Buy 2 get 1 free on snacks",
    "couponCode": "SNACKS",
    "dataPoints": [
      "Buy 2 get 1 free on snacks",
      "Valid till: 31st December 2021",
    ],
  },
  {
    "headline": "Flat ₹30 off on beverages",
    "couponCode": "BEV30",
    "dataPoints": [
      "Flat ₹30 off on beverages",
      "Minimum order value: ₹200",
      "Valid till: 31st December 2021",
    ],
  }
];

const kCategoriesTitles = [
  "Paan Corner",
  "Dairy, Bread & Eggs",
  "Fruits & Vegetables",
  "Cold Drinks & Juices",
  "Snacks & Munchies",
  "Breakfast & Instandt Food",
  "Sweet Tooth",
  "Bakery & Biscuits",
  "Tea & Coffee",
  "Atta, Rice & Dal",
  "Masala & Oil",
  "Sauces & Spreads",
  "Chicken, Meat & Fish",
  "Organic & Healthy Living",
  "Baby Care",
  "Pharma & Wellness",
  "Cleaning Essentials",
  "Home & Office",
  "Personal Care",
  "Pet Care"
];

const kSvgIcons = [
  "https://img.icons8.com/ios/50/wallet--v1.png",
  "https://img.icons8.com/ios/50/filled-chat.png",
  "https://img.icons8.com/dotty/80/token-card-code.png"
];
