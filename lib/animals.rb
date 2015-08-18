class Animal
  attr_reader(:name, :gender, :type, :breed, :date_of_entry, :owner, :id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name).capitalize
    @gender = attributes.fetch(:gender).capitalize
    @type = attributes.fetch(:type).capitalize
    @breed = attributes.fetch(:breed).capitalize
    @date_of_entry = attributes.fetch(:date_of_entry)
    @owner = attributes.fetch(:owner)
    @id = attributes.fetch(:id)
  end

  define_method(:save) do
    saved = DB.exec("INSERT INTO animals (name, gender, type, breed, date_of_entry, owner) VALUES ('#{@name}', '#{@gender}', '#{@type}', '#{@breed}', '#{@date_of_entry}', '#{@owner}') RETURNING id;")
    @id = saved.first.fetch("id").to_i
  end

  define_singleton_method(:all) do
    returned_animals = DB.exec("SELECT * FROM animals ORDER BY name ASC;")
    all_animals = []
    returned_animals.each do |animal|
      name = animal.fetch("name")
      gender = animal.fetch("gender")
      type = animal.fetch("type")
      breed = animal.fetch("breed")
      date_of_entry = animal.fetch("date_of_entry")
      owner = animal.fetch("owner")
      id = animal.fetch("id").to_i
      all_animals << Animal.new({:name => name, :gender => gender, :type => type, :breed => breed, :date_of_entry => date_of_entry, :owner => owner, :id => id})
    end
    all_animals
  end

  define_method(:==) do |another_animal|
    self.name() == another_animal.name() && self.id == another_animal.id && self.gender == another_animal.gender && self.breed == another_animal.breed && self.type == another_animal.type
  end

  define_singleton_method(:sort_by_entry_date) do
    returned_animals = DB.exec("SELECT * FROM animals ORDER BY date_of_entry DESC;")
    all_animals = []
    returned_animals.each do |animal|
      name = animal.fetch("name")
      gender = animal.fetch("gender")
      type = animal.fetch("type")
      breed = animal.fetch("breed")
      date_of_entry = animal.fetch("date_of_entry")
      owner = animal.fetch("owner")
      id = animal.fetch("id").to_i
      all_animals << Animal.new({:name => name, :gender => gender, :type => type, :breed => breed, :date_of_entry => date_of_entry, :owner => owner, :id => id})
    end
    all_animals
  end

  define_method(:delete) do
    DB.exec("DELETE FROM animals where id = #{self.id()}")
  end
end
