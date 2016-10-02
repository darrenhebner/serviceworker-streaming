Rails.application.configure do
  config.serviceworker.routes.draw do
    match "/serviceworker.js" => "serviceworker.js"
  end
end
