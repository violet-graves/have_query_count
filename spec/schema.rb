ActiveRecord::Schema.define do
  self.verbose = false

  create_table(
    :users,
    :force => true
  ) { |table| table.string :key }

  create_table :cats, force: true do |t|
    t.string :key
    t.belongs_to :user
  end
end