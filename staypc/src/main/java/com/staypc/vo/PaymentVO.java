package com.staypc.vo;

public class PaymentVO {

	private String id;
    private int lodge_code;
    private String card_num;
    private String card_valid;
    private String card_cvc;
    private String check_in;
    private String check_out;
    private String sum_money;
    private String reg_date;
    private String book_cancel;
    private String payment_code;
    private int begin;
    private int end;
    
    
    public int getBegin() {
		return begin;
	}

	public void setBegin(int begin) {
		this.begin = begin;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public String getPayment_code() {
    	return payment_code;
    }
    
    public void setPayment_code(String payment_code) {
    	this.payment_code = payment_code;
    }
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getLodge_code() {
        return lodge_code;
    }

    public void setLodge_code(int lodge_code) {
        this.lodge_code = lodge_code;
    }

    public String getCard_num() {
        return card_num;
    }

    public void setCard_num(String card_num) {
        this.card_num = card_num;
    }

    public String getCard_valid() {
        return card_valid;
    }

    public void setCard_valid(String card_valid) {
        this.card_valid = card_valid;
    }

    public String getCard_cvc() {
        return card_cvc;
    }

    public void setCard_cvc(String card_cvc) {
        this.card_cvc = card_cvc;
    }

    public String getCheck_in() {
        return check_in;
    }

    public void setCheck_in(String check_in) {
        this.check_in = check_in;
    }

    public String getCheck_out() {
        return check_out;
    }

    public void setCheck_out(String check_out) {
        this.check_out = check_out;
    }

    public String getSum_money() {
        return sum_money;
    }

    public void setSum_money(String sum_money) {
        this.sum_money = sum_money;
    }

    public String getReg_date() {
        return reg_date;
    }

    public void setReg_date(String reg_date) {
        this.reg_date = reg_date;
    }

    public String getBook_cancel() {
        return book_cancel;
    }

    public void setBook_cancel(String book_cancel) {
        this.book_cancel = book_cancel;
    }

    @Override
    public String toString() {
        return "PaymentVO{" +
                "id='" + id + '\'' +
                ", lodge_code=" + lodge_code +
                ", card_num='" + card_num + '\'' +
                ", card_valid='" + card_valid + '\'' +
                ", card_cvc='" + card_cvc + '\'' +
                ", check_in='" + check_in + '\'' +
                ", check_out='" + check_out + '\'' +
                ", sum_money='" + sum_money + '\'' +
                ", reg_date='" + reg_date + '\'' +
                ", book_cancel='" + book_cancel + '\'' +
                '}';
    }
}
