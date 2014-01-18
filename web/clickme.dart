import 'dart:html';

void main() {
  var obj = querySelector("#sample_text_id");
  obj
    ..text = "Click me!"
    ..onClick.listen(reverseText)
    ..onMouseOver.listen(magnifyText)
    ..onMouseLeave.listen(resetFonsize);
}

void reverseText(MouseEvent event) {
  var trgt = event.target;
      trgt
      ..text = doReverseText(trgt.text);
  redifyText(trgt);
}

String doReverseText(String text){
  var buffer = new StringBuffer();
  for (int i = text.length - 1; i >= 0; i--) {
    buffer.write(text[i]);
  }
  return buffer.toString();
}

void redifyText(obj){
  if (obj.style.color == "green")
    obj.style.color = "black";
  else
    obj.style.color = "green";
}

void magnifyText(MouseEvent event){
  var trgt = event.target;
      trgt
      ..style.color="red"
      ..style.cursor="pointer";
}

void resetFonsize(MouseEvent event){
  var trgt = event.target;
      trgt
      ..style.color="black"
      ..style.cursor="none";
}