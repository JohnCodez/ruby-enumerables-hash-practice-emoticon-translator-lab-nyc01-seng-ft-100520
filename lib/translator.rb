# require modules here
require "yaml"

def load_library(location)
  # code goes here
  emojis = YAML.load_file(location)
  emoji = {}
  emojis.each do |name, key|
    temps = []
    
    key.each do |emo|
      temps << emo
    end
    
    emoji = {name => {:english => temps[0], :japanese => temps[1]}}
  end
  emoji
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end