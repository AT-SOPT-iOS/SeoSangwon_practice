import UIKit

import SnapKit

struct ItemModel {
    let itemImg: UIImage
    let name: String
    let price: String
    var heartIsSelected: Bool
}

extension ItemModel {
    static func dummy() -> [ItemModel] {
        return [
            ItemModel(itemImg: .image126, name: "퉁퉁퉁사후르", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .image128, name: "오쏘몰", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: ._0F49Ac96Cdce16C832Fc36061A0222C7C0485Cab, name: "애플워치", price: "5000", heartIsSelected: true),
            ItemModel(itemImg: .ada03Cd4537Ba498C09C6C197E3Dcdfde9136B01, name: "가방", price: "5000", heartIsSelected: true),
            ItemModel(itemImg: ._190E567Eaefa7Fe97C6970400Bce5Bdf66B0Ea58, name: "헤드셋", price: "5000", heartIsSelected: true),
            ItemModel(itemImg: .eb283B95B36Ac70E593B2Fba58Bef4212F3Eca9F, name: "틴트", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .camera, name: "카메라", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .image75, name: "로션", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .rox, name: "락스", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: ._0F49Ac96Cdce16C832Fc36061A0222C7C0485Cab, name: "가방", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: ._190E567Eaefa7Fe97C6970400Bce5Bdf66B0Ea58, name: "헤드셋", price: "5000", heartIsSelected: false),
            ItemModel(itemImg: .eb283B95B36Ac70E593B2Fba58Bef4212F3Eca9F, name: "틴트", price: "5000", heartIsSelected: false)
        ]
    }
}
