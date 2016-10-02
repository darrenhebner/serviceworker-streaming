class AppshellController < ApplicationController
  def shell_start
    render 'shell_start', :layout => false
  end

  def shell_end
    render 'shell_end', :layout => false
  end

  def shell_start_article
    render 'shell_start_article', :layout => false
  end
end
