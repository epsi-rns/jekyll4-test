# Hello World Wxample by Jesse Clark
# https://gist.github.com/jessgusclark/ceb68b45832a118e7f586c2968e014ca

module Jekyll
  class HelloWorld < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "Hello World, #{@text}!"
    end
  end
end

Liquid::Template.register_tag('hello', Jekyll::HelloWorld)
