


Rails.application.config.middleware.use OmniAuth::Builder do
   provider :google_oauth2, '127681241488-qlmvi5us1e27gofg55r6d7dmc8a43pq6.apps.googleusercontent.com','anq50WAZz5GyiPbI_HCz2c1V', {:provider_ignores_state => true}
end