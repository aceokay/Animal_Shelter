require('spec_helper')

describe(Animal) do

  describe('#name') do
    it("returns the name of an animal") do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => '2015-08-12', :owner => nil, :id => nil})
      expect(new_animal.name).to(eq("Rico"))
    end
  end

  describe('#breed') do
    it("returns the breed of an animal") do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => '2015-08-12', :owner => nil, :id => nil})
      expect(new_animal.breed).to(eq("Pirahna"))
    end
  end

  describe('#gender') do
    it("returns the gender of an animal") do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => '2015-08-12', :owner => nil, :id => nil})
      expect(new_animal.gender).to(eq("Male"))
    end
  end

  describe('#type') do
    it("returns the type of an animal") do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => '2015-08-12', :owner => nil, :id => nil})
      expect(new_animal.type).to(eq("Fish"))
    end
  end

  describe('#date_of_entry') do
    it("returns the admittance date of an animal") do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => '2015-08-12', :owner => nil, :id => nil})
      expect(new_animal.date_of_entry).to(eq('2015-08-12'))
    end
  end

  describe('#save') do
    it('saves a given instance of the Animal class to the database') do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => '2015-08-12 00:00:00', :owner => "", :id => nil})
      new_animal.save()
      expect(Animal.all()).to(eq([new_animal]))
    end
  end

  describe('.all') do
    it('returns all saved instances of the Animal class, returns none if nothing is there.') do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => '2015-08-12', :owner => nil, :id => nil})
      expect(Animal.all()).to(eq([]))
    end
  end

  describe('.sort_by_entry_date') do
    it("returns all animals sorted by entry date with oldest animals at the top") do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => '2015-08-12', :owner => nil, :id => nil})
      new_animal.save
      new_animal_2 = Animal.new({:name => "Taco", :gender => "male", :type => "fish", :breed => "tacofish", :date_of_entry => '2015-08-04', :owner => nil, :id => nil})
      new_animal_2.save
      expect(Animal.sort_by_entry_date).to(eq([new_animal, new_animal_2]))
    end
  end

  describe('#delete') do
    it('deletes a given instance of the custom class Customer') do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => '2015-08-12', :owner => nil, :id => nil})
      new_animal.save
      new_animal.delete()
      expect(Animal.all()).to(eq([]))
    end
  end

end
