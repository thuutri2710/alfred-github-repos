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
      pulls_html_url = html_url +'/pulls'
      {
        title: full_name,
        subtitle: pulls_html_url,
        arg: pulls_html_url,
        text: {
          copy: ssh_url,
          largetype: full_name
        }
      }
    end
  end
end
