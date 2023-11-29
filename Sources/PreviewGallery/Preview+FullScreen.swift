//
//  Preview+FullScreen.swift
//  
//
//  Created by Noah Martin on 8/31/23.
//

import Foundation
import SnapshotPreviewsCore

extension SnapshotPreviewsCore.Preview {

  var requiresFullScreen: Bool {
    switch layout {
    case .device:
      return true
    default:
      return false
    }
  }

}
