class Bird

  public :can_fly
  protected :lay_Eggs

  def can_fly
    true
  end

  def lay_Eggs
    true
  end

end

class Penguin <Bird
  def can_fly
    false
  end
end



newpenguin=Penguin.new

p newpenguin.can_fly    #overwrite garxa parents class ko
p newpenguin.lay_Eggs
