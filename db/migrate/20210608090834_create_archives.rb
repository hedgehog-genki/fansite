class CreateArchives < ActiveRecord::Migration[6.0]
  def change
    create_table :archives do |t|
      t.string :archiveid, null: false
      t.string :archivetitle, null: false
      t.integer :archiveviews, null: false
      t.datetime :archivepostdate, null: false
      t.text :archiveurl, null: false
      t.text :archiveimg, null: false
      t.timestamps
    end
  end
end
