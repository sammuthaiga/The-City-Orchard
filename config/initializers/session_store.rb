if Rails.env == "production"
    Rails.application.config.session_store :cookie_store, key: "_the_city_orchard", domain: "https://link-to-your-production-app.com/"
  else
    Rails.application.config.session_store :cookie_store, key: "_the_city_orchard"
  end