class WelcomeController < ApplicationController
  def index
    @welcome = 'Welcome to my page'
    render plain: @welcome
  end

  def show
    params[:name]
    @name = params[:name].capitalize
    render plain: "Good Day #{@name}"
  end

  def lorem
    @words = params[:words].downcase

    if @words == 'standard'
      render plain: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

    elsif
      @words == 'samuel'
      render plain: "The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee."

    elsif
      @words == 'hip'
      render plain: 'Yuccie banjo plaid bushwick marfa photo booth ennui. Austin helvetica tumblr, migas live-edge venmo kombucha enamel pin. Whatever authentic williamsburg migas, umami 8-bit squid fam gluten-free sartorial +1 prism gastropub paleo. Post-ironic mlkshk godard, four loko aesthetic ugh seitan squid offal pop-up chicharrones truffaut. Butcher semiotics cold-pressed biodiesel schlitz retro. Four dollar toast aesthetic hashtag, cred tilde chia narwhal bicycle rights lo-fi gochujang 8-bit. Sriracha lumbersexual live-edge franzen, tumeric squid jean shorts glossier fap.'
    end
  end
end
