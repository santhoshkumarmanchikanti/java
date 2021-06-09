package com.model;

public class SpecialEditionCD extends CD{
    private String specialFeature;

    public  SpecialEditionCD()
    {
        super();
    }

    public SpecialEditionCD(String cdTitle, double cdPrice, String specialFeature) {
        super(cdTitle, cdPrice);
        this.specialFeature = specialFeature;
    }

    public String getSpecialFeature() {
        return specialFeature;
    }

    public void setSpecialFeature(String specialFeature) {
        this.specialFeature = specialFeature;
    }

    @Override
    public String getDetail() {
        return super.getDetail()+" Special Feature: "+getSpecialFeature();
    }
    public void a()
    {

    }
}
