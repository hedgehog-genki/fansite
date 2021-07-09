require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /homes" do
    it "rootにアクセスすると正常にレスポンスが返ってくる" do
      get root_path
      expect(response).to have_http_status(200)
    end
    it "NEWSが存在する" do
      get root_path
      expect(response.body).to include('News')
    end
    it "ABOUTが存在する" do
      get root_path
      expect(response.body).to include('About')
    end
    it "ARCHIVESが存在する" do
      get root_path
      expect(response.body).to include('Archives')
    end
    it "MUSICSが存在する" do
      get root_path
      expect(response.body).to include('Musics')
    end
    it "CLIPSが存在する" do
      get root_path
      expect(response.body).to include('Clips')
    end
    it "FAN ARTSが存在する" do
      get root_path
      expect(response.body).to include('FAN ARTS')
    end
    it "LINKが存在する" do
      get root_path
      expect(response.body).to include('link')
    end
  end
end
