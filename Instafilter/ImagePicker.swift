//
//  ImagePicker.swift
//  Instafilter
//
//  Created by KazukiNakano on 2020/07/13.
//  Copyright © 2020 kazu. All rights reserved.
//

import Foundation
import SwiftUI

struct ImagePicker: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    typealias UIViewControllerType = UIImagePickerController
}
