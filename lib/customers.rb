class Customer

  attr_reader :name, :phone, :breed_pref, :type_pref, :id

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name).capitalize
    @phone = attributes.fetch(:phone)
    @breed_pref = attributes.fetch(:breed_pref).capitalize
    @type_pref = attributes.fetch(:type_pref).capitalize
    @id = attributes.fetch(:id)
  end

  define_method(:save) do
    saved = DB.exec("INSERT INTO customers (name, phone, breed_pref, type_pref) VALUES ('#{@name}', '#{@phone}', '#{@breed_pref}', '#{@type_pref}') RETURNING id")
    @id = saved.first.fetch('id').to_i()
  end

  define_singleton_method(:all) do
    returned_customers = DB.exec("SELECT * FROM customers ORDER BY name ASC;")
    all_customers = []
    returned_customers.each do |customer|
      name = customer.fetch("name")
      phone = customer.fetch("phone")
      type_pref = customer.fetch("type_pref")
      breed_pref = customer.fetch("breed_pref")
      id = customer.fetch("id").to_i
      all_customers << Customer.new({:name => name, :phone => phone, :type_pref => type_pref, :breed_pref => breed_pref, :id => id})
    end
    all_customers
  end

  define_method(:==) do |another_customer|
    self.name() == another_customer.name() && self.id == another_customer.id
  end

  define_method(:delete) do
    DB.exec("DELETE FROM customers WHERE id = #{self.id}")
  end
end
