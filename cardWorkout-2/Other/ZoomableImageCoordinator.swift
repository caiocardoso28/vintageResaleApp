//
//  ZoomableImageCoordinator.swift
//  cardWorkout-2
//
//  Created by Caio Cardoso on 7/13/23.
//

import SwiftUI
import UIKit
struct ZoomableImageView: UIViewRepresentable {
    var image: UIImage

    func makeUIView(context: Context) -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.delegate = context.coordinator
        scrollView.maximumZoomScale = 3.0
        scrollView.minimumZoomScale = 1.0
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        
        

        let imageView = UIImageView(image: image)
        
        // Calculate the scale factors
        let widthScale = UIScreen.main.bounds.width / image.size.width
        let heightScale = UIScreen.main.bounds.height / image.size.height
        let scale = max(widthScale, heightScale)  // Use the larger scale factor
        
        imageView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        
        
        imageView.contentMode = .scaleAspectFit  // Scale the image to fill the imageView
        imageView.clipsToBounds = true  // Clip the parts of the image that exceed the imageView bounds
        
        
        
        scrollView.addSubview(imageView)
        scrollView.contentSize = imageView.bounds.size
        scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
        
        
        
        return scrollView
    }


    func updateUIView(_ uiView: UIScrollView, context: Context) {
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    class Coordinator: NSObject, UIScrollViewDelegate {
        func viewForZooming(in scrollView: UIScrollView) -> UIView? {
            return scrollView.subviews.first
        }
    }
}


