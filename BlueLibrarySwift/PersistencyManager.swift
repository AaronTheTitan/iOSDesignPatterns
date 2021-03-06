//
//  PersistencyManager.swift
//  BlueLibrarySwift
//
//  Created by Aaron Bradley on 4/27/15.
//  Copyright (c) 2015 Raywenderlich. All rights reserved.
//

import UIKit

class PersistencyManager: NSObject {

  private var albums = [Album]()


  override init() {
    let album1 = Album(title: "Best of Bowie", artist: "DavidBowie", genre: "Pop", coverUrl: "http://www.coversproject.com/static/thumbs/album/album_-david%20bowie_best%20of%20bowie.png", year: "1992")

    let album2 = Album(title: "It's My Life'", artist: "No Doubt", genre: "Pop", coverUrl: "http://www.coversproject.com/static/thumbs/album/album_no%20doubt_its%20my%20life%20bathwater.png", year: "1999")

    let album3 = Album(title: "Nothing Like The Sun", artist: "Sting", genre: "Pop", coverUrl: "http://www.coversproject.com/static/thumbs/album/album_string_nothing%20like%20the%20sun.png", year: "1999")

    let album4 = Album(title: "Staring at the Sun", artist: "U2", genre: "Pop", coverUrl: "http://www.coversproject.com/static/thumbs/album/album_u2_staring%20at%20the%20sun.png", year: "200")

    let album5 = Album(title: "American Pie", artist: "Madonna", genre: "Pop", coverUrl: "http://www.coversproject.com/static/thumbs/album/album_madonna_american%20pie.png", year: "2000")

    albums = [album1, album2, album3, album4, album5]
  }

  func getAlbums() -> [Album] {
    return albums
  }

  func addAlbum(album: Album, index: Int) {
    if albums.count >= index {
      albums.insert(album, atIndex: index)
    } else {
      albums.append(album)
    }
  }

  func deleteAlbumAtIndex(index: Int) {
    albums.removeAtIndex(index)
  }
   
}
