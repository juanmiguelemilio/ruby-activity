# fix code
# Fix this code: https://www.codepile.net/pile/M5XMAE4x

# Goal:
# 1. Admin should be able to login
# 2. Admin should be able to update all users profile
# 3. Admin should be able to change password
# 4. Buyer should be able to login
# 5. Buyer should be able to buy an item
# 6. Admin should be able to change password

# Expected output:

# User logged in. IP address: 127.0.0.1
# Admin updated all users profile
# Password changed!
# User logged in. IP address: 127.0.0.1
# Buyer has bought an item
# Password changed!

module AdminPermission
  def edit_users_profile
    puts "Admin updated all users profile"
  end
end

module BuyerPermission
  def buy
    puts "Buyer has bought an item"
  end
end

module ChangePassword
  def change_password
    puts "Password changed!"
  end
end

class User
  attr_accessor :username, :ip_address
  attr_writer :change_password
  def initialize(username, password, ip_address)
   @username = username
   @password = password
   @ip_address = ip_address
  end

  protected
  def login
    puts "#{username} logged in. IP address: #{ip_address}"
  end
end


class Admin < User
  def admin_login
    login
  end

  include AdminPermission
  include ChangePassword
end


class Buyer < User
  def buyer_login
    login
  end

  include BuyerPermission
  def change_password
    puts "Password changed!"
  end
end






## execute

my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
my_admin.admin_login
my_admin.edit_users_profile

my_admin.change_password = 'new_password'

buyer = Buyer.new('juan', 'password', '127.0.0.1')
buyer.buyer_login
buyer.buy

buyer.change_password = 'new_password'