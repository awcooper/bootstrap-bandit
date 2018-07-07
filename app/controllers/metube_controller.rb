class MetubeController < ApplicationController
  require 'google/apis/youtube_v3'

  def get_service
    service = Google::Apis::YoutubeV3::YouTubeService.new
    service.key =  ENV["GOOGLE_DEVELOPER_KEY"]
    service
  end

  def metube
    service = get_service
    @result_videos = service.list_videos("snippet", chart: "mostPopular")
    @player = service.list_videos("player", chart: "mostPopular", max_results: 50, ).items.sample
  end

  def pagination
    sleep 2 #This sleep is for the loading flair, it's not necessary
    render partial: 'metube/comment'
  end

end