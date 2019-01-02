


def reformat_languages(languages)
  # your code here
  new_hash = {}
  
  languages.each do |styles,language|
        language.each do |type , attribute|
        new_hash[type] ||= attribute
        new_hash[type][:style] = []
        new_hash[type][:style]<<styles
        end
      end
  new_hash[:javascript][:style]<< :oo
  new_hash

end



