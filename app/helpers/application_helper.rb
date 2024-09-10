module ApplicationHelper
  def dev_meta
    return unless Rails.env.development?

    {
      request_id: request.uuid,
      ip: request.remote_ip,
      user_agent: request.user_agent,
      referer: request.referer,
      host: request.host,
      path: request.path,
      query: request.query_parameters,
      user: current_user&.as_json
    }
  end
end
