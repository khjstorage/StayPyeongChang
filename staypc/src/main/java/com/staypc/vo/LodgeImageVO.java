package com.staypc.vo;

public class LodgeImageVO {

    //  이미지코드
    private Integer imageCode;

    //  숙소코드
    private Integer lodgeCode;

    //  메인이미지
    private String mainImage;

    //  이미지1
    private String image1;

    //  이미지2
    private String image2;

    //  이미지3
    private String image3;

    //  이미지4
    private String image4;

    //  이미지5
    private String image5;

    public Integer getImageCode() {
        return imageCode;
    }

    public void setImageCode(Integer imageCode) {
        this.imageCode = imageCode;
    }

    public Integer getLodgeCode() {
        return lodgeCode;
    }

    public void setLodgeCode(Integer lodgeCode) {
        this.lodgeCode = lodgeCode;
    }

    public String getMainImage() {
        return mainImage;
    }

    public void setMainImage(String mainImage) {
        this.mainImage = mainImage;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    public String getImage4() {
        return image4;
    }

    public void setImage4(String image4) {
        this.image4 = image4;
    }

    public String getImage5() {
        return image5;
    }

    public void setImage5(String image5) {
        this.image5 = image5;
    }

    // LodgeImageVO 모델 복사
    public void CopyData(LodgeImageVO param)
    {
        this.imageCode = param.getImageCode();
        this.lodgeCode = param.getLodgeCode();
        this.mainImage = param.getMainImage();
        this.image1 = param.getImage1();
        this.image2 = param.getImage2();
        this.image3 = param.getImage3();
        this.image4 = param.getImage4();
        this.image5 = param.getImage5();
    }
}