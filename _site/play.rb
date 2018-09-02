require 'yaml'
speakers = YAML.load_file('_data/speakers.yml')

def html(name, twitter, picture, title)
  <<-HTML

#{twitter} "#{title}"

HTML
end



speakers.each do |speaker_data|
  name = speaker_data["name"]
  twitter = speaker_data["twitter"]
  picture = speaker_data["image"]
  title = speaker_data["title"]

  puts html(name, twitter, picture, title)
end
