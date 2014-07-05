require 'sunlight/influence'

# module CallConstructor

#   def search_format(foo)
#     if foo.match(" ")
#       foo.gsub!(' ', '%20')
#     else
#       foo
#     end
#   end

#   def check_options_hash(options)
#     options.delete(:name)
#     if !options.empty?
#       options[:parameters] = string_constructor(options)
#     end
#   end

#   def call_api(options)
#     options = {category: options[:category], parameters: options[:parameters]}
#     call = uri_builder(options)
#     sunlight_call(call)
#   end

#   def string_constructor(args)
#     collection = []
#     args.each do |k, v|
#       val = search_format(v)
#       collection << "#{k}=#{val}&"
#     end
#     collection.join
#   end

#   def uri_builder(args)
#     api_key = Sunlight::Influence.api_key
#     URI("#{Sunlight::Influence::BASE_URI}/#{args[:category]}#{args[:entity_id]}.json?#{args[:parameters]}apikey=#{api_key}")
#   end

#    def sunlight_call(api_call)
#     JSON.load(Net::HTTP.get(api_call))
#   end
# end
