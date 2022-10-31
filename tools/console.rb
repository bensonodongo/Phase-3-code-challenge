require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
kenyanews=Author.new("Odosh")
kenya_updates=Magazine.new("kenya_updatess","business")
citizen=Magazine.new("citizen","lifestyle")
taifa=Magazine.new("taifa","counties")
art1=Article.new(at1,kenya_updates,"Title1")
art2=Article.new(at1,kenya_updates,"Title2")
kenyanews.add_article(kenya_updates,"Title3")
kenyanews.add_article(kenya_updates,"Title4")
kenyanews.add_article(kenya_updates,"Title5")
kenyanews.add_article(citizen,"Title6")
kenyanews.add_article(taifa,"Title7")
### DO NOT REMOVE THIS
binding.pry

0
