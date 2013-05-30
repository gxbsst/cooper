module ApplicationHelper
  def yield_for(content_sym, default)
    output = content_for(content_sym)
    if output.blank?
      output = default
    #else
    #  output += "- Starfiretire.com"
    end
    output
  end

  def map_url_params(center, zoom)
    if request.post? && params[:region][:province].present?
    "/stores/map?region[province]=#{params[:region]['province']}
     &region[city]=#{params[:region]['city']}
     &region[shop_type]=#{params[:region]['shop_type']}
     &center=#{center.join(',')}&zoom=#{zoom}"
    elsif request.post? && params[:region][:full_address].present?
    "/stores/map?region[full_address]=#{params[:region]['full_address']}
     &center=#{center.join(',')}&zoom=#{zoom}"
    else
      "/stores/map?center=#{center.join(',')}&zoom=#{zoom}"
    end
  end

  def sort_decorative
    [
      ["DISCOVERER STT", "DISCOVERER STT"],
      ["DISCOVERER STMAXX", "DISCOVERER STMAXX"],
      ["DISCOVERER AT3", "DISCOVERER AT3"],
      ["DISCOVERER ATR", "DISCOVERER ATR"],
      ["DISCOVERER ATS", "DISCOVERER ATS"],
      ["DISCOVERER HTS", "DISCOVERER HTS"],
      ["ZEON XST-A", "ZEON XST-A"],
      ["ZEON 4XS", "ZEON 4XS"],

      ["ZEON C7", "ZEON C7"],
      ["ZEON RS3-A", "ZEON RS3-A"],
      ["ZEON RS3-S", "ZEON RS3-S"],
      ["ZEON ASP", "ZEON ASP"],
      ["LIFELINER GLS", "LIFELINER GLS"],
      ["ZEON ATP", "ZEON ATP"]
    ]
  end

end
