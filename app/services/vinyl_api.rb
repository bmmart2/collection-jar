require "discogs-wrapper"

class VinylApi
    # Add an action to initiate the process.
    def authenticate
      @discogs     = Discogs::Wrapper.new("Collection Jar")
      request_data = @discogs.get_request_token("LnuqsVwfXRIBFjsHEksb", "OFvqqCrWQvzKzsMZJJJMJpfcQdTgHNyw", "http://127.0.0.1:3000/callback")

      session[:request_token] = request_data[:request_token]

      redirect_to request_data[:authorize_url]
    end

    # And an action that Discogs will redirect back to.
    def callback
      @discogs      = Discogs::Wrapper.new("Test OAuth")
      request_token = session[:request_token]
      verifier      = params[:oauth_verifier]
      access_token  = @discogs.authenticate(request_token, verifier)

      session[:request_token] = nil
      session[:access_token]  = access_token

      @discogs.access_token = access_token

      # You can now perform authenticated requests.
    end
end

    auth_wrapper = Discogs::Wrapper.new("My awesome web app", access_token: session[:access_token])
    search       = auth_wrapper.search("Necrovore", :per_page => 10, :type => :artist)
puts search
