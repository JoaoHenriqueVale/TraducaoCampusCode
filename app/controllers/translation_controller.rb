class TranslationController < ApplicationController

  def index
    @traducao = Translation.all
  end

  def show
    id = params[:id]
    @traducao = Translation.find(id)
  end

  def new
    @traducao = Translation.new
  end

  def create
    @traducao = Translation.new
    @traducao.texto_portugues = params[:translation][:texto_portugues]
    @traducao.texto_ingles = params[:translation][:texto_ingles]
    @traducao.save
    redirect_to root_path
  end

  def edit
    id = params[:id]
    @traducao = Translation.find(id)
  end

  def update
    id = params[:translation][:id]
    @traducao = Translation.find(id)
    @traducao.update_attributes(:texto_portugues => params[:translation][:texto_portugues], :texto_ingles => params[:translation][:texto_ingles])
    redirect_to root_path
  end

  def destroy
    id = params[:id]
    @traducao = Translation.find(id)
    @traducao.destroy
    redirect_to root_path
  end
end
