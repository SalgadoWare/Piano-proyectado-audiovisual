import ddf.minim.*;
AudioPlayer player;

class Tecla {
  Minim minim;
  AudioPlayer player;
  
  private int altura, anchura;
  public int x, y;
  
  public Tecla (String song, Minim _minim) {
     minim = _minim;
     player = minim.loadFile(song);
     altura = (2/3) * height;
  }
  
  public void tocar() {
    player.play();
    player.rewind();
  }
  
  public void display(int collectionPosition) {
    anchura = width * 1/7;
    altura = height * 2/3;
    x = collectionPosition*anchura;
    fill(color(255,255,0,10));
    rect(x, height - altura, anchura, altura);
  }
  
}