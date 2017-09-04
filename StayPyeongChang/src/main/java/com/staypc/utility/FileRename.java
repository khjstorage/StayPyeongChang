package com.staypc.utility;

import java.io.File;

public class FileRename {
    private int existCount = 0;
    String destFileName ="";

    public void renameFile(File file) {
        String fileName = "";
        String extension = "";
        ++existCount;

        if(file.exists()) {
            fileName = file.getName().substring(0, file.getName().indexOf("."));
            extension = file.getName().substring(file.getName().indexOf("."));

            if(fileName.charAt(fileName.length()-1)==']') {
                fileName=fileName.substring(0, fileName.lastIndexOf("["));
            }

            file = new File(file.getParent(), fileName+"["+existCount+"]"+extension);
            this.destFileName = file.getName();
            renameFile(file);
        }else {
            this.destFileName = file.getName();
        }
    }

    public String getRenameFile() {
        return this.destFileName;
    }
}
