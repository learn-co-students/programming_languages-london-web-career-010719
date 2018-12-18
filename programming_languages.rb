require 'pry'

def reformat_languages(languages)
new_hash = {}
languages.each do |key, value|
  value.each do |name, info|
    unless new_hash[name]
      new_hash[name] = info
      new_hash[name][:style] = []
    end
    new_hash[name][:style] << key
end
end
new_hash
end
