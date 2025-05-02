//
//  TestModel.swift
//  SOPT36_week02
//
//  Created by 서상원 on 4/26/25.
//

import UIKit

struct TestModel {
    let profileImg: UIImage
    let name: String
    let place: String
    let message: String
    let itemImg: UIImage
}

extension TestModel {
    static func dummy() -> [TestModel] {
        return [
            TestModel(profileImg: .frame1386, name: "김가현", place: "광진구", message: "내말에답장해줘", itemImg: .camera),
            TestModel(profileImg: .frame1386, name: "김가현", place: "광진구", message: "내말에답장해줘", itemImg: .camera),
            TestModel(profileImg: .frame1386, name: "김가현", place: "광진구", message: "내말에답장해줘", itemImg: .camera),
            TestModel(profileImg: .frame1386, name: "김가현", place: "광진구", message: "내말에답장해줘", itemImg: .camera),
            TestModel(profileImg: .frame1386, name: "김가현", place: "광진구", message: "내말에답장해줘", itemImg: .camera)
        ]
    }
}
