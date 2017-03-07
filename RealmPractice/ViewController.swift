//
//  ViewController.swift
//  RealmPractice
//
//  Created by ShinokiRyosei on 2017/03/07.
//  Copyright © 2017年 ShinokiRyosei. All rights reserved.
//

import UIKit

import RealmSwift

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var pickerView: UIPickerView!

    var itemArray = ["コンパス", "彫刻刀", "絵の具"]

    var time = "3限"
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
    }

    @IBAction func save() {

        let realm = try! Realm()
        try! realm.write {
            // ここで保存

        }
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return itemArray.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return itemArray[row]
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
}

