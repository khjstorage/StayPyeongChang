$(".fileDrop").on("dragenter dragover", function (event) {
    event.preventDefault();
});

$(".fileDrop").on("drop", function (event) {
    event.preventDefault();
    var files = event.originalEvent.dataTransfer.files;
    var file = files[0];
    var formData = new FormData();
    formData.append("file", file);

    $.ajax({
        url: '/host/uploadAjax.do',
        data: formData,
        dataType: 'text',
        processData: false,
        contentType: false,
        type: 'POST',
        success: function (data) {
            console.log(data);
            var str = "";

            if (checkImageType(data)) {
                str = "<li> <a class=img target='_blank' value="+getImageLink(data)+" href=/host/displayFile.do?fileName="+getImageLink(data) +"> <img src='/host/displayFile.do?fileName=" + data + "'/></a>" +
                    "<small data-src="+data+">X</small>" +
                    "</li>";
            } else {
                str = "<div><a href='/host/displayFile.do?fileName=" + data + "'>" + getOriginalName(data) + "</a><small data-src=" + data + ">X</small></div></div>";
            }
            $(".uploadedList").append(str);
        }
    });
});


$(".uploadedList").on("click", "small", function (event) {
    alert("사진삭제");
    var that = $(this);
    $.ajax({
        url: "/host/deleteFile.do",
        type: "post",
        data: {
            fileName: $(this).attr("data-src")
        },
        dataType: "text",
        success: function (result) {
            if (result == 'deleted') {
                that.parent("li").remove();
            }
        }
    });
});

function getOriginalName(fileName) {
    if (checkImageType(fileName)) {
        return;
    }
    var idx = fileName.indexOf("_") + 1;
    return fileName.substr(idx);
}

function getImageLink(fileName) {
    if (!checkImageType(fileName)) {
        return;
    }
    var front = fileName.substr(0, 12);
    var end = fileName.substr(14);
    return front + end;
}

function checkImageType(fileName) {
    var pattern = /jpg|gif|png|jpeg/i;
    return fileName.match(pattern);
}


$("#hostingForm").submit(function (event) {
    event.preventDefault();
    var that = $(this);
    var str = "";
    $(".uploadedList .img").each(function (index) {
        str += "<input type='hidden' name='files[" + index + "]' value='" + $(this).attr("value") + "'> ";
    });
    that.append(str);
    that.attr("action", "/host/insert.do");
    that.get(0).submit();
});
