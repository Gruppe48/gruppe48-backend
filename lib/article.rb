class Article

  include DataMapper::Resource
  
  property :id, Serial
  property :title, String, :required => true
  property :published, Boolean, :default => false
  
  property :content, Text, :required => true
end