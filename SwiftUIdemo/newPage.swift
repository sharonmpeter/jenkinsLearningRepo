//
//  newPage.swift
//  SwiftUIdemo
//
//  Created by qbuser on 13/07/21.
//

import SwiftUI

struct newPage: View {
    var body: some View {
      // ScrollView {
                    
                    VStack (){
            HStack(){
            HStack(alignment: .center){
                //Spacer()
                CircleView().padding(.leading)
            // Image("cycle").aspectRatio(contentMode: .fit)
        
                //Spacer()
                Text("Sharon").font(.subheadline)
                Spacer()
                Spacer()
                Image("scooter").aspectRatio(contentMode: .fill)//.padding()
                Spacer()
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
            .background(RoundedCorners(tl: 15, tr: 15, bl: 15, br: 15)
                            .fill(Color.white)
                            .overlay(Capsule().stroke( Color("AccentColor")))
                          .shadow(radius: 7)
            ).padding()
               
                HStack(alignment: .center){
                    Text("$").font(.title).foregroundColor(.white)
                    Text("0").font(.title).foregroundColor(Color.white)
                }
                .frame(minWidth: 0, maxWidth: 80, minHeight: 0, maxHeight: 40)
                .padding(.all, 5)
                .background(RoundedCorners(tl: 15, tr: 15, bl: 15, br: 15)
                                .fill(Color.black)
                                .overlay(Capsule().stroke( Color("AccentColor")))
                              .shadow(radius: 7)
                                )
                //.background(Color.black)
                .padding(.trailing, 10)
            }
            
            Text("Offline").font(.title2).frame(maxWidth: .infinity, alignment: .leading).padding(.leading, 15)
        GeometryReader { geometry in
            //Image("sofa").aspectRatio(contentMode: .fill)
            Image("sofa").resizable().frame(width: geometry.size.width-40, height: 175).aspectRatio(contentMode: .fit).padding()
        }
        VStack (alignment: .center){


         //   GeometryReader { geometry in

            HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Spacer()
                    Image("cycle").aspectRatio(contentMode: .fit)
                Spacer()
                Image("scooter").aspectRatio(contentMode: .fit)
                Spacer()
                    Image("car").aspectRatio(contentMode: .fit)
                Spacer()
                }
            .frame(minWidth: 50, maxWidth: 200, minHeight: 80, maxHeight: 80, alignment: .center)
            .background(RoundedCorners(tl: 20, tr: 20, bl: 20, br: 20)
                            .fill(Color.white)
                            .overlay(Capsule().stroke( Color("AccentColor")))
                          .shadow(radius: 7)
              )
              // .cornerRadius(20)
           // padding(.top, 20)
            Image("grayRound").resizable().frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
  
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }
                        Spacer()
                     
                    }
     //  }.frame(height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
    }
}


struct newPage_Previews: PreviewProvider {
    static var previews: some View {
        newPage()
    }
}

struct CircleView : View {
    var body: some View {
      //  GeometryReader { geometry in
        Image("profilePic").resizable().frame(width: 35, height: 35).aspectRatio(contentMode: .fill)//.padding()
        //Image("profilePic").aspectRatio(contentMode: .fit)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
           // .overlay(Circle().stroke(Color.white))
           // .shadow(radius: 5)
      //  }
    }
}

struct RoundedCorners: Shape {
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0

    func path(in rect: CGRect) -> Path {
        var path = Path()

        let w = rect.size.width
        let h = rect.size.height

        // Make sure we do not exceed the size of the rectangle
        let tr = min(min(self.tr, h/2), w/2)
        let tl = min(min(self.tl, h/2), w/2)
        let bl = min(min(self.bl, h/2), w/2)
        let br = min(min(self.br, h/2), w/2)

        path.move(to: CGPoint(x: w / 2.0, y: 0))
        path.addLine(to: CGPoint(x: w - tr, y: 0))
        path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr,
                    startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)

        path.addLine(to: CGPoint(x: w, y: h - br))
        path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br,
                    startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)

        path.addLine(to: CGPoint(x: bl, y: h))
        path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl,
                    startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)

        path.addLine(to: CGPoint(x: 0, y: tl))
        path.addArc(center: CGPoint(x: tl, y: tl), radius: tl,
                    startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)

        return path
    }
}
