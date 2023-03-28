Depending on your application's configuration some manual setup may be required:

  1. Ensure you have defined default url options in your environments files. Here
     is an example of default_url_options appropriate for a development environment
     in config/environments/development.rb:

       config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

     In production, :host should be set to the actual host of your application.

     * Required for all applications. *

  2. Ensure you have defined root_url to *something* in your config/routes.rb.
     For example:

       root to: "home#index"
     
     * Not required for API-only Applications *

  3. Ensure you have flash messages in app/views/layouts/application.html.erb.
     For example:

       <p class="notice"><%= notice %></p>
       <p class="alert"><%= alert %></p>

     * Not required for API-only Applications *

  4. You can copy Devise views (for customization) to your app by running:

       rails g devise:views
       
     * Not required *

===============================================================================



There are many commands that devise provides..

rails generate devise:install - will create config/devise.rb
rails generate devise User - will create db/migration-file-for-user-model which commented code,which you can uncomment,if you need other modules..such as confirmable,omniauth etc
rails generate devise:views - will create all views in the devise folder with app/views/devise/sessions,app/views/devise/confirmations,registrations etc folder and its views respectively.
rails generate devise:views users - will create folder of app/views/users/passwords/,app/views/users/confirmations ..etc instead of devise folder above.
rails generate devise:controllers - will create all controllers..similar to above...here it will create app/controllers/devise/sessions_controller.rb with default commented code,which you need to edit else leave it as it is for basic authentication.Moreover,you can also add users scope in the end,to generate controllers in controllers/users/ and not controllers/devise/