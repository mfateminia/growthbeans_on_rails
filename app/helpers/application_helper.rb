module ApplicationHelper
  def nav_link_to(click_text, action, url, style)
    if action_name == action
      return link_to click_text, url, class: style
    else
      return link_to click_text, url
    end
  end

  def sub_menu
    #initialize
    indexSubLink = []
    eventsSubLink = [{name: "Events", link:"#"},{name: "Events Blog", link:"#"},{name: "Events Ask", link:"#"}]
    subMenuHTML = "<ul id = \"subMenu\">";
    #check which selected page and load relevant sub menu
    case action_name
    when "index" then subMenu = indexSubLink
    when "events" then subMenu = eventsSubLink
    else subMenu = []
    end
    #Pour array into HTML list format
    subMenu.each do |item|
      subMenuHTML += "<li> #{link_to(item[:name], item[:link])} </li>"
    end
    subMenuHTML += "</ul>";
    #return results
    return subMenuHTML
  end
end
