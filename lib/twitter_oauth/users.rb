module TwitterOAuth
  class Client
   def search_users(q, options={})
     options[:q] = URI.escape(q)
     args = options.map{|k,v| "#{k}=#{v}"}.join('&')
     get("'/users/search.json?#{args}')")
   end

  end
end
