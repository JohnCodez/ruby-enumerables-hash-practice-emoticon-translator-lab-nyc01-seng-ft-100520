# require modules here
require "yaml"

def load_library
  # code goes here
  emojis = YAML.load_file('emoticons.yml')
  emojis.map do |name, key|
    temps = []
    key.each do |emo|
      temps << emo
    end
    emoji = {name => {:english => temps[0], :japanese => temps[1]}}
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end