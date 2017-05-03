class Journal
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
end
