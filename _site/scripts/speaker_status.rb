require 'yaml'

speaker_data = YAML.load_file( '_data/speakers.yml' )

puts "NO PICTURE:"
puts
speaker_data.each do |speaker|
  if speaker["pic_supplied"] != "Yes"
    puts (speaker["name"] + " " + speaker["pic_supplied"])
  end
end

puts
puts
puts "dietary_requirements"
speaker_data.each do |speaker|
  if speaker["dietary_requirements"] != "None"
    puts (speaker["name"] + " " + speaker["dietary_requirements"] )
  end
end