class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :fName
      t.string :lName
      t.string :course

      t.timestamps null: false
    end
  end
end
