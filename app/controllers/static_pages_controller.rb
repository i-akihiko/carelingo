class StaticPagesController < ApplicationController
  # layout false

  def agreement
    redirect_to agreement_path if params["locale"].blank?
  end
end
