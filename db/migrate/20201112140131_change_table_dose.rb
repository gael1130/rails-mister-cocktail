class ChangeTableDose < ActiveRecord::Migration[6.0]
  def change
    rename_column :doses, :name, :description
    add_reference :doses, :cocktail, foreign_key: true
    add_reference :doses, :ingredient, foreign_key: true
  end
end
