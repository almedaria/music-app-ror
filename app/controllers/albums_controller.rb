class AlbumsController < ApplicationController
    before_action :set_album, only: [:edit, :update, :destroy]
    def index
        @albums = Album.all.with_attached_image
    end

    def new
        @album = Album.new
    end

    def create
        @album = Album.new(album_params)
        @album.image.attach(params[:album][:image])

        if @album.save
            flash[:notice] = "A new album has been added"
            redirect_to albums_path
        else
            flash[:error] = "There are some errors encountered"
            render :new
        end
    end

    def edit
        @album = Album.find(params[:id])
    end

    def update

        if @album.update(album_params)
            redirect_to albums_path
        else
            render :edit
        end
    end

    def destroy
        @album.destroy
        redirect_to albums_path, notice: "The album was successfully deleted"

    end

    private 
    
    def set_album
        @album = Album.find(params[:id])
    end

    def album_params
        params.require(:album).permit(:name, :released, :released_at, :cover_art_url, :length, :kind, :image)
    end

end
