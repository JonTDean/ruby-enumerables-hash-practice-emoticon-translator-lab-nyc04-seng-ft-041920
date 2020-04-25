# require modules here
require "yaml"
emojis = YAML.load_file('./lib/emoticons.yml')

def load_library(file_path)
  emojis = YAML.load_file(file_path)
  organized_emojis = {}

  emojis.each do |key, value|
    
    if !organized_emojis.include?(key)
      organized_emojis[key] = {}
    end

    if !organized_emojis[key].include?(value[0])
        organized_emojis[key] = {english: value[0], japanese: value[1]}
    end
  end 
  return organized_emojis
end

def get_japanese_emoticon(file_path)
  # code goes here
end

def get_english_meaning
  # code goes here
end