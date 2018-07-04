class MetubeController < ApplicationController
  require 'google/api_client'

  DEVELOPER_KEY = 'AIzaSyBMTnPfDg1XfUKviYCDsGontA8VC'

  YOUTUBE_API_SERVICE_NAME = 'youtube'
  YOUTUBE_API_VERSION = 'v3'

  def get_service
    client = Google::APIClient.new(
      :key => DEVELOPER_KEY,
      :authorization => nil,
      :application_name => "metube",
      :application_version => '1.0.0'
    )
    youtube = client.discovered_api(YOUTUBE_API_SERVICE_NAME, YOUTUBE_API_VERSION)

    return client, youtube
  end

  def metube
    client, youtube = get_service
    @some_videos = client.execute!(
        :api_method => youtube.search.list,
        :parameters => {
            :part => 'snippet',
            :q => 'Google',
            :maxResults => 25
        }
    )

  end
end
