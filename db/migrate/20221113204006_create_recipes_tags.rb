class CreateRecipesTags < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes_tags do |t|
      t.belongs_to :recipe, foreign_key: true
      t.belongs_to :tag, foreign_key: true
    end
  end
end
