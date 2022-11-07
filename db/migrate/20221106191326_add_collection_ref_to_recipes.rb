class AddCollectionRefToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_reference :recipes, :collection, foreign_key: true
  end
end
