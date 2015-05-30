class RpgController < ApplicationController
  # @gold = 0
  def index

      if (session[:gold])
         session[:gold] += 0
      else 
        session[:gold] =0
      end
  
      @gold = session[:gold]

        render 'index'

  end

  def farm

    rand = rand(10..20)

      if (session[:gold])
         session[:gold] += rand
      else 
        session[:gold] =0
      end
  
      @gold = session[:gold]

        render 'index'

  end

  def casino
     rand = rand(-50..50)

      if (session[:gold])
         session[:gold] += rand
      else 
        session[:gold] =0
      end
  
      @gold = session[:gold]

        render 'index'
  end

  def house
     rand = rand(2..5)

      if (session[:gold])
         session[:gold] += rand
      else 
        session[:gold] =0
      end
  
      @gold = session[:gold]

        render 'index'
  end

  def cave
     rand = rand(5..10)

      if (session[:gold])
         session[:gold] += rand
      else 
        session[:gold] =0
      end
  
      @gold = session[:gold]

        render 'index'
  end

  def reset
     reset_session
     render 'index'
  end

end
