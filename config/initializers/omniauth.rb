Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["520471288915-ikp9vkau65rmcuocrm30gp5u5i58rve8.apps.googleusercontent.com"], ENV["JxB_etmvl3L9bqdVIS5f0NnI"]
end