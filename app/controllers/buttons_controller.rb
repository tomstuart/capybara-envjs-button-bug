class ButtonsController < ApplicationController
  def show
    render :inline => <<-eot
      <%= form_tag :action => :press do %>
        <%= submit_tag 'Hello', :name => :button %>
        <%= submit_tag 'Goodbye', :name => :button %>
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
