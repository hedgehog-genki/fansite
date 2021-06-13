class CreateFanarts < ActiveRecord::Migration[6.0]
  def change
    create_table :fanarts, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4' do |t|
      t.string :fanartid, null: false
      t.string :fanarturl, null: false
      t.string :fanartuser, null: false
      t.timestamps
    end
  end
end