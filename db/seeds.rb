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

#Ingredients
butter = Ingredient.create(name: 'unsalted butter')
sugar = Ingredient.create(name: 'sugar')

#Recipes
souffle = Recipe.create(video: 'https://www.youtube.com/watch?v=UZ6Qn3JkxqE', collection_id: dessert.id, text: 'nothing like a great chocolate souffle!', image: 'https://static01.nyt.com/images/2022/10/19/dining/19souffle4/merlin_214343490_7ef7235a-71e8-4e65-84cf-12bb52b4c7ec-master768.jpg?w=1280&q=75')
pie = Recipe.create(video: 'https://www.youtube.com/watch?v=J2B-y4ef_Fo', collection_id: dessert.id, text: 'how to make the best pie', image: 'https://static01.nyt.com/images/2018/11/11/dining/11Tart-lemon-pie/11Tart-lemon-pie-videoSixteenByNine390.jpg')

#RecipesIngredients
RecipesIngredient.create(recipe: souffle, ingredient: butter)
RecipesIngredient.create(recipe: souffle, ingredient: sugar)

#Tags
tag = Tag.create(name: 'Dessert', recipe_id: souffle.id)

#Favorites
Favorite.create(recipe: souffle, user: user)
Favorite.create(recipe: pie, user: user)

user.reload
butter.reload
sugar.reload


