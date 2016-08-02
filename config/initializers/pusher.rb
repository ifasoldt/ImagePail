require 'pusher'

Pusher.app_id = '231853'
Pusher.key    = ENV["pusher_key"]
Pusher.secret = ENV["pusher_secret"]
Pusher.logger = Rails.logger
Pusher.encrypted = true
