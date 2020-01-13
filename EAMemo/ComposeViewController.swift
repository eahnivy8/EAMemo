//
//  ComposeViewController.swift
//  EAMemo
//
//  Created by Eddie Ahn on 2020/01/10.
//  Copyright © 2020 Sang Wook Ahn. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    @IBOutlet weak var memoTextView: UITextView!
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func save(_ sender: Any) {
        //텍스트 뷰의 적힌 문자열을 상수에 저장.
        guard let memo = memoTextView.text, memo.count > 0 else {
            alert(message: "Please input your memo")
            return
        }
        //새로운 메모 인스턴스를 생성하고 배열에 저장하기
//        let newMemo = Memo(content: memo)
//        Memo.dummyMemoList.append(newMemo)
        DataManager.shared.addNewMemo(memo)
        //새 메모 화면 닫기
        NotificationCenter.default.post(name: ComposeViewController.newMemoDidInsert, object: nil)
        
        
        dismiss(animated: true, completion: nil)
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
}

extension ComposeViewController {
    // radio 방송처럼 생각.
    static let newMemoDidInsert = Notification.Name(rawValue: "NewMemoDidInsert")
}
