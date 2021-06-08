# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
CSV.foreach("db/nenechannel_1.csv", headers: true) do |row|
  Archive.create(
    id: row["id"],
    archivetitle: row["archivetitle"],
    archiveid: row["archiveid"],
    archiveviews: row["archiveviews"],
    archivepostdate: row["archivepostdate"],
    archiveurl: row["archiveurl"],
    archiveimg: row["archiveimg"],
    created_at: row["created_at"],
    updated_at: row["upload_at"],
  )
end
