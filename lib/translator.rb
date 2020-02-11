require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  meaning_and_emoticons = {}
  meaning_and_emoticons[:get_meaning] = {} #manual creation. Need keys to be Japanese emoticons that point to their meaning
  meaning_and_emoticons[:get_emoticon] = {} #manual creation. Need keys to be English emoticons that point to their meaning
  
  emoticons.each_pair do |pair|
    meaning = pair[0]            #eg. angel, angry, bored
    english_emoticon = pair[1][0]     #eg. ["O:)", "☜(⌒▽⌒)☞"]
      if !meaning_and_emoticons[:get_meaning][meaning]
        meaning_and_emoticons[:get_meaning][meaning] = 
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