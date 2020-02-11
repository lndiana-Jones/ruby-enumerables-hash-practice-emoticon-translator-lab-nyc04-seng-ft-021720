require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  meaning_and_emoticons = {}
  meaning_and_emoticons[:get_meaning] = {} #Japanese emoticons => Emoticon meaning
  meaning_and_emoticons[:get_emoticon] = {} #English emoticon => Japanese emoticon
  
  emoticons.each_pair do |pair|
    meaning = pair[0]            #eg. angel, angry, bored
    english_emoticon = pair[1][0] #eg. ["O:)"] 
    japanese_emoticon = pair[1][1] #eg. ["☜(⌒▽⌒)☞"]
      if !meaning_and_emoticons[:get_meaning][japanese_emoticon]
        meaning_and_emoticons[:get_meaning][japanese_emoticon] = meaning
      end
      if !meaning_and_emoticons[:get_emoticon][english_emoticon]
        meaning_and_emoticons[:get_emoticon][english_emoticon] = japanese_emoticon
      end
    
  end
  meaning_and_emoticons
end

def get_japanese_emoticon(file, english_emote)
  meaning_and_emoticons = load_library(file) 
  meaning_and_emoticons[:get_emoticon][english_emote]
  
end

def get_english_meaning()
  # code goes here
end

p load_library('lib/emoticons.yml')