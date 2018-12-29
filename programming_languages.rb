#languages = {
#  :oo => {
#    :ruby => {
#      :type => "interpreted"
#    },
#    :javascript => {
#      :type => "interpreted"
#    },
#    :python => {
#      :type => "interpreted"
#    },
#    :java => {
#      :type => "compiled"
#    }
#  },
#  :functional => {
#    :clojure => {
#      :type => "compiled"
#    },
#    :erlang => {
#      :type => "compiled"
#    },
#    :scala => {
#      :type => "compiled"
#    },
#    :javascript => {
#      :type => "interpreted"
#    }

#  }
#}

require 'pry'


def reformat_languages(languages)
new_hash = {}
 languages.each do |style, name_and_type|
   name_and_type.each do |name, type|
     unless new_hash[name]
       new_hash[name] = type
       new_hash[name][:style] = []
     end
     new_hash[name][:style] << style
 end
 end
 new_hash
 end
