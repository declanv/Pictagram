module Instagram

  include HTTParty

  def self.get_word(word)
    url = "https://api.instagram.com/v1/tags/#{word}/media/recent?access_token=INSTA_ACCESS_TOKEN"
    response = HTTParty.get(url)
    image_url = response["data"][0]["images"]["standard_resolution"]["url"]

    image_url
  end

end
