class ExampleController < ActionController::Base
  def foo
    redirect_to controller: :example, action: :bar
  end

  def action_with_params
    redirect_to controller: :example, action: :bar, hello: 'world'
  end

  def bar
    render nothing: true
  end
end