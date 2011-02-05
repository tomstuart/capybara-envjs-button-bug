class ButtonsController < ApplicationController
  def show
    render :inline => <<-eot
      <%= form_tag :action => :press do %>
        <%= content_tag :button, 'Hello', :name => :button, :value => 'Hello' %>
        <%= content_tag :button, 'Goodbye', :name => :button, :value => 'Goodbye' %>
      <% end %>
    eot
  end

  def press
    render :text =>
      case params[:button]
      when 'Hello':   'Hi!'
      when 'Goodbye': 'Bye!'
      end
  end
end
