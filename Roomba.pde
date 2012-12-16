class Roomba
{
  float x;
  float y;
  float rad;
  float r;
  static final color c_lgray  = #c0c0d0;
  static final color c_gray   = #acacbc;
  static final color c_dgray  = #909090;
  static final color c_lblack = #303030;
  static final color c_black  = #000000;
  static final color c_green  = #55B940;
  static final color c_yellow = #E8E460;
    
  static final float outer_line_weight_rate = 0.08;
  static final float outer_upper_line_weight_rate = 0.1;
  static final float middle_line_weight_rate = 0.15;
  static final float middle_line_r_rate = 0.7;
  static final float inner_circle_line_weight_rate = 0.02;
  static final float inner_circle_r_rate = 0.45;
  static final float small_ledge_weight_rate = 0.1;
  static final float small_ledge_r_rate = 0.13;
  static final float panel_circle_r_rate = 0.15;
  static final float green_circle_weight_rate = 0.02;
  static final float green_circle_r_rate = 0.11;
  static final float panel_line_weight_rate = 0.08;
  static final float panel_line_r_rate = 0.36;
  
  Roomba(float r)
  {
    x = 0;
    y = 0;
    rad = 0;
    this.r = r / (1+outer_upper_line_weight_rate);
  }
  
  void draw()
  {
    pushMatrix();
    translate(x,y);
    rotate(rad);

    ellipseMode(CENTER);
    
    stroke(c_lblack);
    strokeWeight(r*outer_line_weight_rate);
    strokeCap(ROUND);
    fill(c_gray);
    ellipse(0, 0, r*2, r*2);
    
    noFill();
    strokeWeight(r*outer_upper_line_weight_rate);
    arc(0, 0, r*(2+outer_line_weight_rate), r*(2+outer_line_weight_rate), -PI, 0);
    
    strokeWeight(r*middle_line_weight_rate);
    arc(0, 0, r*middle_line_r_rate*2, r*middle_line_r_rate*2, -PI*7/8, -PI*1/8);
    
    strokeWeight(r*inner_circle_line_weight_rate);
    stroke(c_yellow);
    fill(c_black);
    ellipse(0, 0, r*inner_circle_r_rate*2, r*inner_circle_r_rate*2);
    
    strokeWeight(r*small_ledge_weight_rate);
    stroke(c_lblack);
    fill(c_lblack);
    arc(0, -r, r*small_ledge_r_rate*2, r*small_ledge_r_rate*2,  PI/8, PI*7/8);
    arc(0,  r, r*small_ledge_r_rate*2, r*small_ledge_r_rate*2, -PI*7/8, -PI/8);
    
    noStroke();
    fill(c_lgray);
    ellipse(0, 0, r*panel_circle_r_rate*2, r*panel_circle_r_rate*2);
    
    stroke(c_green);
    strokeWeight(r*green_circle_weight_rate);
    noFill();
    ellipse(0, 0, r*green_circle_r_rate*2, r*green_circle_r_rate*2);
    
    stroke(c_dgray);
    strokeWeight(r*panel_line_weight_rate);
    arc(0, 0, r*panel_line_r_rate*2, r*panel_line_r_rate*2, PI*3/8, PI*5/8);
    arc(0, 0, r*panel_line_r_rate*2, r*panel_line_r_rate*2, -PI*5/8, -PI*3/8);
    

    popMatrix();
  }
  
}


