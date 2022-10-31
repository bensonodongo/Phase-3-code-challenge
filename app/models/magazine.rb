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
