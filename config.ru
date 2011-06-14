require File.join(File.dirname(__FILE__), *%w[lib server])
run(Sinatra::Application)