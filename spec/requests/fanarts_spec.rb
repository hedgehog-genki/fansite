require 'rails_helper'

RSpec.describe "Fanarts", type: :request do
  describe "GET /fanarts" do
    it "fanartページにアクセスしたら正常にリクエストが返ってくる" do
      get fanart_index_path
      expect(response).to have_http_status(200)
    end
    it "ホームボタンが存在する" do
      get fanart_index_path
      expect(response.body).to include('HOME')
    end
    
  end
end
