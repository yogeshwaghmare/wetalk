class SessionsController < ApplicationController
 def create
     auth = request.env['omniauth.auth']
     puts"..........................................>>>!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!#{auth.inspect}"
    
#      if auth and params[:provider]
#        @authhash = Hash.new # {"email" => '', "name" => '', "uid" =>'',  "provider" =>''}
#        @authhash[:provider] = auth['provider'] or ''
#          if params[:provider] == 'facebook'
#            @authhash[:email] = auth['extra']['raw_info']['email'] or ''
#            @authhash[:name] =  auth['extra']['raw_info']['name'] or ''
#            @authhash[:uid] =  auth['extra']['raw_info']['id'].to_s or ''
#            @authhash[:fb_token] = auth['credentials']['token'] or nil
#          elsif ['google'].index(params[:provider]) != nil
#            @authhash[:email] =  auth['info']['email'] or ''
#            @authhash[:name] = auth['info']['name'] or ''
#            @authhash[:uid] = auth['uid'].to_s or ''
#          else
#         # TODO: message that it is not supported
#          render root_url
#          return
#          end
#
#          if @authhash[:uid] != '' and @authhash[:provider] != ''
#            @auth_service = Authservice.find_by_uid(@authhash[:uid])
#              if signed_in?
#                if @auth_service   # To make sure that the auth we found is for currently logged in user
#                  if @auth_service.user == current_user
#                    else
#                      reset_session
#                      current_user = @auth_service.user
#                    end
#                  else
#                  end
#                else
#               reset_session
#                  if @auth_service
#                    self.current_user = @auth_service.user
#                  else
#                    @user = User.create
#                    @user.update_attributes(:email=>@authhash[:email],:name => @authhash[:name],:fbid=>@authhash[:fb_token],:uid=>@authhash[:uid],:provider=>@authhash[:provider])
#                    session[:uid] = @authhash[:uid]
#                    session[:user_id] = @user.id
#                      if @user.save
#                        @auth_i = Authservice.create
#                        @auth_i.update_attributes(:uemail=>@authhash[:email],:uname=>@authhash[:name],:user_id=>@user.id,:uid=>@authhash[:uid],:provider=>
#@authhash[:provider])
#                      end
#                  end
#               end
#               @authhash[:fb_token] && session[:fb_token] = @authhash[:fb_token]
#            end
##            @users_terms = User.find_by_uid(@authhash[:uid])
##              if @users_terms.terms == false
##                I18n.locale = @users_terms.locale
##                redirect_to terms_path
##             else
##               I18n.locale = @users_terms.locale
##
##               redirect_to user_path(session[:user_id])
##             end
#          end
    end

end
