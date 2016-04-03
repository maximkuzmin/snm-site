class PagesController < ApplicationController

  before_filter :get_subdomain

  def show
    @subdomains = Subdomain.all
    @pages = @subdomain.try :pages
    @page = Page.where(slug: params[:page] || @pages.order(:orders).first)
  end

  private
    def get_subdomain
      subs = Subdomain.where subdomain: request.subdomain
      if subs.count > 0
        @subdomain = subs.first
      else

        redirect_to root_url subdomain: Settings[:app][:default_subdomain]
      end
    end
end
