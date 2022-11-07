class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :video
      t.string :text
      t.string :image

      t.timestamps
    end
  end
end
