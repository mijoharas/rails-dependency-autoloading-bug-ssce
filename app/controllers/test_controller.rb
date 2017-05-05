class TestController < ApplicationController
  def test
    @test = TestD.foobar
  end
end
