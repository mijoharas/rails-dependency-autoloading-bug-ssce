class TestClass
  include IncludeModule
  def self.foobar
    ChildClass.foobar
  end
end
