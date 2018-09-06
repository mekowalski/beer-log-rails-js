class Beer < ActiveRecord::Base

  def beer_summary
    self.name + ' - ' + self.description
  end

end
