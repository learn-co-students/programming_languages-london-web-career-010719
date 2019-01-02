def reformat_languages(languages)
  # your code here
  new_hash = {}

  languages.each do |style, language_hash|
    language_hash.each do |language, attribute|
      if new_hash.has_key?(language) != true
        new_hash[language] = attribute
        new_hash[language][:style] = []
        new_hash[language][:style] << style
      else
        new_hash[language][:style] << style
      end
    end
  end
  new_hash
end
