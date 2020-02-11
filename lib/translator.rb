require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  meaning_and_emoticons = {}
  meaning_and_emoticons[:get_meaning] = {} #manual creation. Need keys to be Japanese emoticons that point to their meaning
  meaning_and_emoticons[:get_emoticon] = {} #manual creation. Need keys to be English emoticons that point to their meaning
  
  emoticons.each_pair do |pair|
    meaning = pair[0]            #eg. 
    emoticon_array = pair[1]
      if !
    emoticon_array.each do |ele|
      
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