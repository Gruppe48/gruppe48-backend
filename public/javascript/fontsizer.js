function textResize(size) {
  $("#content").css("font-size", parseFloat($("#content").css("font-size"))+size);
  $("article").css("font-size", parseFloat($("article").css("font-size"))+size);
}
$("#biggertext").click(function () {
  textResize(3);
});
$("#smallertext").click(function () {
  textResize(-3);
});