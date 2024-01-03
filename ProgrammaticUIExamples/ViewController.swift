//
//  ViewController.swift
//  ProgrammaticUIExamples
//
//  Created by Yiğithan Sönmez on 1.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(label)
        
        label.text = """
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin cursus pharetra est, sed placerat velit suscipit sit amet. In sed diam erat. Donec non magna id sapien porta mollis eget at nisl. Pellentesque mollis sollicitudin leo et imperdiet. Donec elementum condimentum velit. Aliquam vehicula, tellus vel elementum varius, purus risus blandit elit, eu facilisis diam eros vel augue. Curabitur ac nisl tristique, venenatis velit sit amet, elementum est. Vivamus eget tincidunt enim. Quisque consectetur mattis nulla, et vestibulum tortor ornare porta. Quisque turpis diam, finibus sed enim sit amet, varius semper orci. Integer placerat consectetur tortor, et iaculis magna suscipit id.

        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin cursus pharetra est, sed placerat velit suscipit sit amet. In sed diam erat. Donec non magna id sapien porta mollis eget at nisl. Pellentesque mollis sollicitudin leo et imperdiet. Donec elementum condimentum velit. Aliquam vehicula, tellus vel elementum varius, purus risus blandit elit, eu facilisis diam eros vel augue. Curabitur ac nisl tristique, venenatis velit sit amet, elementum est. Vivamus eget tincidunt enim. Quisque consectetur mattis nulla, et vestibulum tortor ornare porta. Quisque turpis diam, finibus sed enim sit amet, varius semper orci. Integer placerat consectetur tortor, et iaculis magna suscipit id.

        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin cursus pharetra est, sed placerat velit suscipit sit amet. In sed diam erat. Donec non magna id sapien porta mollis eget at nisl. Pellentesque mollis sollicitudin leo et imperdiet. Donec elementum condimentum velit. Aliquam vehicula, tellus vel elementum varius, purus risus blandit elit, eu facilisis diam eros vel augue. Curabitur ac nisl tristique, venenatis velit sit amet, elementum est. Vivamus eget tincidunt enim. Quisque consectetur mattis nulla, et vestibulum tortor ornare porta. Quisque turpis diam, finibus sed enim sit amet, varius semper orci. Integer placerat consectetur tortor, et iaculis magna suscipit id.
"""
        
        applyConstraints()
    }
    
    func applyConstraints(){
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        
        let hConst = contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 2)
        hConst.isActive = true
        hConst.priority = UILayoutPriority(50)
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
        ])
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: contentView.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
        ])
    }
    
}

