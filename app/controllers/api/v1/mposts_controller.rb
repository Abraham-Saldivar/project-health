module Api
    module V1
        class MpostsController < ApplicationController
            
            # protect_from_forgery with: :null_session


            def create 
                mpost = MPost.new(mpost_params)
                if mpost.save
                    render json: MPostSerializer.new(mpost).serialized_json
                else 
                render json: {error: mpost.errors.messages}, status: 422
                end
            end
            
              def destroy
                mpost = MPost.find(params[:id])
                if mpost.destroy
                    head :no_content
                else 
                render json: {error: mpost.errors.messages}, status: 422
                end
            end
            
            private 

            def mpost_params
                params.require(:mpost).permit(:name, :nickname, :dose, :frequency, :user_id)
            end 
        end
    end
end 
