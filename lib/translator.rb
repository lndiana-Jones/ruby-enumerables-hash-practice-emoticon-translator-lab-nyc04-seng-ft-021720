require "yaml"

def load_library(file)
  emoticons = YAML.load_file(file)
  meaning_and_emoticons = {}
  
  emoticons.each_pair do |pair|
    puts pair[0]
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