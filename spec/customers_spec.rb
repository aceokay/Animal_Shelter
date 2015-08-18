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


  describe('#save') do
    it('saves a given instance of the Customer class to the database') do
      new_customer = Customer.new({:name => "Rick", :phone => "360-910-7205", :type_pref => "fish", :breed_pref => "pirahna", :id => nil})
      new_customer.save
      expect(Customer.all()).to(eq([new_customer]))
    end
  end

  describe('.all') do
    it('returns all saved instances of the Customer class, returns none if nothing is there.') do
      new_customer = Customer.new({:name => "Rick", :phone => "360-910-7205", :type_pref => "fish", :breed_pref => "pirahna", :id => nil})
      expect(Customer.all()).to(eq([]))
    end
  end

  describe('#delete') do
    it('deletes a given instance of the custom class Customer') do
      new_customer = Customer.new({:name => "Rick", :phone => "360-910-7205", :type_pref => "fish", :breed_pref => "pirahna", :id => nil})
      new_customer.save
      new_customer.delete()
      expect(Customer.all()).to(eq([]))
    end
  end

end
