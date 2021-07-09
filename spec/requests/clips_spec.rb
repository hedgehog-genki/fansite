require 'rails_helper'

RSpec.describe "Clips", type: :request do
  describe "GET /clips" do
    it "Clipsページにアクセスすると正常にリクエストが返ってくる" do
      get clip_index_path
      expect(response).to have_http_status(200)
    end
    it "ホームボタンが存在する" do
      get clip_index_path
      expect(response.body).to include('HOME')
    end
  end
end
