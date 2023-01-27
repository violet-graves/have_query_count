class QueryCounter
  IGNORE = %w(CACHE SCHEMA TRANSACTION).freeze

  attr_reader :query_count

  def initialize
    @query_count = 0
  end

  def to_proc = lambda(&method(:callback))

  private

  def callback(name, start, finish, message_id, values)
    IGNORE.include?(values[:name]) || @query_count += 1
  end
end
