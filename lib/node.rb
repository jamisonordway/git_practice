

class Node
  attr_reader :score,
            :title

  attr_accessor :node_left,
              :node_right,
              :parent

  def initialize(score, title, parent = nil)
    @score = score
    @title = title
    @node_left = nil
    @node_right = nil
    @parent = parent
  end

  def get_user_email(email, password)
    email = "User email is #{email} and user password is #{password}"
    puts email
  end

  def reset_password(new_password, password)
    puts "Enter your new password"
    password = new_password
  end

end
