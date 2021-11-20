class ArtistsController < ApplicationController
    before_action :set_track, only: [:edit, :update, :destroy]
    def index
        @artists = Artist.all
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.new(artist_params)
        artist_params = params.require(:artist).permit(:permalink, :bio, :formed_at, :verified, :verified_at, :avatar_url, :cover_photo_url, :name)

        if @artist.save
            flash[:notice] = "A new artist has been added"
            redirect_to artists_path
        else
            flash[:error] = "There are some errors encountered"
            render :new
        end
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def update
        artist_params = params.require(:artist).permit(:permalink, :bio, :formed_at, :verified, :verified_at, :avatar_url, :cover_photo_url, :name)

        if @arist.update(artist_params)
            redirect_to artists_path
        else
            render :edit
        end
    end

    def destroy
        @artist.destroy
        redirect_to artist_path, notice: "The artist was successfully deleted"
    end

    private

    def set_artist
        @artist = Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:permalink, :bio, :formed_at, :verified, :verified_at, :avatar_url, :cover_photo_url, :name)
    end

end
