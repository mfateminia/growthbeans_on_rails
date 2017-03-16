module EventsHelper

  def load_events
    #initialize
    eventsHTML = "<table id=\"eventsTable\">"

    #pour into HTML
    @events.each do |event|
      eventsHTML += "<tr class = \"eventItem\">
      <td class=\"eventDateTime\">#{image_tag event[:date_time_image_name]}</td>
      <td class=\"eventInfo\">
        <p class=\"eventTitle\">#{event[:title]}</p>
        <p class=\"eventSpeaker\">#{event[:speaker]}</p>
        <p class=\"eventVenue\">#{event[:venue]}</p>
        <div id=\"registerEventBut\">#{link_to("Register here!", event[:register_link], target: "_blank")}</div>
      </td>
      <td class=\"eventPoster\">#{image_tag event[:poster_image_name]}</td>
      </tr>"
    end
    eventsHTML += "</table>"

    #return HTML
    return eventsHTML
  end
end
# <a href=\"images/events/16032017.png\" target=\"_blank\"><img src=\"images/events/th_16032017.jpg\"></a>
#        <div id=\"registerEventBut\">#{link_to "Register here!" event["eventRegisterLink"] target: "_blank" }</div>
#
#
