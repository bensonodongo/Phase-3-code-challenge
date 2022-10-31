# Please copy/paste all three classes into this file to submit your solution!
class Author
attr_reader :name
    def initialize(name)
	  @name = name
	end

    def articles
	  Article.all.select{|article|article.author == @name}
    end
  
    def magazines
	  articles.collect{|article|article.magazine}.uniq 
    end
  
	def add_article (magazine, title)
	  Article.new(self, magazine, title)
	end
  
	def topic_areas
	  magazines.collect{|magazine|magazine.
		category}.uniq
	end
  end

class Magazine
	attr_accessor :name, :category
	@@all = []
  
	def initialize(name, category)
	  @name = name
	  @category = category
	  @@all << self
	end 
	def self.all
	 @@all
	end
  
	def contributors
	  Article.all.filter{|article|article.magazine.name==@name}.map{|article|article.author.name}.uniq
	end
  
	def self.find_by_name(name)
	  Magazine.all.find{|magazine|
		magazine.name == name}
	end
	
	def article_titles
	  Article.all.filter{|article|article.magazine.name==@name}.map{|article|article.title}
	end
  
	def contributing_authors
	  popular_authors = Article.all.filter{|article|article.magazine.name== @name}.map{|article|article.author.name}.tally.each{|key, value| value > 2}
	  popular_authors
	end
  end

class Article
	@@all = []
attr_reader :magazine, :title
	def initialize( author, magazine, title)
		@author = author
		@magazine = magazine
		@title = title
		@@all << self
	end

	def self.all
		@@all
	end

	def author
		@author
	end
end