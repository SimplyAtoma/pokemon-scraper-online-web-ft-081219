class Pokemon
  attr_accessor :id, :name, :type, :db
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(new_name, new_type, db)
    db.execute("INSERT INTO pokemon(name,type) VALUES ('#{new_name}', '#{new_type}')")
  end 
  
  def self.find(id, db)
    db.execute("SELECT * FROM pokemon WHERE id = #{id}")
    
  end 
end
