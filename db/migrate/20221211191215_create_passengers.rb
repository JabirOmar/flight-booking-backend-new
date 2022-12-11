class CreatePassengers < ActiveRecord::Migration[7.0]
  def change
    create_table :passengers do |t|
      t.string :departure
      t.string :destination
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :nationality
      t.string :gender
      t.string :title
      t.integer :age
      t.date :departure_date
      t.date :return_date

      t.timestamps
    end
  end
end
