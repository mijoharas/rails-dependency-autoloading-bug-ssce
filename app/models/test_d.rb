class TestD
  include TestA
  def self.foobar
    TestC.foobar
  end
end
