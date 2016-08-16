class CreateUserLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :user_lessons do |t|
      t.integer :score
      t.references :user, foreign_key: true
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
