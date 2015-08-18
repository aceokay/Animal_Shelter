class Customer

  attr_reader :name, :phone, :breed_pref, :type_pref, :id

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name).capitalize
    @phone = attributes.fetch(:phone)
    @breed_pref = attributes.fetch(:breed_pref).capitalize
    @type_pref = attributes.fetch(:type_pref).capitalize
    @id = attributes.fetch(:id)
  end

end
