class CreateTracks < ActiveRecord::Migration[6.1]
  def change
    create_table :tracks do |t|
      t.timestamps
      t.text :URL
      t.string :name
      t.text :credits
      t.boolean :available, default:false
      t.datetime :published_at
    end
  end
end
