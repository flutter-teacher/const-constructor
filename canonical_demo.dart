class Point{
  final int x;
  final int y;
  
  const Point(this.x, this.y);    
}

void main(){
  Point p1 = const Point(10, 20);
  Point p2 = const Point(10, 20);
  
  print(p1.hashCode);  
  print(p2.hashCode);  
  print(identical(p1, p2));
  
  Point p3 = Point(50, 60);
  Point p4 = Point(50, 60);
  
  print(p3.hashCode);  
  print(p4.hashCode);  
  print(identical(p3, p4)); 
}
