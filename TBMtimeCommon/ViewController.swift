//
//  ViewController.swift
//  TBMtimeCommon
//
//  Created by 田彬彬 on 2020/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

extension ViewController {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.pushViewController(MNFWKWebVC(), animated: true)
    }
}
