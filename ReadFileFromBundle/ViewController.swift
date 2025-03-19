//
//  ViewController.swift
//  ReadFileFromBundle
//
//  Created by henrique.cisi on 19/03/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var jsonPlaceholderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        readFileFromBundle()
    }
    
    func readFileFromBundle() {
        guard let filePath = getFilePath() else {
            print("File path is nil. File processing failed.")
            
            return
        }
        
        if let fileContent = getFileContent(from: filePath) {
            print("File content: \n\(fileContent)")
            jsonPlaceholderLabel.text = fileContent
        } else {
            print("Error reading file content. File processing failed.")
        }
    }
    
    
    func getFilePath() -> String? {
        guard let filePath = Bundle.main.path(forResource: "json-placeholder", ofType: "txt") else {
            print("File not found in bundle.")
            
            return nil
        }
        return filePath
    }
    
    func getFileContent(from filePath: String) -> String? {
        do {
            let fileContent = try String(contentsOfFile: filePath, encoding: .utf8)
            
            return fileContent
        } catch {
            print("Error reading file: \(error)")
            
            return nil
        }
    }
}
