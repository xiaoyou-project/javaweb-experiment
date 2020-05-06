package keshe;

import java.io.Serializable;

public class GuessNumber implements Serializable {
    //系统随机生成一个数
    int answer=0;
    //用户猜的数
    int guessNumber=0;
    //用户猜的次 数
    int guessCount=0;
    String result=null;
    boolean right=false;
    public GuessNumber(){

    }
    public void setAnswer(int answer){
        this.answer=answer;
        guessCount=0;
    }
    public int getAnswer(){
        return answer;
    }
    public int getGuessNumber() {
        return guessNumber;
    }
    public void setGuessNumber(int guessNumber) {
        this.guessNumber = guessNumber;
        guessCount++;
        if(guessNumber==answer)
        {    result="恭喜你猜对了！";
            right=true;
        }
        else if(this.answer<1||this.answer>100)
        {
            result="请输入1~100的整数！";
            right=false;
        }
        else if(guessNumber>answer)
        {
            result="不好意思你猜大了！";
            right=false;
        }
        else {
            result="不好意思你猜小了！";
            right=false;
        }

    }
    public int getGuessCount() {
        return guessCount;
    }
    public void setGuessCount(int guessCount) {
        this.guessCount = guessCount;
    }
    public String getResult() {
        return result;
    }
    public void setResult(String result) {
        this.result = result;
    }
    public boolean isRight() {
        return right;
    }
    public void setRight(boolean right) {
        this.right = right;
    }

}