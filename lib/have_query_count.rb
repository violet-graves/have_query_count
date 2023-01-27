# frozen_string_literal: true

require "active_support"

require "have_query_count/query_counter"

module HaveQueryCount
  RSpec::Matchers.define :have_query_count do |expected|
    supports_block_expectations

    match { |block| count(&block) == expected }

    failure_message do |_|
      "expected #{expected} sql queries, but got #{@counter.query_count}"
    end

    def count(&block)
      @counter = QueryCounter.new
      ActiveSupport::Notifications.subscribed(
          @counter.to_proc,
          "sql.active_record",
          &block
      ) && @counter.query_count
    end
  end
end
