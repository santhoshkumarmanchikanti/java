package com.model;

public class InternationalCD extends CD{
    private String languageCode;

    public InternationalCD()
    {
        super();
    }

    public InternationalCD(String cdTitle, double cdPrice, String languageCode) {
        super(cdTitle, cdPrice);
        this.languageCode = languageCode;
    }

    public String getLanguageCode() {
        return languageCode;
    }

    public void setLanguageCode(String languageCode) {
        this.languageCode = languageCode;
    }

    @Override
    public String getDetail() {
        return super.getDetail()+" LanguageCode: "+getLanguageCode();
    }
}
