module ApplicationHelper

  def icon_link(glyphicon, link_string)
    ('<i class="' + glyphicon + '"></i>').html_safe + " " + link_string
  end

end
