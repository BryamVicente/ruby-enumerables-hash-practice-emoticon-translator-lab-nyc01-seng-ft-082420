# require modules here
require "yaml"
def load_library(file_path)
  def load_library(yaml_file)
  emoticons = {}

  YAML.load_file(yaml_file).each do |mood,emoji, english, japanese|
    emoticons = {
      mood => {
         english => emoji,
         japanese => emoji
  }
}


  end
  emoticons
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
