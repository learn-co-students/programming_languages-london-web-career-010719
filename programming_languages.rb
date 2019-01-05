def reformat_languages(languages)
  new_hash = {}
  languages.each do |value, lan|
    lan.each do |name, attr|
      if new_hash[name] == nil
        new_hash[name] = attr
        new_hash[name][:style] = [value]
      else 
        new_hash[name][:style] << value
      end
    end
  end
  new_hash
end
