require 'net/http'

# debugger
puts'fetching definitions.rb from solargraph repo..."
url = "https://gist.githubusercontent.com/castwide/28b349566a223dfb439a337aea29713e/raw/715473535f11cf3eeb9216d64d01feac2ea37ac0/rails.rb"
uri = URI(url)

responseFile = Net::HTTP.get(uri)

file = File.new('definitions.rb', 'w+')
file.syswrite responseFile
file.close

