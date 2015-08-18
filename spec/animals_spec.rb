require('spec_helper')

describe(Animal) do

  describe('#name') do
    it("returns the name of an animal") do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => "2015-08-12", :owner => nil})
      expect(new_animal.name).to(eq("Rico"))
    end
  end

  describe('#breed') do
    it("returns the breed of an animal") do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => "2015-08-12", :owner => nil})
      expect(new_animal.breed).to(eq("Pirahna"))
    end
  end

  describe('#gender') do
    it("returns the gender of an animal") do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => "2015-08-12", :owner => nil})
      expect(new_animal.gender).to(eq("Male"))
    end
  end

  describe('#type') do
    it("returns the type of an animal") do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => "2015-08-12", :owner => nil})
      expect(new_animal.type).to(eq("Fish"))
    end
  end

  describe('#date_of_entry') do
    it("returns the admittance date of an animal") do
      new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => "2015-08-12", :owner => nil})
      expect(new_animal.date_of_entry).to(eq("2015-08-12"))
    end
  end

end
