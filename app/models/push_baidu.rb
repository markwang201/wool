require 'net/http'
#urls = ['http://www.jianfanli.top/articles/4', 'http://www.example.com/2.html']

# urls =  (1..10).map { |index| "http://www.jianfanli.top/articles/#{index}" }
#
# uri = URI.parse('http://data.zz.baidu.com/urls?site=www.jianfanli.top&token=kOGehuNh96sIxz5P&type=mip')
# req = Net::HTTP::Post.new(uri.request_uri)
# req.body = urls.join("\n")
# req.content_type = 'text/plain'
# res = Net::HTTP.start(uri.hostname, uri.port) { |http| http.request(req) }
# puts res.body

class PushBaidu
  def self.push(id)
    urls =  ["http://www.jianfanli.top/articles/#{id}"]
    uri = URI.parse('http://data.zz.baidu.com/urls?site=www.jianfanli.top&token=kOGehuNh96sIxz5P')
    req = Net::HTTP::Post.new(uri.request_uri)
    req.body = urls.join("\n")
    req.content_type = 'text/plain'
    res = Net::HTTP.start(uri.hostname, uri.port) { |http| http.request(req) }
    res.body
  end

  # def push_mip
  #   urls = ['http://www.example.com/1.html', 'http://www.example.com/2.html']
  #   uri = URI.parse('http://data.zz.baidu.com/urls?site=www.jianfanli.top&token=kOGehuNh96sIxz5P&type=mip')
  #   req = Net::HTTP::Post.new(uri.request_uri)
  #   req.body = urls.join("\n")
  #   req.content_type = 'text/plain'
  #   res = Net::HTTP.start(uri.hostname, uri.port) { |http| http.request(req) }
  #   puts res.body
  # end
end