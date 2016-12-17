interface Drawable {
    void draw();
}

class Filter implements Drawable {
    PShader pshader;
    int kind;
    float param = -1;
  
    Filter(PShader pshader) {
        this.pshader = pshader;
    }
    
    Filter(int kind) {
        this.kind = kind;
    }
    
    Filter(int kind, float param) {
        this.kind = kind;
        this.param = param;
    }
    
    void draw() {
        if (pshader == null) {
            if (param == -1) {
                filter(kind);
            }
            else {
                filter(kind, param);
            }
        }
        else {
            filter(pshader);
        }
    }
}

class Shape implements Drawable {
    PShape pshape;
    PMatrix matrix;
    
    Shape(PShape pshape) {
        this.pshape = pshape;
        setStyle(pshape, getGraphics().getStyle());
        this.matrix = getMatrix().get();
    }
    
    void setStyle(PShape shape, PStyle style) {
        shape.setStroke(style.stroke);
        shape.setStrokeWeight(style.strokeWeight);
        shape.setStrokeCap(style.strokeCap);
        shape.setStrokeJoin(style.strokeJoin);
        
        shape.setFill(style.fill);
        shape.setFill(style.fillColor); 
        
        shape.setShininess(style.shininess);
        shape.setTint(style.tint);
        shape.setTint(style.tintColor);
        
        //shape.setSpecular(???);
        //shape.setEmissive(???);
        //shape.setAmbient(???);
    }
    
    void draw() {
        setMatrix(matrix);
        shape(pshape);
    }
}

class Background implements Drawable {
    int col;
    
    Background(float a, float b) {
        this.col = color(a, b);
    }
    
    Background(float a, float b, float c) {
        this.col = color(a, b, c);
    }
    
    Background(float a, float b, float c, float d) {
        this.col = color(a, b, c, d);
    }
    
    Background(int col) {
        this.col = col;
    }
    
    void draw() {
        background(col);
    }
}

class Text implements Drawable {
    String s;
    float[] args;
    
    int fillColor;
    boolean fill;
    
    int textAlignX;
    int textAlignY;
    float textLeading;
    
    int textMode;
    
    PFont font;
    float textSize;

    PMatrix matrix;
    
    Text(char c, float... args) {
        this.s = "" + c;
        this.args = args;
        setStyle(this, getGraphics().getStyle());
        this.matrix = getMatrix().get();
    }
    
    Text(float num, float... args) {
        this.s = "" + num;
        this.args = args;
        setStyle(this, getGraphics().getStyle());
        this.matrix = getMatrix().get();
    }
    
    Text(int num, float... args) {
        this.s = "" + num;
        this.args = args;
        setStyle(this, getGraphics().getStyle());
        this.matrix = getMatrix().get();
    }
    
    Text(String s, float... args) {
        this.s = s;
        this.args = args;
        setStyle(this, getGraphics().getStyle());
        this.matrix = getMatrix().get();
    }
    
    void setStyle(Text textElem, PStyle style) {
        textElem.fillColor = style.fillColor;
        textElem.fill = style.fill;
        
        textElem.textAlignX = style.textAlign;
        textElem.textAlignY = style.textAlignY;
        textElem.textLeading = style.textLeading;
        
        textElem.font = style.textFont;
        textElem.textSize = style.textSize;
        
        textElem.textMode = style.textMode;
    }
    
    void draw() {
        setMatrix(matrix);
      
        if (fill) {
            fill(fillColor);
        }
        else {
            noFill();
        }
        
        textAlign(textAlignX, textAlignY);
        textLeading(textLeading);
        
        textMode(textMode);
        
        textFont(font);
        textSize(textSize);
        
        switch (args.length) {
            case 2 : text(s, args[0], args[1]); break;
            case 3 : text(s, args[0], args[1], args[2]); break;
            case 4 : text(s, args[0], args[1], args[2], args[3]); break;
            default : //ERROR
        }
    }
}

class Image implements Drawable {
    PImage img;
    float[] args;
    
    int imageMode;
    
    PMatrix matrix;
    
    Image(PImage img, float... args) {
        this.img = img;
        this.args = args;
        PStyle pstyle = getGraphics().getStyle();
        this.imageMode = pstyle.imageMode;
        this.matrix = getMatrix().get();
    }
    
    void draw() {
        setMatrix(matrix);
      
        imageMode(imageMode);  
      
        switch (args.length) {
            case 2 : image(img, args[0], args[1]); break;
            case 4 : image(img, args[0], args[1], args[2], args[3]); break;
            default : //ERROR
        }
    }
}