class AddDefaultValueToReleasedAttribute < ActiveRecord::Migration[6.1]
  def change
    change_column_default :albums, :released, true
  end
end
