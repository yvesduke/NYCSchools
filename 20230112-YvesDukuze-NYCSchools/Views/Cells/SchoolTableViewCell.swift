//
//  File.swift
//  20230112-YvesDukuze-NYCSchools
//
//  Created by apple on 20/03/2023.
//

import UIKit

class SchoolTableViewCell : UITableViewCell {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.label1.text = ""
        self.label2.text = ""
        self.label3.text = ""
    }
    
    func setData(school: NYCSchool) {
        label1.text = school.school_name
        label2.text = school.location
        label3.text = school.phone_number
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
