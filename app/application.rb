class Application

  def call(env)
   resp = Rack::Response.new
  #   resp.write "Hello, World"
  #   resp.finish
  # end

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"


    if num_1==num_2 && num_2==num_3
    # puts "You Win"
      resp.write "You Win"
    else
    # puts "You Lose"
     resp.write "You Loser"
    end 

    resp.finish
  end 
end
