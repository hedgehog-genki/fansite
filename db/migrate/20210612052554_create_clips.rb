class CreateClips < ActiveRecord::Migration[6.0]
  def change
    create_table :clips do |t|
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
