    class ReviewsController < ActionController::API
      def create
        @review = Review.new(review_params)

        if @review.save
          render json: @review
        else
          render json: { error: @review.errors.messages }, status: 422
        end
      end

      def destroy
        @review = Review.findy(params[:id])

        if @review.destroy
          head :no_content
        else
          render json: { error: @review.errors.messages }, status: 422
        end
      end

      private

      def review_params
        params.require(:review).permit(:title, :description, :score, :airline_id)
      end
    end
