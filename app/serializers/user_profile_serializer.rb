class UserProfileSerializer < ActiveModel::Serializer
  attributes :profile

  def profile
    render json: @user, status: :ok
  end


end
