require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  get_meaning = {}
  
  emoticons.each do 
  
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

puts load_library('lib/emoticons.yml')