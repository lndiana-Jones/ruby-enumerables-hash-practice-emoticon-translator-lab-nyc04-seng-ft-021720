require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  get_meaning = {}
  
  emoticons.each_pair do |pair|
    puts pair
  end
  
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

p load_library('lib/emoticons.yml')