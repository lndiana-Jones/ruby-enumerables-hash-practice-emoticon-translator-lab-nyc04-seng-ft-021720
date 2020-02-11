require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  meaning_and_emoticons = {}
  meaning_and_emoticons[:get_meaning] = {} #manual creation. Need keys to be Japanese emoticons that point to their meaning
  meaning_and_emoticons[:get_emoticon] = {} #manual creation. Need keys to be English emoticons that point to their japanese equivalent
  
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

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

p load_library('lib/emoticons.yml')