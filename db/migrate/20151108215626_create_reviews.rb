class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.int :raitng
      t.text :comment

      t.timestamps null: false
    end
  end
end
