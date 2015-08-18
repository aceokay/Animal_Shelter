class Animal
  attr_reader(:name, :gender, :type, :breed, :date_of_entry, :owner)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name).capitalize
    @gender = attributes.fetch(:gender).capitalize
    @type = attributes.fetch(:type).capitalize
    @breed = attributes.fetch(:breed).capitalize
    @date_of_entry = attributes.fetch(:date_of_entry)
    @owner = attributes.fetch(:owner)
  end
end
