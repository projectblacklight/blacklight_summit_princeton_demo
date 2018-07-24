module ApplicationHelper

  def custom_modal(args)
    return_value = args[:value].map do | isbn_value |
      link_to(isbn_value, "/catalog/custom_modal", data: {"ajax-modal": "trigger"})
    end

    return_value.join(" ❤️ ").html_safe
    # args[:value].join
  end

end
