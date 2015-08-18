require('spec_helper')

describe(Customer) do

  describe('#name') do
    it("returns the name of a Customer") do
      new_customer = Customer.new({:name => "Rick", :phone => "360-910-7205", :type_pref => "fish", :breed_pref => "pirahna", :id => nil})
      expect(new_customer.name).to(eq("Rick"))
    end
  end

  describe('#phone') do
    it("returns the phone of a Customer") do
      new_customer = Customer.new({:name => "Rick", :phone => "360-910-7205", :type_pref => "fish", :breed_pref => "pirahna", :id => nil})
      expect(new_customer.phone).to(eq("360-910-7205"))
    end
  end

  describe('#type_pref') do
    it("returns the type preference of a Customer") do
      new_customer = Customer.new({:name => "Rick", :phone => "360-910-7205", :type_pref => "fish", :breed_pref => "pirahna", :id => nil})
      expect(new_customer.type_pref).to(eq("Fish"))
    end
  end

  describe('#breed_pref') do
    it("returns the breed preference of an Customer") do
      new_customer = Customer.new({:name => "Rick", :phone => "360-910-7205", :type_pref => "fish", :breed_pref => "pirahna", :id => nil})
      expect(new_customer.breed_pref).to(eq("Pirahna"))
    end
  end

  #
  # describe('#save') do
  #   it('saves a given instance of the Animal class to the database') do
  #     new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => '2015-08-12 00:00:00', :owner => "", :id => nil})
  #     new_animal.save()
  #     expect(Animal.all()).to(eq([new_animal]))
  #   end
  # end
  #
  # describe('.all') do
  #   it('returns all saved instances of the Animal class, returns none if nothing is there.') do
  #     new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => '2015-08-12', :owner => nil, :id => nil})
  #     expect(Animal.all()).to(eq([]))
  #   end
  # end
  #
  # describe('.sort_by_entry_date') do
  #   it("returns all animals sorted by entry date with oldest animals at the top") do
  #     new_animal = Animal.new({:name => "Rico", :gender => "male", :type => "fish", :breed => "pirahna", :date_of_entry => '2015-08-12', :owner => nil, :id => nil})
  #     new_animal.save
  #     new_animal_2 = Animal.new({:name => "Taco", :gender => "male", :type => "fish", :breed => "tacofish", :date_of_entry => '2015-08-04', :owner => nil, :id => nil})
  #     new_animal_2.save
  #     expect(Animal.sort_by_entry_date).to(eq([new_animal, new_animal_2]))
  #   end
  # end

end
