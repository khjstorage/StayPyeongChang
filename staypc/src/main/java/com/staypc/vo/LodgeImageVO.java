package com.staypc.vo;

public class LodgeImageVO {
    private int image_code;
    private int lodge_code;
    private String filename;

    @Override
    public String toString() {
        return "LodgeImageVO{" +
                "image_code=" + image_code +
                ", lodge_code=" + lodge_code +
                ", filename=" + filename +
                '}';
    }

    public int getImage_code() {
        return image_code;
    }

    public void setImage_code(int image_code) {
        this.image_code = image_code;
    }

    public int getLodge_code() {
        return lodge_code;
    }

    public void setLodge_code(int lodge_code) {
        this.lodge_code = lodge_code;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }
}
