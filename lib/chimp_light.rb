module ChimpLight
  class Api
    def initialize( apikey, opts = {})
      opts[:dc] ||= 'us1'
      opts[:version] ||= '1.3'
      opts[:protocol] = opts[:ssl] ? "https" : "http"
    
      @apikey = apikey
      @base_url = "%s://%s.api.mailchimp.com/%s/" % opts.values_at(:protocol, :dc, :version)
    end
  
    def method_missing(meth, opts = {})
      Curl::Easy.http_post "%s?method=%s" % [@base_url, meth], CGI.escape( opts.reverse_merge( :apikey => @apikey ).to_json)
    end
  end
end