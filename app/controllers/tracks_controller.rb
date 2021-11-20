class TracksController < ApplicationController
    before_action :set_track, only: [:edit, :update, :destroy]
    def index
        @tracks = Track.all
    end

    def new
        @track = Track.new
    end

    def create
        @track = Track.new(track_params)
        track_params = params.require(:track).permit(:title, :author, :content)

        if @track.save
            flash[:notice] = "A new track has been added"
            redirect_to tracks_path
        else
            flash[:error]= "There are some errors encountered"
            render :new
        end
    end

    def edit
        @track = Track.find(params[:id])
    end

    def update
        track_params = params.require(:track).permit(:url, :name, :credits)

        if @track.update(track_params)
            redirect_to tracks_path
        else 
            render :edit
        end
    end

    def destroy
        @track.destroy
        redirect_to tracks_path, notice: "The track was successfully deleted"
    end

    private

    def set_track
        @track = Track.find(params[:id])
    end

    def track_params
        params.require(:track).permit(:url, :name, :credits)
    end


end
