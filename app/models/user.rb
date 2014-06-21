class User < ActiveRecord::Base
  #specify that the avatar is a paperclip file attachment
  #specify additional styles that you want to use in views or eslewhere
  has_attached_file :avatar, :styles => {:thumb => "100x100>"}
  validates_attachment :avatar, :content_type => { :content_type => "image/jpeg" }
  
  #specify that the resume is a paperclip file attachment
  has_attached_file :resume
  validates_attachment :resume, :content_type => { :content_type => "application/msword"}
end