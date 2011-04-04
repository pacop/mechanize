##
# Wrapper to make a file URI work like an http URI

class Mechanize::FileConnection

  @instance = nil

  def self.new *a
    @instance ||= super
  end

  def request uri, request
    yield Mechanize::FileResponse.new CGI.unescape uri.path
  end

end

