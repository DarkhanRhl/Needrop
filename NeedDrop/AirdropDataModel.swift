//
//  AirdropDataModel.swift
//  NeedDrop
//
//  Created by Maxime Aiguier on 04/08/2023.
//

import SwiftUI

struct AirdropDataModel: Transferable {
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.selectedImage)
    }


    public var message: String = ""
    public var recompense: String = ""
    public var selectedImage: Image
}
