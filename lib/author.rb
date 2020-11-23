require 'pry'
class Author
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        new_author = Post.new(post_title)
        add_post(new_author)
    end

    def self.post_count
        Post.all.count
    end

    def posts
        Post.all
    end
end