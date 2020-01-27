//
//  TestData.swift
//  MusicTrackSearchTests
//
//  Created by Cecil Costa on 27/01/2020.
//  Copyright © 2020 Cecil Costa. All rights reserved.
//

import Foundation
@testable import MusicTrackSearch

func mussashiFirstPage() -> JSON {
    return [
        "results": [
            "opensearch:Query": [
                "#text": "",
                "role": "request",
                "startPage": "1"
            ],
            "trackmatches": [
                "track": [
                    [
                      "name": "Mussashimaru",
                      "artist": "Ultra vomit",
                      "url": "https://www.last.fm/music/Ultra+vomit/_/Mussashimaru",
                      "streamable": "FIXME",
                      "listeners": "2",
                      "image": [
                        [
                          "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                          "size": "small"
                        ],
                        [
                          "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                          "size": "medium"
                        ],
                        [
                          "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                          "size": "large"
                        ],
                        [
                          "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                          "size": "extralarge"
                        ]
                      ],
                      "mbid": ""
                    ],
                    [
                      "name": "Winter Land_demo",
                      "artist": "MUSSASHI Publishing_Albi Albertsson.",
                      "url": "https://www.last.fm/music/MUSSASHI+Publishing_Albi+Albertsson./_/Winter+Land_demo",
                      "streamable": "FIXME",
                      "listeners": "1",
                      "image": [
                        [
                          "#text": "",
                          "size": "small"
                        ],
                        [
                          "#text": "",
                          "size": "medium"
                        ],
                        [
                          "#text": "",
                          "size": "large"
                        ],
                        [
                          "#text": "",
                          "size": "extralarge"
                        ]
                      ],
                      "mbid": ""
                    ]
                ]
            ]
        ]
    ]
}


func mussashiSecondPage() -> JSON {
    return [
      "results": [
        "opensearch:Query": [
          "#text": "",
          "role": "request",
          "startPage": "2"
        ],
        "opensearch:totalResults": "2",
        "opensearch:startIndex": "30",
        "opensearch:itemsPerPage": "30",
        "trackmatches": [
            "track": [JSON]()
        ],
        "@attr": [JSON]()
      ]
    ]
    
}


func nirvanaFirstPage() -> JSON {
    return [
      "results": [
        "opensearch:Query": [
          "#text": "",
          "role": "request",
          "startPage": "1"
        ],
        "opensearch:totalResults": "45780",
        "opensearch:startIndex": "0",
        "opensearch:itemsPerPage": "30",
        "trackmatches": [
          "track": [
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "2128516",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "0ebe2d92-a11d-4b2b-9922-806383074ed7"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Tori Amos",
              "url": "https://www.last.fm/music/Tori+Amos/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "97339",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "52f28621-2aa0-4059-8815-044cace9f50f"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Patti Smith",
              "url": "https://www.last.fm/music/Patti+Smith/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "62065",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "849a119a-b38b-4b90-9168-072bcb86265c"
            ],
            [
              "name": "Smells Like Teen Spirit - Radio Edit",
              "artist": "Patti Smith",
              "url": "https://www.last.fm/music/Patti+Smith/_/Smells+Like+Teen+Spirit+-+Radio+Edit",
              "streamable": "FIXME",
              "listeners": "49856",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "David Garrett",
              "url": "https://www.last.fm/music/David+Garrett/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "34505",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "ba3fd4df-7ae6-4b92-8be1-c0247f7e4fea"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Paul Anka",
              "url": "https://www.last.fm/music/Paul+Anka/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "62700",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "9c935e58-67a0-49be-b79e-89822d102ab6"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "2cellos",
              "url": "https://www.last.fm/music/2cellos/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "25842",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "868f7399-0407-4b98-b314-0e5a1c0d0d64"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "The Bad Plus",
              "url": "https://www.last.fm/music/The+Bad+Plus/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "41603",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "05e37140-32a7-4a5a-8221-291c7ec517be"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Możdżer Danielsson Fresco",
              "url": "https://www.last.fm/music/Mo%C5%BCd%C5%BCer+Danielsson+Fresco/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "16481",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "4067168f-6e7b-4906-a94d-8cea9e5117f6"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Robert Glasper Experiment",
              "url": "https://www.last.fm/music/Robert+Glasper+Experiment/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "21097",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "8e54e1db-b5ab-40e9-8b11-370591f74f06"
            ],
            [
              "name": "Smells Like Teen Spirit - 1992/Live at Reading",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+-+1992%2FLive+at+Reading",
              "streamable": "FIXME",
              "listeners": "28224",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit (Butch Vig Mix)",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+(Butch+Vig+Mix)",
              "streamable": "FIXME",
              "listeners": "20390",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "0128746e-d09f-4f8a-b2ad-794b65cc2c05"
            ],
            [
              "name": "Smells Like Teen Spirit - 2015 Remaster",
              "artist": "Tori Amos",
              "url": "https://www.last.fm/music/Tori+Amos/_/Smells+Like+Teen+Spirit+-+2015+Remaster",
              "streamable": "FIXME",
              "listeners": "10856",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit [LP Version]",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+%5BLP+Version%5D",
              "streamable": "FIXME",
              "listeners": "23736",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Richard Cheese",
              "url": "https://www.last.fm/music/Richard+Cheese/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "18211",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "9870fa89-529a-4528-be31-2a4c0f34ecd3"
            ],
            [
              "name": "Smells Like Teen Spirit - 2015 Remastered Version",
              "artist": "Tori Amos",
              "url": "https://www.last.fm/music/Tori+Amos/_/Smells+Like+Teen+Spirit+-+2015+Remastered+Version",
              "streamable": "FIXME",
              "listeners": "13996",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Robert Glasper",
              "url": "https://www.last.fm/music/Robert+Glasper/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "13279",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "2fc56555-d013-4ce5-a69f-2153ff87a271"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Scala & Kolacny Brothers",
              "url": "https://www.last.fm/music/Scala+&+Kolacny+Brothers/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "11338",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "dbdff154-21b7-49dc-aa27-e9bd8499e4c6"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "ONE OK ROCK",
              "url": "https://www.last.fm/music/ONE+OK+ROCK/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "3523",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Ituana",
              "url": "https://www.last.fm/music/Ituana/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "10817",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "f1b74459-701d-41fb-bb4d-6d0dcf1b1d84"
            ],
            [
              "name": "Smells like teen spirit",
              "artist": "Howling",
              "url": "https://www.last.fm/music/Howling/_/Smells+like+teen+spirit",
              "streamable": "FIXME",
              "listeners": "6995",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Man with a Mission",
              "url": "https://www.last.fm/music/Man+with+a+Mission/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "3388",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "8e4e002d-d250-47dd-ae05-0ff3c4940dd0"
            ],
            [
              "name": "Smells Like Teen Spirit (edit)",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+(edit)",
              "streamable": "FIXME",
              "listeners": "9627",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "0ef2f43e-51d4-4930-9052-3820358044d5"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "The Muppets Barbershop Quartet",
              "url": "https://www.last.fm/music/The+Muppets+Barbershop+Quartet/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "9974",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Rockabye Baby!",
              "url": "https://www.last.fm/music/Rockabye+Baby%21/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "7489",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "07fb442c-887d-4dc8-b0e5-dad186f292a5"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Bruthal 6",
              "url": "https://www.last.fm/music/Bruthal+6/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "5271",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Goya",
              "url": "https://www.last.fm/music/Goya/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "8237",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "68c1dc4a-2284-4745-995c-e532625c1b56"
            ],
            [
              "name": "Smells Like Teen Spirit (live)",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+(live)",
              "streamable": "FIXME",
              "listeners": "9614",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit (Devonshire Mix)",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+(Devonshire+Mix)",
              "streamable": "FIXME",
              "listeners": "5824",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit - Boombox Rehearsals",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+-+Boombox+Rehearsals",
              "streamable": "FIXME",
              "listeners": "10179",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ]
          ]
        ],
        "@attr": []
      ]
    ]
}


func nirvanaSecondPage() -> JSON {
    return [
      "results": [
        "opensearch:Query": [
          "#text": "",
          "role": "request",
          "startPage": "2"
        ],
        "opensearch:totalResults": "45780",
        "opensearch:startIndex": "30",
        "opensearch:itemsPerPage": "30",
        "trackmatches": [
          "track": [
            [
              "name": "Smells Like Teen Spirit (Nirvana Cover)",
              "artist": "David Garrett",
              "url": "https://www.last.fm/music/David+Garrett/_/Smells+Like+Teen+Spirit+(Nirvana+Cover)",
              "streamable": "FIXME",
              "listeners": "5807",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Shaka Ponk",
              "url": "https://www.last.fm/music/Shaka+Ponk/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "3095",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Vitamin String Quartet",
              "url": "https://www.last.fm/music/Vitamin+String+Quartet/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "8187",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "33614e8b-5188-4f33-9729-800b12a1aa31"
            ],
            [
              "name": "Smells Like Teen Spirit - Live Version (California)",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+-+Live+Version+(California)",
              "streamable": "FIXME",
              "listeners": "10741",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Melvins",
              "url": "https://www.last.fm/music/Melvins/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "7047",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Warp Brothers",
              "url": "https://www.last.fm/music/Warp+Brothers/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "7480",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "571b2d88-963d-4e3c-9ffc-e617d5251f67"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Cássia Eller",
              "url": "https://www.last.fm/music/C%C3%A1ssia+Eller/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "5554",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "f3b9977c-693d-452a-97ce-bef52c938338"
            ],
            [
              "name": "Smells Like a Teen Spirit",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+a+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "5542",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "The String Quartet",
              "url": "https://www.last.fm/music/The+String+Quartet/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "7162",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Los Straitjackets",
              "url": "https://www.last.fm/music/Los+Straitjackets/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "4640",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit (Home Demo)",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+(Home+Demo)",
              "streamable": "FIXME",
              "listeners": "10802",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Leszek Możdżer",
              "url": "https://www.last.fm/music/Leszek+Mo%C5%BCd%C5%BCer/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "2329",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit - Live At The Paramount/1991",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+-+Live+At+The+Paramount%2F1991",
              "streamable": "FIXME",
              "listeners": "3257",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "The Wounded",
              "url": "https://www.last.fm/music/The+Wounded/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "4271",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "971ab558-594f-4abe-bdd8-3e7228893efe"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Freedom Fry",
              "url": "https://www.last.fm/music/Freedom+Fry/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "4111",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Scott D. Davis",
              "url": "https://www.last.fm/music/Scott+D.+Davis/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "3871",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "6615c335-56ad-4931-b0cd-29ff7284e0ec"
            ],
            [
              "name": "Smells Like Teen Spirit [Live]",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+%5BLive%5D",
              "streamable": "FIXME",
              "listeners": "4436",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Meat Puppets",
              "url": "https://www.last.fm/music/Meat+Puppets/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "6951",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit (rehearsal demo, 1991)",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+(rehearsal+demo,+1991)",
              "streamable": "FIXME",
              "listeners": "5472",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "06289017-1259-401d-9657-df348f535f9b"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Fame On Fire",
              "url": "https://www.last.fm/music/Fame+On+Fire/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "1910",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells like teen spirit - Rehearsal demo",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+like+teen+spirit+-+Rehearsal+demo",
              "streamable": "FIXME",
              "listeners": "6768",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit (Butch Vig mix - recorded May, 1991)",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+(Butch+Vig+mix+-+recorded+May,+1991)",
              "streamable": "FIXME",
              "listeners": "4729",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen spirit (Nirvana cover)",
              "artist": "Pearl Jam",
              "url": "https://www.last.fm/music/Pearl+Jam/_/Smells+Like+Teen+spirit+(Nirvana+cover)",
              "streamable": "FIXME",
              "listeners": "5853",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "The Muppet Barbershop Quartet",
              "url": "https://www.last.fm/music/The+Muppet+Barbershop+Quartet/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "4161",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "e30c48de-099b-45a2-8f68-fa9bd9715da6"
            ],
            [
              "name": "Smells Like Teen Spirit (Boom Box Version)",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+(Boom+Box+Version)",
              "streamable": "FIXME",
              "listeners": "7662",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "c1c1fb17-c876-49eb-8367-4c05dc62d0f2"
            ],
            [
              "name": "Smells Like Teen Spirit (Nirvana cover)",
              "artist": "Tori Amos",
              "url": "https://www.last.fm/music/Tori+Amos/_/Smells+Like+Teen+Spirit+(Nirvana+cover)",
              "streamable": "FIXME",
              "listeners": "2811",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "87e35cd5-f03f-4c2f-a141-87764fc623ee"
            ],
            [
              "name": "Smells Like Teen Spirit",
              "artist": "Rhythms Del Mundo feat. Shanade",
              "url": "https://www.last.fm/music/Rhythms+Del+Mundo+feat.+Shanade/_/Smells+Like+Teen+Spirit",
              "streamable": "FIXME",
              "listeners": "4259",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "40d0f68b-685e-418c-b5a8-3f39aaab8727"
            ],
            [
              "name": "Smells Like Teen Spirit (Cover)",
              "artist": "J*DaVeY",
              "url": "https://www.last.fm/music/J%2ADaVeY/_/Smells+Like+Teen+Spirit+(Cover)",
              "streamable": "FIXME",
              "listeners": "2343",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": "e85f6bc1-bab6-4c37-af58-f24fbedd58fe"
            ],
            [
              "name": "smells like teen spirit [edit]",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/smells+like+teen+spirit+%5Bedit%5D",
              "streamable": "FIXME",
              "listeners": "3290",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ],
            [
              "name": "Smells Like Teen Spirit (Original)",
              "artist": "Nirvana",
              "url": "https://www.last.fm/music/Nirvana/_/Smells+Like+Teen+Spirit+(Original)",
              "streamable": "FIXME",
              "listeners": "2714",
              "image": [
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/34s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "small"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/64s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "medium"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/174s/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "large"
                ],
                [
                  "#text": "https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png",
                  "size": "extralarge"
                ]
              ],
              "mbid": ""
            ]
          ]
        ],
        "@attr": []
      ]
    ]
}
