class ObjectivesController < ApplicationController
  before_action :set_objective, only: [:show, :edit, :update, :destroy]

  # GET /objectives
  # GET /objectives.json
  def index
    @objectives = Objective.all
    
    @yourobjective = Objective.where(user_id: current_user.id).last
    genre = ['コア','学びはじめ','実践の中での学び','学びの連鎖','鍛錬','実行力','発想','創造','仕上げ','学びの仲間','他者とのかかわり','自省','突き抜け']
    core = @yourobjective[:no1] + @yourobjective[:no2] + @yourobjective[:no3]
    a = @yourobjective[:no4] + @yourobjective[:no5] + @yourobjective[:no6]
    b = @yourobjective[:no7] + @yourobjective[:no8] + @yourobjective[:no9]
    c = @yourobjective[:no10] + @yourobjective[:no11] + @yourobjective[:no12]
    d = @yourobjective[:no13] + @yourobjective[:no14] + @yourobjective[:no15]
    e = @yourobjective[:no16] + @yourobjective[:no17] + @yourobjective[:no18]
    ff = @yourobjective[:no19] + @yourobjective[:no20] + @yourobjective[:no21]
    g = @yourobjective[:no22] + @yourobjective[:no23] + @yourobjective[:no24]
    h = @yourobjective[:no25] + @yourobjective[:no26] + @yourobjective[:no27]
    i = @yourobjective[:no28] + @yourobjective[:no29] + @yourobjective[:no30]
    j = @yourobjective[:no31] + @yourobjective[:no32] + @yourobjective[:no33]
    k = @yourobjective[:no34] + @yourobjective[:no35] + @yourobjective[:no36]
    l = @yourobjective[:no37] + @yourobjective[:no38] + @yourobjective[:no39]
    aData = [core,a,b,c,d,e,ff,g,h,i,j,k,l]

    @objective_graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.chart(polar: true,type:'line') #グラフの種類
      f.pane(size:'100%')                  #グラフサイズの比
      f.title(text: '目標')         #タイトル
      f.colors(['#00BFFF'])
      f.xAxis(categories: genre,tickmarkPlacement:'on')    
      f.yAxis(gridLineInterpolation: 'polygon',lineWidth:0,min:0,max:3) #各項目の最大値やら
      f.series(name:'スコア',data: aData,pointPlacement:'on')
      f.legend(align: 'center',
	        verticalAlign: 'top',
	        y: 20,
	        layout: 'vertical')
    end
  end

  # GET /objectives/1
  # GET /objectives/1.json
  def show
  end

  # GET /objectives/new
  def new
    @patterns = Pattern.all
    @objective = Objective.new
  end

  # GET /objectives/1/edit
  def edit
    @patterns = Pattern.all
  end

  # POST /objectives
  # POST /objectives.json
  def create
    @objective = Objective.new(objective_params)

    respond_to do |format|
      if @objective.save
        format.html { redirect_to objectives_path }
        format.json { render :show, status: :created, location: @objective }
      else
        format.html { render :new }
        format.json { render json: @objective.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objectives/1
  # PATCH/PUT /objectives/1.json
  def update
    respond_to do |format|
      if @objective.update(objective_params)
        format.html { redirect_to @objective, notice: 'Objective was successfully updated.' }
        format.json { render :show, status: :ok, location: @objective }
      else
        format.html { render :edit }
        format.json { render json: @objective.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objectives/1
  # DELETE /objectives/1.json
  def destroy
    @objective.destroy
    respond_to do |format|
      format.html { redirect_to objectives_url, notice: 'Objective was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objective
      @objective = Objective.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objective_params
      params.require(:objective).permit(:user_id, :title, :no0, :no1,	:no2,	:no3,	:no4,	:no5,	:no6,	:no7,	:no8,	:no9,	:no10,	:no11,	:no12,	:no13,	:no14,	:no15,	:no16,	:no17,	:no18,	:no19,	:no20,	:no21,	:no22,	:no23,	:no24,	:no25,	:no26,	:no27,	:no28,	:no29,	:no30,	:no31,	:no32,	:no33,	:no34,	:no35,	:no36,	:no37, :no38,	:no39)
    end
end
