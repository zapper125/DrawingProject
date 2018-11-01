//
//  DrawingView.swift
//  DrawingProject
//
//  Created by Christiansen, Aaron on 11/1/18.
//  Copyright © 2018 Ctec. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{
    
    public override func draw(_ rect: CGRect) -> Void
    {
    //Drawing code
    createStickFigure().stroke()
    drawTurtle()
    arrow().stroke()
    }
    
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.magenta.setStroke()
        figure.lineWidth = 3.0
        
        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x:200, y:220 ))
        figure.addLine(to: CGPoint(x:200, y:270 ))
        figure.move(to: CGPoint(x:180, y:240 ))
        figure.addLine(to: CGPoint(x:220, y:240 ))
        figure.move(to: CGPoint(x:200, y:270 ))
        figure.addLine(to: CGPoint(x:180, y:300 ))
        figure.move(to: CGPoint(x:200, y:270 ))
        figure.addLine(to: CGPoint(x:220, y:300 ))
        
        return figure
            
    }
    
    private func drawTurtle()  -> Void
    {
        UIColor.magenta.setStroke()
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y:250 ))
        logo.move(to: CGPoint(x:100, y:300 ))
        logo.move(to: CGPoint(x:50, y:350 ))
        logo.close()
        logo.fill()
    }
    
    private func arrow() -> UIBezierPath
    {
       
        UIColor.magenta.setStroke()
        let arrow = UIBezierPath()
        
        arrow.lineWidth = 3
        
        arrow.move (to: CGPoint(x:80, y:25))
        arrow.addLine(to: CGPoint(x:100, y:100))
        arrow.move (to: CGPoint(x:125, y:75))
        arrow.addLine(to: CGPoint(x:100, y:100))
        arrow.move (to: CGPoint(x:100, y:100))
        arrow.addLine(to: CGPoint(x:70, y:80))
        
        return arrow
    }
    

}
