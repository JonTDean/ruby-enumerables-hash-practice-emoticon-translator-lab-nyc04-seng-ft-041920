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

def get_japanese_emoticon(file_path, emoticon)
  emoji_Dictionary = load_library(file_path)

  emoji_Dictionary.each do |topLevel_Key, topLevel_Value|
    topLevel_Value.each do |midLevel_Key, midLevel_Value|
      if midLevel_Value == emoticon
        return topLevel_Key, 
      else
        return "Sorry, that emoticon was not found"
      end
    end
  end
end

def get_english_meaning
  # code goes here
end