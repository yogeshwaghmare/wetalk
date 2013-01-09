class ProductController < ApplicationController
  def new
    @product = Product.new

    respond_to do |format|
      format.html 
      format.xml  { render :xml => @product }
      format.json  { render :json => @product }
    end
  end

  def create
      @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        #flash[:notice] = 'Product was successfully submitted.'
    
      format.html {redirect_to :action =>"welcome", :controller => "product" , :id => @product.id }
      format.xml  { render :xml => @product }
      format.json  { render :json => @product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
        format.json  { render :json => @product.errors, :status => :unprocessable_entity }
       end
    end
  end

  def welcome
    @produt_list = Product.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @produt_list }
      format.json  { render :json => @produt_list }
    end
  end
end
