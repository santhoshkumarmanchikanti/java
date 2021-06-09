package com.model;

import java.util.Random;
import java.util.UUID;
public class CD {
    private String cdId;
    private String cdTitle;
    private double cdPrice;

    public CD() {
    }

    public CD(String cdTitle, double cdPrice) {
        this.cdId = UUID.randomUUID().toString();
        Random random = new Random();
        int a=random.nextInt(100000000);
        System.out.println(a);
        this.cdTitle = cdTitle;
        this.cdPrice = cdPrice;
    }

    public String getCdId() {
        return cdId;
    }

    public void setCdId(String cdId) {
        this.cdId = cdId;
    }

    public String getCdTitle() {
        return cdTitle;
    }

    public void setCdTitle(String cdTitle) {
        this.cdTitle = cdTitle;
    }

    public double getCdPrice() {
        return cdPrice;
    }

    public void setCdPrice(double cdPrice) {
        this.cdPrice = cdPrice;
    }

    public String getDetail() {

        return "ID: "+getCdId()+" Title: "+getCdTitle()+" Price: "+getCdPrice();
    }
}
