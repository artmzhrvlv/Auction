class UserPolicy < ApplicationPolicy

  attr_accessor :user

  # def initialize(user, remake)
  #   @user = user
  #   @remake = remake
  # end

  def admin_edit?
    user.role?
  end

  # def index?
  #   user.role? || user.present? if user
  # end

  # def update?
  #   user.role? || user.present? if user
  # end

  # def edit?
  #   user.role? || @remake
  # end

  # def profile?
  #   canupdate
  #   user.role? || user.present? if user
  # end

  def show?
    # canupdate
    # p "remake #{@@remake}"
    # p "wtf 2 #{record.inspect}"
    # p "polity show#{user.inspect}"
    user.role? || user.present? if user
  end

  # protected

  # def canupdate
  #   if record.inspect == user.inspect
  #     @remake = true
  #   else
  #     @remake = false
  #   end
  # end

end
