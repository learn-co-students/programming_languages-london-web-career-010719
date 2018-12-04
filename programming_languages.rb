require 'pry'

def reformat_languages(languages)
  reformatted_languages = {}
  
  languages.each do |style, languages|
    languages.each do |language, language_data|
      #if the language doesn't yet exist add it
      if reformatted_languages[language] == nil
        reformatted_languages[language] = {
          type: language_data[:type],
          style: [style]
        }
      #otherwise add another sryle
      else
        reformatted_languages[language][:style] << style
      end
    end
  end
  reformatted_languages
end
