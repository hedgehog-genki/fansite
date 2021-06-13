# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
CSV.foreach("db/archive.csv", headers: true) do |row|
  Archive.create(
    id: row["id"],
    archiveid: row["archiveid"],
    archivetitle: row["archivetitle"],
    archiveviews: row["archiveviews"],
    archivepostdate: row["archivepostdate"],
    archiveurl: row["archiveurl"],
    archiveimg: row["archiveimg"],
    created_at: row["created_at"],
    updated_at: row["updated_at"],
  )
end

CSV.foreach("db/clip.csv",headers: true) do |row|
  Clip.create(
    id: row["id"],
    clipid: row["clipid"],
    cliptitle: row["cliptitle"],
    clipurl: row["clipurl"],
    clipviews: row["clipviews"],
    clipimg: row["clipimg"],
    clippostdate: row["clippostdate"],
    created_at: row["created_at"],
    updated_at: row["updated_at"],
  )
end

CSV.foreach("db/music.csv",headers: true) do |row|
  Music.create(
    id: row["id"],
    musicid: row["musicid"],
    musictitle: row["musictitle"], 
    musicauthor: row["musicauthor"],
    musicurl: row["musicurl"],
    musicimg: row["musicimg"],
    created_at: row["created_at"],
    updated_at: row["updated_at"],
  )
end

CSV.foreach("db/fanart.csv",headers: true) do |row|
  Fanart.create(
    id: row["id"],
    fanartid: row["fanartid"],
    fanarturl: row["fanarturl"],
    fanartuser: row["fanartuser"],
    created_at: row["created_at"],
    updated_at: row["updated_at"],
  )
end