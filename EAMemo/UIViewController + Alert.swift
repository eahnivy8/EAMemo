//
//  UIViewController + Alert.swift
//  EAMemo
//
//  Created by Eddie Ahn on 2020/01/10.
//  Copyright © 2020 Sang Wook Ahn. All rights reserved.
//

import UIKit
//UIViewController를 상속받는 클래스에서 모두 사용할 수 있도록 아래와 같이 extension을 사용함.
extension UIViewController {
    func alert(title: String = "Alert", message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
        
}




