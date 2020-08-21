# require modules here
require "yaml"
def load_library(file_path)
  library = {"get_meaning" => {}, "get_emoticon" => {} }
  YAML.load_file(file_path).each do |meaning, array|
    english, japanese = array
    library["get_emoticon"][english] = japanese
    library["get_meaning"][japanese] = meaning
  end
  library
end


def get_japanese_emoticon(yaml_file, emoticon)
  library = load_library(yaml_file)
  emoji = nil
  library["get_emoticon"].each do |english, japanese|
    if emoticon == english
      emoji = japanese
    end
  end
  if emoji == nil
    return "Sorry, that emoticon was not found"
  else
    return emoji
  end
end

def get_english_meaning(yaml_file, emoticon)
  library = load_library(yaml_file)
  emoji = nil
  library["get_meaning"].each do |emo, trans|
    if emo == emoticon
      emoji = trans
    end
  end
  if emoji == nil
    return "Sorry, that emoticon was not found"
  else
    return emoji
  end
end


