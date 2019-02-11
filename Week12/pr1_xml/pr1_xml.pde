XML xml;

void setup() {
  xml = loadXML("http://openapi.seoul.go.kr:8088/516d4d415a63686f3236684153436f/xml/octastatapi10020/1/5/");
  XML[] children = xml.getChildren("row");
  for (int i=0; i<children.length; i++) {
    XML yeoja = children[i].getChild("YEOJA_1");
    String yeojaElement = yeoja.getContent();
    println(yeojaElement);
  }
}
