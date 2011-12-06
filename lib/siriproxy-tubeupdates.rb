require 'cora'
require 'siri_objects'
require 'net/http'
require 'json'

class SiriProxy::Plugin::TubeUpdates < SiriProxy::Plugin
  def initialize(config)

  end

  listen_for /[what is,what's] the status of (.*)/i do |line|
    encodedline = line.gsub(' ', '+')
    url = URI.parse('http://tubeupdates.com/siri/?line='+encodedline)
    json = Net::HTTP::get url
    result = JSON.parse json
    say result["status"]
    
    if result["messages"].count > 0
        response = ask "There are additional details. Would you like to hear them?"
        if(response =~ /yes/i) #process their response            
            result["messages"].each { | message |
                say message
            }
        end
    end
    request_completed
  end

end
