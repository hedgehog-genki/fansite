class CreateArchives < ActiveRecord::Migration[6.0]
  def change
    create_table :archives , options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4' do |t|
      t.text :archiveid, null: false
      t.text :archivetitle, null: false
      t.integer :archiveviews, null: false
      t.datetime :archivepostdate, null: false
      t.text :archiveurl, null: false
      t.text :archiveimg, null: false
      t.timestamps
    end
  end
end
