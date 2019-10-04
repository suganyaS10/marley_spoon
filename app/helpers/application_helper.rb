module ApplicationHelper

  def contentful
    @client ||= Contentful::Client.new(
      space: Rails.application.secrets.CONTENTFUL[:space_id],
      access_token: Rails.application.secrets.CONTENTFUL[:access_token],
      dynamic_entries: :auto,
      raise_errors: true,
      environment: 'master'
    )
  end
end
