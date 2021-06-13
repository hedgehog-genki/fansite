class CreateMusics < ActiveRecord::Migration[6.0]
  def change
    create_table :musics, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4' do |t|
      t.text :musicid , null: false
      t.text :musictitle ,null: false
      t.text :musicauthor , null: false
      t.text :musicurl ,null: false
      t.text :musicimg , null: false
      t.timestamps
    end
  end
end
