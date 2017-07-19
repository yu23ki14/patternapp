class WelcomeController < ApplicationController
  def index
    
#現状開始
    @yourresult = Question.where(user_id: current_user.id).last
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
      f.chart(polar: true,type:'line', plotBorderColor: "#111") #グラフの種類
      f.pane(size:'100%')                  #グラフサイズの比
      f.title(text: '現状')#タイトル
      f.colors(['#FF6928'])
      f.xAxis(categories: genre,tickmarkPlacement:'on')    
      f.yAxis(gridLineInterpolation: 'polygon',lineWidth:0,min:0,max:3) #各項目の最大値やら
      f.series(name:'スコア',
          data: aData,
          pointPlacement:'on')
      f.legend(align: 'center',
	        verticalAlign: 'top',
	        y: 20,
	        layout: 'vertical',
	        )
    end
    
    @yourresults= Question.where(user_id: current_user.id).order("created_at DESC")
    
    
#目標開始
    @yourobjective = Objective.where(user_id: current_user.id).last
    genre = ['コア','学びはじめ','実践の中<br>での学び','学びの<br>連鎖','鍛錬','実行力','発想','創造','仕上げ','学びの<br>仲間','他者との<br>関わり','自省','突き抜け']
    ocore = @yourobjective[:no1] + @yourobjective[:no2] + @yourobjective[:no3]
    oa = @yourobjective[:no4] + @yourobjective[:no5] + @yourobjective[:no6]
    ob = @yourobjective[:no7] + @yourobjective[:no8] + @yourobjective[:no9]
    oc = @yourobjective[:no10] + @yourobjective[:no11] + @yourobjective[:no12]
    od = @yourobjective[:no13] + @yourobjective[:no14] + @yourobjective[:no15]
    oe = @yourobjective[:no16] + @yourobjective[:no17] + @yourobjective[:no18]
    off = @yourobjective[:no19] + @yourobjective[:no20] + @yourobjective[:no21]
    og = @yourobjective[:no22] + @yourobjective[:no23] + @yourobjective[:no24]
    oh = @yourobjective[:no25] + @yourobjective[:no26] + @yourobjective[:no27]
    oi = @yourobjective[:no28] + @yourobjective[:no29] + @yourobjective[:no30]
    oj = @yourobjective[:no31] + @yourobjective[:no32] + @yourobjective[:no33]
    ok = @yourobjective[:no34] + @yourobjective[:no35] + @yourobjective[:no36]
    ol = @yourobjective[:no37] + @yourobjective[:no38] + @yourobjective[:no39]
    aData = [ocore,oa,ob,oc,od,oe,off,og,oh,oi,oj,ok,ol]

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
end
