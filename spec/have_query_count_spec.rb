require "spec_helper"

require "have_query_count"

RSpec.describe "have_query_count" do
  it "works" do
    expect { User.count }.to have_query_count(1)
  end

  it "catches n+1s" do
    user1 = User.create
    user2 = User.create
    cat1 = Cat.create(user: user1)
    cat2 = Cat.create(user: user1)
    cat3 = Cat.create(user: user2)
    cat4 = Cat.create(user: user2)

    expect { Cat.all.map(&:user) }.
      to have_query_count(5)
    expect { Cat.preload(:user).all.map(&:user) }.
      to have_query_count(2)
  end
end