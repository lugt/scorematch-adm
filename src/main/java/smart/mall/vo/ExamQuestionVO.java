package smart.mall.vo;

public class ExamQuestionVO {

	private String id;
	private String type;
	private String content;
	
	private String optionA;
	private String optionB;
	private String optionC;
	private String optionD;
	private String optionE;
	private String optionF;
	
	private String answerA;
	private String answerB;
	private String answerC;
	private String answerD;
	private String answerE;
	private String answerF;
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getOptionA() {
		return optionA;
	}
	
	public void setOptionA(String optionA) {
		this.optionA = optionA;
	}
	
	public String getOptionB() {
		return optionB;
	}
	
	public void setOptionB(String optionB) {
		this.optionB = optionB;
	}
	
	public String getOptionC() {
		return optionC;
	}
	
	public void setOptionC(String optionC) {
		this.optionC = optionC;
	}
	
	public String getOptionD() {
		return optionD;
	}
	
	public void setOptionD(String optionD) {
		this.optionD = optionD;
	}
	
	public String getOptionE() {
		return optionE;
	}
	
	public void setOptionE(String optionE) {
		this.optionE = optionE;
	}
	
	public String getOptionF() {
		return optionF;
	}
	
	public void setOptionF(String optionF) {
		this.optionF = optionF;
	}
	
	public String getAnswerA() {
		return answerA;
	}
	
	public void setAnswerA(String answerA) {
		this.answerA = answerA;
	}
	
	public String getAnswerB() {
		return answerB;
	}
	
	public void setAnswerB(String answerB) {
		this.answerB = answerB;
	}
	
	public String getAnswerC() {
		return answerC;
	}
	
	public void setAnswerC(String answerC) {
		this.answerC = answerC;
	}
	
	public String getAnswerD() {
		return answerD;
	}
	
	public void setAnswerD(String answerD) {
		this.answerD = answerD;
	}
	
	public String getAnswerE() {
		return answerE;
	}
	
	public void setAnswerE(String answerE) {
		this.answerE = answerE;
	}
	
	public String getAnswerF() {
		return answerF;
	}
	
	public void setAnswerF(String answerF) {
		this.answerF = answerF;
	}

	@Override
	public String toString() {
		return "ExamQuestionVO [id=" + id + ", type=" + type + ", content=" + content + ", optionA=" + optionA
				+ ", optionB=" + optionB + ", optionC=" + optionC + ", optionD=" + optionD + ", optionE=" + optionE
				+ ", optionF=" + optionF + ", answerA=" + answerA + ", answerB=" + answerB + ", answerC=" + answerC
				+ ", answerD=" + answerD + ", answerE=" + answerE + ", answerF=" + answerF + "]";
	}

}
