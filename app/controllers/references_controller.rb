class ReferencesController < ApplicationController
  respond_to :html, :js

  def index
    # Delay before loading
    sleep 1
    # Get the references ready for pagination
    @references = Reference.all.paginate(page: params[:page], per_page: 3)
    # @reference = Reference.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def new
    @reference = Reference.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  # called on a POST to the references_path, such as a form submission
  def create
    @reference = Reference.new reference_params
    if @reference.save
      respond_to do |format|
        format.html
        format.js
      end
    else
      render :new
    end
  end

private

  def reference_params
    params.require(:reference).permit(:referee, :referee_info, :body)
  end

end
