class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.boolean :admin
      t.string :name
      t.string :email
      t.string :url
      t.string :phone
      t.string :password
      t.text :comment
      t.integer :age
      t.integer :study_hour
      t.float :volume
      t.datetime :login_time
      t.date :birthday
      t.time :wake_up_time
      t.string :country
      t.string :time_zone
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
