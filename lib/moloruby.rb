require 'net/http'

require 'rubygems'
require 'json'

# The official Moloflollo gem
class Moloruby

  ##
  # call-seq:
  #   Moloruby.get_words(number)  =>  Array
  #
  # Gets the number of words passed as argument
  #
  #   Moloruby.get_words(3)
  #
  def self.get_words(number)
    return make_request(URI.parse('http://www.moloflollo.com/?numero=' + String(number) + '&tipo=palabras&formato=json'))
  end

  ##
  # call-seq:
  #   Moloruby.get_sentences(number)  =>  Array
  #
  # Gets the number of sentences passed as argument
  #
  #   Moloruby.get_sentences(3)
  #
  def self.get_sentences(number)
    return make_request(URI.parse('http://www.moloflollo.com/?numero=' + String(number) + '&tipo=frases&formato=json'))
  end

  ##
  # call-seq:
  #   Moloruby.get_paragraphs(number)  =>  Array
  #
  # Get the number of paragraphs passed as argument
  #
  #   Moloruby.get_paragraphs(3)
  #
  def self.get_paragraphs(number)
    return make_request(URI.parse('http://www.moloflollo.com/?numero=' + String(number) + '&tipo=parrafos&formato=json'))
  end

  private

    ##
    # call-seq:
    #   make_request(url)  =>  Array
    #
    # Make a request and return the _items_ key
    #
    def self.make_request(url)
      begin
        req = Net::HTTP::Get.new(url.to_s)
        res = Net::HTTP.start(url.host, url.port) { |http|
          http.request(req)
        }
      rescue
        return Array.new
      end

      return JSON.parse(res.body)['items']
    end
end

