//
//  ViewController.swift
//  TBMtimeCommon
//
//  Created by 田彬彬 on 2020/12/22.
//

import UIKit

class ViewController: UIViewController {

    var data = [1, 2, 3]
    var datas = [2.3, 3, 3]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red

        if datas.count > 0 {
            print("你是谁")
        }
    }
}

extension ViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.pushViewController(MNFWKWebVC(), animated: true)
    }
}
