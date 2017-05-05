class TestController < ApplicationController
  def test
    @test = TestClass.foobar
  end
end
