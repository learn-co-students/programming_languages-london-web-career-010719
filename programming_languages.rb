require 'pry'

def reformat_languages(languages)
  reformat_languages = {}
  languages.each do |style, data|
    data.each do |name, type_key|
    #  style_adder = []
      reformat_languages[name] = type_key
      #style_adder.push(style)
      reformat_languages[name][:style] = []
    #  style_adder.push(style)
      end
    #languages[data][style]
  end
  languages.each do |style, data|
    data.each do |name, type_key|
      reformat_languages[name][:style].push(style)
    end
  end
  reformat_languages
end
