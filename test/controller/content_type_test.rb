require 'abstract_unit'

class OldContentTypeController < ActionController::Base
  def render_default_for_rjs
  end
end

class ContentTypeTest < ActionController::TestCase
  tests OldContentTypeController

  def test_default_for_rjs
    type = ::Mime.respond_to?(:[]) ? ::Mime[:js] : ::Mime::JS
    post :render_default_for_rjs, xhr: true
    assert_equal type, @response.content_type
    assert_equal "utf-8", @response.charset
  end
end
