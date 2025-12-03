PImage image;

void setup() {
  image = loadImage("https://resources.finalsite.net/images/t_image_size_4/v1617908641/kentshillorg/pljk683ygzlp2ud3cjcj/HPSliderFinalsite1.jpg");
  windowResize( image.width, image.height );
  windowTitle("Campus Image");
  surface.setIcon(image);
  noLoop();
}

void draw() {
  for( int i = 0; i < image.width; i++ ) {
    for( int j = 0; j < image.height; j++ ) {      
      color c = image.get(i,j); 
      color newColor = color(red(c),green(c),blue(c));
      image.set(i,j,newColor);
    }
  }
  
  image(image,0,0);
}
