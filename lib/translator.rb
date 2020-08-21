# require modules here
require "yaml"
# def load_library(file_path)
#   library = {"get_meaning" => {}, "get_emoticon" => {} }
#   YAML.load_file(file_path).each do |meaning, array|
#     english, japanese = array
#     library["get_emoticon"][english] = japanese
#     library["get_meaning"][japanese] = meaning
#   end
#   library
# end
#
#
# def get_japanese_emoticon(yaml_file, emoticon)
#   library = load_library(yaml_file)
#   emoji = nil
#   library["get_emoticon"].each do |english, japanese|
#     if emoticon == english
#       emoji = japanese
#     end
#   end
#   if emoji == nil
#     return "Sorry, that emoticon was not found"
#   else
#     return emoji
#   end
# end
#
# def get_english_meaning(yaml_file, emoticon)
#   library = load_library(yaml_file)
#   emoji = nil
#   library["get_meaning"].each do |emo, trans|
#     if emo == emoticon
#       emoji = trans
#     end
#   end
#   if emoji == nil
#     return "Sorry, that emoticon was not found"
#   else
#     return emoji
#   end
# end

def load_library (file_path)
  require "yaml"
  emojis = YAML.load_file(file_path)
  translator_hash = {
      'happy' => {
         :english => ":)",
         :japanese => "(＾ｖ＾)"
      }
   }
  emojis.each do |meaning_key, emoticons_value|
    new_hash = {meaning_key }
    # (translator_hash[:get_meaning])[emoticons_value[1]] = meaning_key
    # (translator_hash[:get_emoticon])[emoticons_value[0]] = emoticons_value[1]
  end
return translator_hash
end

def get_japanese_emoticon (file_path, emoticon)
  load_library(file_path)[:get_emoticon][emoticon]
  else "Sorry, that emoticon was not found"
  end
end

def get_english_meaning (file_path, emoticon)
  if load_library(file_path)[:get_meaning][emoticon]
    load_library(file_path)[:get_meaning][emoticon]
  else "Sorry, that emoticon was not found"
  end
end
