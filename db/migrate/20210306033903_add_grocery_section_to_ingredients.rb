class AddGrocerySectionToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_reference :ingredients, :grocery_section, null: false, foreign_key: true
  end
end
