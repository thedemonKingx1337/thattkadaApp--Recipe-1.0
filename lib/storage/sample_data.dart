import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/meal.dart';

const dummyData = [
  Category(
    id: 'c1',
    title: 'Indian',
    bg_color: Colors.yellow,
    image_url: "assets/images/meals/indian.jpg",
  ),
  Category(
    id: 'c2',
    title: 'Italian',
    bg_color: Colors.red,
    image_url: "assets/images/meals/italian.jpg",
  ),
  Category(
    id: 'c3',
    title: 'Chinese',
    bg_color: Colors.orange,
    image_url: "assets/images/meals/chinese.jpeg",
  ),
  Category(
    id: 'c4',
    title: 'Arabian',
    bg_color: Colors.amber,
    image_url: "assets/images/meals/arabian.jpg",
  ),
  Category(
    id: 'c5',
    title: 'Breakfast',
    bg_color: Colors.blue,
    image_url: "assets/images/meals/breakfast.jpg",
  ),
  Category(
    id: 'c6',
    title: 'Mexican',
    bg_color: Colors.green,
    image_url: "assets/images/meals/mexican.jpg",
  ),
  Category(
    id: 'c7',
    title: 'Japanese',
    bg_color: Colors.lightBlue,
    image_url: "assets/images/meals/japanese.jpg",
  ),
  Category(
    id: 'c8',
    title: 'Wraps',
    bg_color: Colors.lightGreen,
    image_url: "assets/images/meals/wraps.jpg",
  ),
  Category(
    id: 'c9',
    title: 'SeaFood',
    bg_color: Colors.pink,
    image_url: "assets/images/meals/seafood.jpg",
  ),
  Category(
    id: 'c10',
    title: 'Hamburger',
    bg_color: Colors.teal,
    image_url: "assets/images/meals/burger.jpg",
  ),
];

const dummyMeals = [
  Meal(
      id: "m1",
      categories: ["c1"],
      title: "Chutney",
      imageUrl:
          "https://cdn.pixabay.com/photo/2014/12/22/12/22/food-577224_1280.jpg",
      ingredients: [
        "Two tablespoon oil",
        "Some mustard,Some curry leaves",
        "3 or 4 garlic",
        "Some Ginger,Chilli",
        "One big tomato",
        "Small size onion",
        "Garam masala",
        "Salt",
        "Turmeric powder",
        "Coriander powder",
        "Chili powder",
        "Mint leaves"
      ],
      steps: [
        "To the cooking kadai pour two tablespoon oil",
        "Add mustard, garlic ginger and curry leaves",
        "When it turns brown add the tomatoes and onion along with the chilies to it",
        "Cook it until it turns brown in colour and turn off the flame",
        "After cooling it for sometimes transfer it into a mixer jar along with some mint leaves and grained them",
        "Then your chutney is ready to serve"
      ],
      duration: 10,
      complexity: Complexity.Simple,
      affordability: Affordability.Affordable,
      isVeg: true,
      sugarLvl: SugarLvl.Low,
      calorieLvl: CalorieLvl.Low),
  Meal(
      id: "m2",
      categories: ["c1"],
      title: "Masala Dosa",
      imageUrl:
          "https://media.istockphoto.com/id/1460788341/photo/south-indian-vegetarian-breakfast.jpg?s=612x612&w=0&k=20&c=afLT8Ojpb_btLetD0katsQJOedt-F6gMzWjKevXVMSI=",
      ingredients: [
        "Oil",
        "Mustard",
        "Garlic",
        "Ginger",
        "Chillies",
        "Curry leaves",
        "Potatoes",
        "Onions",
        "Carrots",
        "Greenpeas",
        "Turmeric powder",
        "Coriander powder"
            "Salt"
            "Chilli powder"
            "Garam masala"
      ],
      steps: [
        "First we have to prepare the masalas",
        "To the burning pan add oil to it and mustard garlic ginger curry leaves",
        "When it turns brown had boiled potato , boiled onion and cooked greenpeas",
        "After becoming brown and garam masala chili powder turmeric powder and coriander powder and salt to it",
        "Then your masala is almost ready if you wish to add some coriander leaves also you can add",
        "then  by using the dosa batter prepare dosa by keeping the masala inside it",
        "then masala dosa is ready to serve by using chadni or Samba",
      ],
      duration: 15,
      complexity: Complexity.Medium,
      affordability: Affordability.Affordable,
      isVeg: true,
      sugarLvl: SugarLvl.Low,
      calorieLvl: CalorieLvl.Normal),
  Meal(
      id: 'm3',
      categories: [
        'c10',
      ],
      title: 'Classic Hamburger',
      affordability: Affordability.Pricey,
      complexity: Complexity.Simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
      duration: 45,
      ingredients: [
        '300g Cattle Hack',
        '1 Tomato',
        '1 Cucumber',
        '1 Onion',
        'Ketchup',
        '2 Burger Buns'
      ],
      steps: [
        'Form 2 patties',
        'Fry the patties for c. 4 minutes on each side',
        'Quickly fry the buns for c. 1 minute on each side',
        'Bruch buns with ketchup',
        'Serve burger with tomato, cucumber and onion'
      ],
      isVeg: false,
      sugarLvl: SugarLvl.Low,
      calorieLvl: CalorieLvl.High),
  Meal(
      id: 'm4',
      categories: [
        'c3,c4',
      ],
      title: 'Wiener Schnitzel',
      affordability: Affordability.Luxurious,
      complexity: Complexity.Challenging,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
      duration: 60,
      ingredients: [
        '8 Veal Cutlets',
        '4 Eggs',
        '200g Bread Crumbs',
        '100g Flour',
        '300ml Butter',
        '100g Vegetable Oil',
        'Salt',
        'Lemon Slices'
      ],
      steps: [
        'Tenderize the veal to about 2–4mm, and salt on both sides.',
        'On a flat plate, stir the eggs briefly with a fork.',
        'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
        'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
        'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
        'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
        'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
      ],
      isVeg: false,
      sugarLvl: SugarLvl.Low,
      calorieLvl: CalorieLvl.High),
  Meal(
      id: 'm5',
      categories: [
        "c3",
        'c9',
        'c7',
        'c5',
      ],
      title: 'Salad with Smoked Salmon',
      affordability: Affordability.Luxurious,
      complexity: Complexity.Simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
      duration: 15,
      ingredients: [
        'Arugula',
        'Lamb\'s Lettuce',
        'Parsley',
        'Fennel',
        '200g Smoked Salmon',
        'Mustard',
        'Balsamic Vinegar',
        'Olive Oil',
        'Salt and Pepper'
      ],
      steps: [
        'Wash and cut salad and herbs',
        'Dice the salmon',
        'Process mustard, vinegar and olive oil into a dessing',
        'Prepare the salad',
        'Add salmon cubes and dressing'
      ],
      isVeg: false,
      sugarLvl: SugarLvl.Low,
      calorieLvl: CalorieLvl.High),
  Meal(
      id: 'm6',
      categories: [
        'c5',
        'c6',
      ],
      title: 'Delicious Orange Mousse',
      affordability: Affordability.Affordable,
      complexity: Complexity.Hard,
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
      duration: 50,
      ingredients: [
        '4 Sheets of Gelatine',
        '150ml Orange Juice',
        '80g Sugar',
        '300g Yoghurt',
        '200g Cream',
        'Orange Peel',
      ],
      steps: [
        'Dissolve gelatine in pot',
        'Add orange juice and sugar',
        'Take pot off the stove',
        'Add 2 tablespoons of yoghurt',
        'Stir gelatin under remaining yoghurt',
        'Cool everything down in the refrigerator',
        'Whip the cream and lift it under die orange mass',
        'Cool down again for at least 4 hours',
        'Serve with orange peel',
      ],
      isVeg: true,
      sugarLvl: SugarLvl.Normal,
      calorieLvl: CalorieLvl.Low),
  Meal(
      id: 'm7',
      categories: ['c6', 'c2'],
      title: 'Pancakes',
      affordability: Affordability.Affordable,
      complexity: Complexity.Simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
      duration: 20,
      ingredients: [
        '1 1/2 Cups all-purpose Flour',
        '3 1/2 Teaspoons Baking Powder',
        '1 Teaspoon Salt',
        '1 Tablespoon White Sugar',
        '1 1/4 cups Milk',
        '1 Egg',
        '3 Tablespoons Butter, melted',
      ],
      steps: [
        'In a large bowl, sift together the flour, baking powder, salt and sugar.',
        'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
        'Heat a lightly oiled griddle or frying pan over medium high heat.',
        'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
      ],
      isVeg: false,
      sugarLvl: SugarLvl.Low,
      calorieLvl: CalorieLvl.Normal),
  Meal(
      id: 'm8',
      categories: [
        'c1',
      ],
      title: 'Creamy Indian Chicken Curry',
      affordability: Affordability.Pricey,
      complexity: Complexity.Challenging,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
      duration: 35,
      ingredients: [
        '4 Chicken Breasts',
        '1 Onion',
        '2 Cloves of Garlic',
        '1 Piece of Ginger',
        '4 Tablespoons Almonds',
        '1 Teaspoon Cayenne Pepper',
        '500ml Coconut Milk',
      ],
      steps: [
        'Slice and fry the chicken breast',
        'Process onion, garlic and ginger into paste and sauté everything',
        'Add spices and stir fry',
        'Add chicken breast + 250ml of water and cook everything for 10 minutes',
        'Add coconut milk',
        'Serve with rice'
      ],
      isVeg: false,
      sugarLvl: SugarLvl.High,
      calorieLvl: CalorieLvl.Low),
  Meal(
      id: 'm9',
      categories: [
        'c2',
      ],
      title: 'Chocolate Souffle',
      affordability: Affordability.Affordable,
      complexity: Complexity.Hard,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
      duration: 45,
      ingredients: [
        '1 Teaspoon melted Butter',
        '2 Tablespoons white Sugar',
        '2 Ounces 70% dark Chocolate, broken into pieces',
        '1 Tablespoon Butter',
        '1 Tablespoon all-purpose Flour',
        '4 1/3 tablespoons cold Milk',
        '1 Pinch Salt',
        '1 Pinch Cayenne Pepper',
        '1 Large Egg Yolk',
        '2 Large Egg Whites',
        '1 Pinch Cream of Tartar',
        '1 Tablespoon white Sugar',
      ],
      steps: [
        'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
        'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
        'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
        'Place chocolate pieces in a metal mixing bowl.',
        'Place bowl over a pan of about 3 cups hot water over low heat.',
        'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
        'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
        'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
        'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
        'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
        'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
        'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
        'Transfer a little less than half of egg whites to chocolate.',
        'Mix until egg whites are thoroughly incorporated into the chocolate.',
        'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
        'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
        'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
      ],
      isVeg: false,
      sugarLvl: SugarLvl.High,
      calorieLvl: CalorieLvl.Normal),
  Meal(
      id: 'm10',
      categories: [
        'c2',
        'c5',
        'c6',
      ],
      title: 'Asparagus Salad with Cherry Tomatoes',
      affordability: Affordability.Luxurious,
      complexity: Complexity.Simple,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
      duration: 30,
      ingredients: [
        'White and Green Asparagus',
        '30g Pine Nuts',
        '300g Cherry Tomatoes',
        'Salad',
        'Salt, Pepper and Olive Oil'
      ],
      steps: [
        'Wash, peel and cut the asparagus',
        'Cook in salted water',
        'Salt and pepper the asparagus',
        'Roast the pine nuts',
        'Halve the tomatoes',
        'Mix with asparagus, salad and dressing',
        'Serve with Baguette'
      ],
      isVeg: true,
      sugarLvl: SugarLvl.Normal,
      calorieLvl: CalorieLvl.Normal),
  Meal(
      id: 'm11',
      categories: [
        'c2',
        'c6',
      ],
      title: 'Spaghetti with Tomato Sauce',
      affordability: Affordability.Affordable,
      complexity: Complexity.Simple,
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
      duration: 20,
      ingredients: [
        '4 Tomatoes',
        '1 Tablespoon of Olive Oil',
        '1 Onion',
        '250g Spaghetti',
        'Spices',
        'Cheese (optional)'
      ],
      steps: [
        'Cut the tomatoes and the onion into small pieces.',
        'Boil some water - add salt to it once it boils.',
        'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
        'In the meantime, heaten up some olive oil and add the cut onion.',
        'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
        'The sauce will be done once the spaghetti are.',
        'Feel free to add some cheese on top of the finished dish.'
      ],
      isVeg: true,
      sugarLvl: SugarLvl.Low,
      calorieLvl: CalorieLvl.Normal),
  Meal(
      id: 'm12',
      categories: [
        'c2',
      ],
      title: 'Toast Hawaii',
      affordability: Affordability.Affordable,
      complexity: Complexity.Hard,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
      duration: 10,
      ingredients: [
        '1 Slice White Bread',
        '1 Slice Ham',
        '1 Slice Pineapple',
        '1-2 Slices of Cheese',
        'Butter'
      ],
      steps: [
        'Butter one side of the white bread',
        'Layer ham, the pineapple and cheese on the white bread',
        'Bake the toast for round about 10 minutes in the oven at 200°C'
      ],
      isVeg: false,
      sugarLvl: SugarLvl.Low,
      calorieLvl: CalorieLvl.Normal),
  Meal(
      id: "m13",
      categories: ["c7", "c9"],
      title: "Sushi",
      imageUrl:
          "https://cdn.pixabay.com/photo/2018/08/03/08/33/food-3581341_1280.jpg",
      ingredients: [
        '1 ⅓ cups water',
        '⅔ cup uncooked short-grain white rice',
        '3 tablespoons rice vinegar',
        "3 tablespoons white sugar",
        "1 ½ teaspoons salt",
        "4  sheets nori seaweed sheets",
        "½ pound imitation crabmeat, flaked",
        "1 avocado - peeled, pitted, and sliced",
        "½ cucumber, peeled, cut into small strips",
        "2 tablespoons pickled ginger"
      ],
      steps: [
        "Preheat the oven to 300 degrees F (150 degrees C)",
        "Bring water to a boil in a medium pot; stir in rice. Reduce heat to medium-low, cover, and simmer until rice is tender and water has been absorbed, 20 to 25 minutes.",
        "Mix rice vinegar, sugar, and salt in a small bowl. Gently stir into cooked rice in the pot and set aside.",
        "Lay nori sheets on a baking sheet.",
        "Heat nori in the preheated oven until warm, 1 to 2 minutes.",
        "Center 1 nori sheet on a bamboo sushi mat. Use wet hands to spread a thin layer of rice on top. Arrange 1/4 of the crabmeat, avocado, cucumber, and pickled ginger over rice in a line down the center. Lift one end of the mat and roll it tightly over filling to make a complete roll. Repeat with remaining ingredients.",
        "Use a wet, sharp knife to cut each roll into 4 to 6 slices."
      ],
      duration: 40,
      complexity: Complexity.Hard,
      affordability: Affordability.Luxurious,
      isVeg: false,
      sugarLvl: SugarLvl.Normal,
      calorieLvl: CalorieLvl.High),
  Meal(
      id: "m14",
      categories: ["c4", "c8"],
      title: "Shawarma",
      imageUrl:
          "https://cdn.pixabay.com/photo/2022/03/11/10/06/wrap-7061741_1280.jpg",
      ingredients: [
        "1/2 c. extra-virgin olive oil",
        "Juice of 1 lemon",
        "3 cloves garlic, minced",
        "2 tsp. kosher salt",
        "1 tsp. ground cumin",
        "1 tsp. ground coriander",
        "1/2 tsp. freshly ground black pepper",
        "1/2 tsp. ground turmeric",
        "1/4 tsp. ground cinnamon",
        "1/4 tsp. cayenne pepper",
        "2 lb. boneless skinless chicken thighs",
        "Cooking spray",
        "1 large onion, thinly sliced"
      ],
      steps: [
        "Step1- Make chicken: In a large bowl, whisk together oil, lemon juice, garlic, and seasonings. Add chicken and toss to coat. Cover and refrigerate for at least 2 hours and up to overnight.",
        "Step2- Preheat oven to 425° and grease a large baking sheet with cooking spray. Add onion to marinade and toss to coat. Remove chicken and onion from marinade and place on prepared baking sheet. Bake until chicken is golden and cooked through, 30 minutes. Let chicken rest on cutting board for 5 minutes, then thinly slice.",
        "Step3- Meanwhile, make yogurt sauce: In a small bowl, whisk together yogurt, lemon juice, oil, and garlic. Season with salt and a pinch of red pepper flakes. To serve as a pita, top warmed pitas with chicken, onion, romaine, tomatoes, cucumber, and yogurt sauce.",
      ],
      duration: 20,
      complexity: Complexity.Hard,
      affordability: Affordability.Affordable,
      isVeg: false,
      sugarLvl: SugarLvl.Low,
      calorieLvl: CalorieLvl.High),
  Meal(
      id: "m15",
      categories: ["c3"],
      title: "Hakka Noodles [Veg]",
      imageUrl:
          "https://cdn.pixabay.com/photo/2019/07/18/23/21/hakka-noodles-4347560_1280.jpg",
      ingredients: [
        "300 gm chinese noodles",
        "4 sliced onion",
        "200 gm shredded cabbage",
        "150 gm chopped beans",
        "4 teaspoon sunflower oil",
        "2 tablespoon tomato chili sauce",
        "2 pinch powdered salt",
        "8 tablespoon water",
        "4 teaspoon sunflower oil",
        "4 sliced capsicum ( green pepper)",
        "4 shredded carrot",
        "20 cloves chopped garlic",
        "4 tablespoon light soya sauce",
        "2 tablespoon vinegar",
        "2 pinch powdered black pepper",
        "2 teaspoon ajinomoto"
      ],
      steps: [
        "Step 1 Boil the noodles Chinese Noodle is a delectable amalgamation of noodles, veggies and spices. Undoubtedly, it is one of the easiest and simplest thing to prepare. Here’s a simple way of making this dish at home by using some easily available ingredients Take a big microwave-safe bowl and add water in it. Then add oil and salt. Boil for 10 minutes. Then add noodles and boil for 8-9 minutes. Keep stirring in between. Once done, strain and wash the boiled noodles under cold running water. Once done, keep aside.",
        "Step 2 Microwave the veggies & add seasoning, sauces Then take another microwave-safe bowl and add oil in it. Microwave at 100% power for 30 secs. Once the oil is sufficiently hot, add all chopped vegetables and microwave for 4 – 5 minutes at 100% power. Stir in between. Add soya sauce, tomato chilli sauce, vinegar, salt, black pepper and Ajinomoto. Stir the ingredients well.",
        "Step 3 Add the noodles & microwave again Now add the boiled noodles to vegetables and stir it. Microwave for 1 min. at 80% power. Chinese Noodles is ready to be served. Pair it with vegetable or chicken Manchurian and serve hot.",
      ],
      duration: 40,
      complexity: Complexity.Simple,
      affordability: Affordability.Affordable,
      isVeg: true,
      sugarLvl: SugarLvl.Low,
      calorieLvl: CalorieLvl.High)
];
