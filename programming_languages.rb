def reformat_languages(languages)
  def reformat_languages(languages)
  # your code here
  reformatted_languages = {}
  languages.each do |style, languages|
    languages.each do |language, language_data|
      #if the language doesn't yet exist add it
      if reformatted_languages[language] == nil
        reformatted_languages[language] = {
          type: language_data[:type],
          style: [style]
        }
      else
        reformatted_languages[language][:style] << style
      end
    end
  end
  reformatted_languages
end
end
