class UpdateFormFields < ActiveRecord::Migration[6.1]
  def change
    change_column :albums, :length, :float
  end
end
