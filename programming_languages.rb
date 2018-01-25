def reformat_languages(languages)
  languages_by_style = {}
  languages.each do |type, hash|
    hash.each do |name, attributes|
      languages_by_style[name] ||= attributes
      languages_by_style[name][:style] ||= []
      languages_by_style[name][:style] << type
    end
  end
  languages_by_style
end
