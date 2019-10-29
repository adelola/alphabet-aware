Clearance.configure do |config|
  config.routes = false
  config.mailer_sender = "no-reply@alphabet-aware.com"
  config.rotate_csrf_on_sign_in = true
end
