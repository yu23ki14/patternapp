class QuestionsController < ApplicationController
  before_action :authenticate_user!
  # GET /questions
  # GET /questions.json
  def index
    @question = Question.new
    @patterns = Pattern.all
  end
  
  def result
    @yourresult = Question.where(user_id: current_user.id).last
    genre = ['コア','学びはじめ','実践の中での学び','学びの連鎖','鍛錬','実行力','発想','創造','仕上げ','学びの仲間','他者とのかかわり','自省','突き抜け']
    core = @yourresult[:no1] + @yourresult[:no2] + @yourresult[:no3]
    a = @yourresult[:no4] + @yourresult[:no5] + @yourresult[:no6]
    b = @yourresult[:no7] + @yourresult[:no8] + @yourresult[:no9]
    c = @yourresult[:no10] + @yourresult[:no11] + @yourresult[:no12]
    d = @yourresult[:no13] + @yourresult[:no14] + @yourresult[:no15]
    e = @yourresult[:no16] + @yourresult[:no17] + @yourresult[:no18]
    ff = @yourresult[:no19] + @yourresult[:no20] + @yourresult[:no21]
    g = @yourresult[:no22] + @yourresult[:no23] + @yourresult[:no24]
    h = @yourresult[:no25] + @yourresult[:no26] + @yourresult[:no27]
    i = @yourresult[:no28] + @yourresult[:no29] + @yourresult[:no30]
    j = @yourresult[:no31] + @yourresult[:no32] + @yourresult[:no33]
    k = @yourresult[:no34] + @yourresult[:no35] + @yourresult[:no36]
    l = @yourresult[:no37] + @yourresult[:no38] + @yourresult[:no39]
    aData = [core,a,b,c,d,e,ff,g,h,i,j,k,l]

    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.chart(polar: true,type:'line') #グラフの種類
      f.pane(size:'100%')                  #グラフサイズの比
      f.title(text: '結果')         #タイトル
      f.colors(['#FF6928'])
      f.xAxis(categories: genre,tickmarkPlacement:'on')    
      f.yAxis(gridLineInterpolation: 'polygon',lineWidth:0,min:0,max:3) #各項目の最大値やら
      f.series(name:'スコア',data: aData,pointPlacement:'on')
      f.legend(align: 'center',
	        verticalAlign: 'top',
	        y: 20,
	        layout: 'vertical')
    end
  end
  
  def create
    @question = Question.new(question_params)
    @question.save
    
    redirect_to root_path
  end
  
  def show
    @yourresult = Question.where(user_id: current_user.id).find(params[:id])
    genre = ['コア','学びはじめ','実践の中<br>での学び','学びの<br>連鎖','鍛錬','実行力','発想','創造','仕上げ','学びの<br>仲間','他者との<br>関わり','自省','突き抜け']
    core = @yourresult[:no1] + @yourresult[:no2] + @yourresult[:no3]
    a = @yourresult[:no4] + @yourresult[:no5] + @yourresult[:no6]
    b = @yourresult[:no7] + @yourresult[:no8] + @yourresult[:no9]
    c = @yourresult[:no10] + @yourresult[:no11] + @yourresult[:no12]
    d = @yourresult[:no13] + @yourresult[:no14] + @yourresult[:no15]
    e = @yourresult[:no16] + @yourresult[:no17] + @yourresult[:no18]
    ff = @yourresult[:no19] + @yourresult[:no20] + @yourresult[:no21]
    g = @yourresult[:no22] + @yourresult[:no23] + @yourresult[:no24]
    h = @yourresult[:no25] + @yourresult[:no26] + @yourresult[:no27]
    i = @yourresult[:no28] + @yourresult[:no29] + @yourresult[:no30]
    j = @yourresult[:no31] + @yourresult[:no32] + @yourresult[:no33]
    k = @yourresult[:no34] + @yourresult[:no35] + @yourresult[:no36]
    l = @yourresult[:no37] + @yourresult[:no38] + @yourresult[:no39]
    aData = [core,a,b,c,d,e,ff,g,h,i,j,k,l]

    @graph = LazyHighCharts::HighChart.new('graph') do |f|
      f.chart(polar: true,type:'line') #グラフの種類
      f.pane(size:'100%')                  #グラフサイズの比
      f.title(text: '結果')         #タイトル
      f.colors(['#FF6928'])
      f.xAxis(categories: genre,tickmarkPlacement:'on')    
      f.yAxis(gridLineInterpolation: 'polygon',lineWidth:0,min:0,max:3) #各項目の最大値やら
      f.series(name:'スコア',data: aData,pointPlacement:'on')
      f.legend(align: 'center',
	        verticalAlign: 'top',
	        y: 20,
	        layout: 'vertical')
    end
    @yourresults= Question.where(user_id: current_user.id).order("created_at DESC")
  end
  
  

  def question_params
    params.require(:question).permit(:user_id, :title, :no0, :no1,	:no2,	:no3,	:no4,	:no5,	:no6,	:no7,	:no8,	:no9,	:no10,	:no11,	:no12,	:no13,	:no14,	:no15,	:no16,	:no17,	:no18,	:no19,	:no20,	:no21,	:no22,	:no23,	:no24,	:no25,	:no26,	:no27,	:no28,	:no29,	:no30,	:no31,	:no32,	:no33,	:no34,	:no35,	:no36,	:no37, :no38,	:no39)
  end
end
