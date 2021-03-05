# frozen_string_literal: true

module Entities
  Repository = Struct.new(
    :id,
    :name,
    :full_name,
    :html_url,
    :ssh_url,
    keyword_init: true
  ) do
    def as_alfred_item
      {
        title: full_name,
        subtitle: html_url+'/pulls',
        arg: html_url+'/pulls',
        text: {
          copy: ssh_url,
          largetype: full_name
        }
      }
    end
  end
end
