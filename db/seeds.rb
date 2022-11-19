# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Users
user = User.create(email: 'jessie@email.com', password_digest: 'jessie')

#Collection
dessert = Collection.create(name: 'Chocolate Desserts', picture: 'https://static01.nyt.com/images/2022/10/19/dining/19souffle4/merlin_214343490_7ef7235a-71e8-4e65-84cf-12bb52b4c7ec-master768.jpg?w=1280&q=75')
thanksgiving = Collection.create(name: 'Thanksgiving', picture: 'https://static01.nyt.com/applications/cooking/40ac7e6/assets/Thanksgiving-Supercollection-large.jpeg')

#Ingredients
butter = Ingredient.create(name: 'unsalted butter')
sugar = Ingredient.create(name: 'sugar')
pepper = Ingredient.create(name: 'black pepper')
onion = Ingredient.create(name: 'onion')
salt = Ingredient.create(name: 'salt')
potato = Ingredient.create(name: 'potato')
milk = Ingredient.create(name: 'milk')


#Recipes
souffle = Recipe.create(name: 'Souffle', author: "Jessie Anderson", video: 'https://www.youtube.com/watch?v=UZ6Qn3JkxqE', collection_id: dessert.id, text: 'nothing like a great chocolate souffle!', image: 'https://static01.nyt.com/images/2022/10/19/dining/19souffle4/merlin_214343490_7ef7235a-71e8-4e65-84cf-12bb52b4c7ec-master768.jpg?w=1280&q=75')
pie = Recipe.create(name: 'Tart Lemon Pie', author: "Skyler Phillips", video: 'https://www.youtube.com/watch?v=J2B-y4ef_Fo', collection_id: dessert.id, text: 'how to make the best pie', image: 'https://static01.nyt.com/images/2018/11/11/dining/11Tart-lemon-pie/11Tart-lemon-pie-videoSixteenByNine390.jpg')
macncheese = Recipe.create(name: 'Creamy Mac n Cheese', author: "Joey Anderson", collection_id: thanksgiving.id, text: "Creamy mac and cheese and it is so good.", image: "https://static01.nyt.com/images/2021/11/10/dining/04MACREX/merlin_196956333_02cc2407-e7c1-469c-880f-6d022f97593c-master768.jpg?w=1280&q=75")
turkey = Recipe.create(name: 'Perfect Thanksgiving Turkey', author: "Jill Anderson", collection_id: thanksgiving.id, text: "Dry brined turkey that will make all of your guests so excited.", image: "https://static01.nyt.com/images/2016/09/14/dining/14TURKEY-CARVER/14TURKEY-CARVER-master768.jpg?w=1280&q=75")
mashed_potatoes = Recipe.create(name: 'Make-Ahead Mashed Potatoes', author: "Jeff Anderson", collection_id: thanksgiving.id, text: "Soft and creamy mashed potatoes. The perfect comfort food.", image: "https://static01.nyt.com/images/2022/11/09/dining/02korex-potatoes/merlin_215517513_bdc3b19b-d142-43b0-a8f4-055b6ebe44d0-master768.jpg?w=1280&q=75")

#RecipesIngredients
RecipesIngredient.create(recipe: souffle, ingredient: butter)
RecipesIngredient.create(recipe: souffle, ingredient: sugar)
RecipesIngredient.create(recipe: mashed_potatoes, ingredient: butter)

#Tags
tag_one = Tag.create(name: 'Dessert')
vegetarian = Tag.create(name: 'Vegetarian')

#RecipesTags
RecipesTag.create(recipe: mashed_potatoes, tag: vegetarian)
RecipesTag.create(recipe: souffle, tag: tag_one)
RecipesTag.create(recipe: pie, tag: tag_one)
RecipesTag.create(recipe: pie, tag: vegetarian)


#Favorites
Favorite.create(recipe: souffle, user: user)
Favorite.create(recipe: pie, user: user)

user.reload
butter.reload
sugar.reload


