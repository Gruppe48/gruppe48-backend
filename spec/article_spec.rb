require "#{File.dirname(__FILE__)}/spec_helper"

describe 'article' do
  before(:each) do
    @article = Article.new(:title => 'Januar', :published => true, :content => 'hallo')
  end

  specify 'should be valid' do
    @article.should be_valid
  end

  specify 'should require a title' do
    @article = Article.new
    @article.should_not be_valid
    @article.errors[:title].should include("Title must not be blank")
  end
  specify 'should require content' do
    @article = Article.new
    @article.should_not be_valid
    @article.errors[:content].should include("Content must not be blank")
  end

end
