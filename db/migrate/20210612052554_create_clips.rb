class CreateClips < ActiveRecord::Migration[6.0]
  def change
    create_table :clips , options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4' do |t|
    t.text :clipid , null: false
    t.text :cliptitle, null: false
    t.text :clipurl, null: false
    t.integer :clipview, null: false
    t.text :clipimg, null: false
    t.datetime :clippostdate, null: false

    t.timestamps
    end
  end
end
