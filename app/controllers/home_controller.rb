class HomeController < ApplicationController
  def derby
    gon.derby_data = JSON.parse(IO.read(Rails.root + 'app/assets/data/skater_data.json'))
  end
end
