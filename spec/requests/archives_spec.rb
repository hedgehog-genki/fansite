require 'rails_helper'

RSpec.describe "Archives", type: :request do
  describe "GET /archives" do
    it "Archivesページにアクセスすると正常にリクエストが返ってくる" do
      get archive_index_path
      expect(response).to have_http_status(200)
    end
    it "Archivesページにワード検索フォームが存在する" do
      get archive_index_path
      expect(response.body).to include('アーカイブを検索する')
    end
    it "Archivesページにタグ検索フォームが存在する" do
      get archive_index_path
      expect(response.body).to include('タグで絞り込み検索')
    end
    it "ArchivesページにHOMEボタンが存在する" do
      get archive_index_path
      expect(response.body).to include('HOME')
    end
  end
end
