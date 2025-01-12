require 'httparty'

module DadJokes
  def self.generate
    HTTParty.get("https://icanhazdadjoke.com/", :headers => {
          "Accept" => "text/plain" 
    }).body.force_encoding(Encoding::UTF_8)
  end
end
