class Site::CommentsController < SiteController

  before_action :authenticate_member!

  def create
    @comment = Comment.new(comment_params)
    @comment.member = current_member
    if @comment.save
      redirect_to site_ad_detail_path(@comment.ad_id), notice: "Commentário Adicionado"
    else
      redirect_to site_ad_detail_path(@comment.ad_id), notice: "Erro ao adicionar Comentário"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :ad_id)
  end


end
