require 'rest_client'

class SlackNotifier
  def initialize(slackwebhook)
    @resource = RestClient::Resource.new(slackwebhook)
  end

  def send_to_slack(text, channel)
    req_param = {
      channel: channel, text: text
    }    
    @resource.post(req_param.to_json)
  end
end