require "./lib/refinements"

# Any strings in the Foo Class
# now has new methods since it
# has `using Refinements`
class Foo
  using Refinements

  attr_reader :bar

  def make_bar(value)
    @bar = String(value).to_bar
  end
end

foo = Foo.new()

foo.make_bar("text")

puts foo.bar.inspect
