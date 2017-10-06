namespace :spree do

  desc 'Sync Brightcove videos'
  task sync_brightcove_videos: :environment do
    # Insert brightcove videos
    puts "Use your custome logic here"
    get_assets()
  end

end

def get_slug(title)
  title.downcase.gsub(" ", "-")
end

def get_brightcove_secret
  uri = URI("https://oauth.brightcove.com/v4/access_token")
  https = Net::HTTP.new(uri.host, uri.port)
  https.use_ssl = true

  client_id = "94e4e8e5-19cf-4d6d-8f3d-3a2ff8f46c70"
  client_secret = "BAKQ1jHcrE5eFBHNm9q8NgEo9lN1I9IfXlnPw4UxLtzjV4RqV9yeLmWiQGPhQlEMjw8kZFkiim0EqfMvymOwHg"


  request = Net::HTTP::Post.new(uri.path)
  secret_key = Base64.encode64("#{client_id}:#{client_secret}")
  secret_key.gsub!("\n", "")
  request["Authorization"] = "Basic #{secret_key}"
  request['Content-Type'] = 'application/x-www-form-urlencoded'
  request.body = 'grant_type=client_credentials'

  response = https.request(request)
  JSON.parse(response.body)
end


def get_assets()
  uri = URI("https://cms.api.brightcove.com/v1/accounts/5295890399001/videos")
  https = Net::HTTP.new(uri.host, uri.port)
  https.use_ssl = true
  request = Net::HTTP::Get.new(uri.path)

  secret_key = get_brightcove_secret["access_token"]
  secret_key.gsub!("\n", "")

  request["Authorization"] = "Bearer #{secret_key}"
  request['Content-Type'] = 'application/json'

  response = https.request(request)
  JSON.parse(response.body)
end
