require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  meaning_and_emoticons = {}
  meaning_and_emoticons[:get_meaning] = [] #manual creation bc test asks for specific key name
  meaning_and_emoticons[:get_emoticon] = [] #manual creation bc test asks for specific key name
  
  emoticons.each_pair do |pair|
    
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