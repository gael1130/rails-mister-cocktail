class InverseTablesIngredientsAndDoses < ActiveRecord::Migration[6.0]
  def change
    rename_column :ingredients, :description, :name
    remove_column :ingredients, :cocktail_id
    remove_column :ingredients, :dose_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
