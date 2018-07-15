def output(speaker)
  # <<-HTML
speaker['twitter']
  # HTML
end

require 'yaml'
yml = YAML::load File.open('_data/speakers.yml')
speakers = []
yml.each do |speaker|
  speakers << speaker
end

speakers.sort_by!{|s| s['name']}

speakers.each do |speaker|
  puts output(speaker)
end

