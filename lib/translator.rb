# require modules here
require "yaml"

def load_library(location)
  # code goes here
  emojis = YAML.load_file(location)
  emoji = {}
  emojis.each do |name, key|
    emoji[name] = {:english => key[0], :japanese => key[1]}
  end
  emoji
end

def get_japanese_emoticon(location, emoticon)
  # code goes here
  all = load_library(location)
  all.each do |name, key|
    key.each do |ekey|
      if emoticon == ekey
        return key[0]
      else 
        return
      end
    end
  end
end

def get_english_meaning
  # code goes here
end