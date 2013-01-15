require 'Date'

module Jekyll
  class DueIn < Liquid::Tag
    @postID = nil
    @offset = nil

    def initialize(tag_name, markup, tokens)
      # puts "Init"
      # puts markup

      if markup =~ /([0-9]+)/
        # puts "Pattern Found"
        # @postID = $1 
        @offset = Integer($1)
      end

      super
    end

    def render(context)
      output = ""
      
      # Get the current post's post object
      id = context["page"]["id"]
      posts = context.registers[:site].posts
      post = posts [posts.index {|post| post.id == id}]
      
      # if post.id =~ /#{@postID}/
      dateString = post.date        
      if String(dateString) =~ /([0-9]+)-0*([0-9]+)-0*([0-9]+).*?/
        theDate = Date.new(Integer($1), Integer($2), Integer($3))
        # puts theDate
        due = theDate + @offset
        output = due.strftime ("%b %d")
      end

      output
    end
  end
end

Liquid::Template.register_tag('duein', Jekyll::DueIn)