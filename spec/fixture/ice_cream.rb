class Ingredient < Neo4j::Model
  property :name
end

class IceCream < Neo4j::Model
  property :flavour
  index :flavour
  has_one(:ingredient).to(Ingredient)
  has_n(:ingredients).to(Ingredient)
  validates_presence_of :flavour
end
