class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :date_time_image_name, null: false
      t.string :title, null: false
      t.string :speaker, null: false
      t.string :venue, null: false
      t.string :register_link, null: false
      t.string :poster_image_name, null: false

      t.timestamps
    end
  end
end
