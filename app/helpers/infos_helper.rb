#encoding: utf-8
module InfosHelper
  def infos_year_path(year)
    "/infos/#{year}"
  end

  def info_show_path(info)
    "/infos/#{info.created_at.year}/#{info.id}"
  end

  def link_to_year(year, current_view_year)
    current_year = current_view_year.to_i == year.to_i ? true : false
    if current_year
      link_to year, infos_year_path(year), :class => :hover, 'data-priority' => '0.5'
    else
      link_to year, infos_year_path(year), 'data-priority' => '0.5'
    end
  end

  def link_to_prev_info(info)
     if info.previous_info
       link_to "上一篇: #{info.previous_info.title}", info_show_path(info.previous_info)
     end
  end

  def link_to_next_info(info)
    if info.next_info
      link_to "下一篇: #{info.next_info.title}", info_show_path(info.next_info)
    end
  end

  def link_to_canonical(info)
    "<link rel='canonical' href='http://#{request.host}/infos/#{info.created_at.year}/#{info.id}' />".html_safe
  end
end