//
//  LibraryAPI.swift
//  BlueLibrarySwift
//
//  Created by Aaron Bradley on 4/27/15.
//  Copyright (c) 2015 Raywenderlich. All rights reserved.
//

import UIKit

class LibraryAPI: NSObject {

  private let persistencyManager: PersistencyManager
  private let httpClient: HTTPClient
  private let isOnline: Bool

  class var sharedInstance: LibraryAPI {

    struct Singleton {
      static let instance = LibraryAPI()

    }
    return Singleton.instance
  }


  override init() {
    persistencyManager = PersistencyManager()
    httpClient = HTTPClient()
    isOnline = false

    super.init()
  }

  func getAlbums() -> [Album] {
    return persistencyManager.getAlbums()
  }

  func addAlbum(album: Album, index: Int) {
    persistencyManager.addAlbum(album, index: index)
    if isOnline {
      httpClient.postRequest("/api/addAlbum", body: "\(index)")
    }
  }

  func deleteAlbum(index: Int) {
    persistencyManager.deleteAlbumAtIndex(index)
    if isOnline {
      httpClient.postRequest("/api/deleteAlbum", body: "\(index)")
    }
  }


}
