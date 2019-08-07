class TripTodosController < ApplicationController
  before_action :set_trip_todo, only: [:show, :edit, :update, :destroy]



  # GET /trip_todos
  # GET /trip_todos.json
  def index
    require 'faraday'
    require 'json'
    @trip_todos = TripTodo.all

    api_key = "60ab23f8d51d18fa2aa495ce95389fdb"
    base_url = 'http://ec2-35-175-181-14.compute-1.amazonaws.com:9090/todomessagerest/v1/'
    con = Faraday.new 

    res = con.get do |req| 
      req.url base_url
      req.headers['api-key'] = api_key
  end

    todo = JSON.parse(res.body, object_class: OpenStruct)

    array_size = rand(0..todo.count - 1)

     index_count = array_size


   @get_todo = todo[index_count].title
   @get_completed = todo[index_count].completed
   @get_description = todo[index_count].description
  
    
  
  end

  # GET /trip_todos/1
  # GET /trip_todos/1.json
  def show
  end

  # GET /trip_todos/new
  def new
    @trip_todo = TripTodo.new
  end

  # GET /trip_todos/1/edit
  def edit
  end

  # POST /trip_todos
  # POST /trip_todos.json
  def create
    @trip_todo = TripTodo.new(trip_todo_params)

    respond_to do |format|
      if @trip_todo.save
        format.html { redirect_to @trip_todo, notice: 'Trip todo was successfully created.' }
        format.json { render :show, status: :created, location: @trip_todo }
      else
        format.html { render :new }
        format.json { render json: @trip_todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_todos/1
  # PATCH/PUT /trip_todos/1.json
  def update
    respond_to do |format|
      if @trip_todo.update(trip_todo_params)
        format.html { redirect_to @trip_todo, notice: 'Trip todo was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip_todo }
      else
        format.html { render :edit }
        format.json { render json: @trip_todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_todos/1
  # DELETE /trip_todos/1.json
  def destroy
    @trip_todo.destroy
    respond_to do |format|
      format.html { redirect_to trip_todos_url, notice: 'Trip todo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_todo
      @trip_todo = TripTodo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_todo_params
      params.fetch(:trip_todo, {})
    end
end
