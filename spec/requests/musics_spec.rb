require 'rails_helper'

RSpec.describe "Musics", type: :request do
  describe "GET /musics" do
    it "musicページにアクセスしたら正常にリクエストが返ってくる" do
      get music_index_path
      expect(response).to have_http_status(200)
    end
    it "ホームボタンが存在する" do
      get music_index_path
      expect(response.body).to include('HOME')
    end
    
  end
end
