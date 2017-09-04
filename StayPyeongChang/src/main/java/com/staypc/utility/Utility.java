package com.staypc.utility;

public class Utility {

    public static String temporaryPassword(int size) {
        StringBuffer buffer = new StringBuffer();
        java.util.Random random = new java.util.Random();

        String chars[] = "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,0,1,2,3,4,5,6,7,8,9".split(",");

        for (int i = 0; i < size; i++) {
            buffer.append(chars[random.nextInt(chars.length)]);
        }
        return buffer.toString();
    }

}
