//
//  RawData.swift
//  RePsyched
//
//  Created by Sam Kochanski on 12/11/18.
//  Copyright © 2018 Sam Kochanski. All rights reserved.
//

import Foundation

let plasticLarge =
        [
            Item(type: .plastic, size: .large, name: "Oil Drum", weight: 40.2, points: 180),
            Item(type: .plastic, size: .large, name: "Bathtub", weight: 190.3, points: 650),
            Item(type: .plastic, size: .large, name: "Car Bumper", weight: 55.3, points: 220),
            Item(type: .plastic, size: .large, name: "Bulk Plastic", weight: 100, points: 366),
            
        ]

let plasticMedium =
        [
            Item(type: .plastic, size: .medium, name: "Microwave Casing", weight: 10.2, points: 81),
            Item(type: .plastic, size: .medium, name: "Backpack", weight: 8.2, points: 30),
            Item(type: .plastic, size: .medium, name: "Container", weight: 5.5, points: 22),
            Item(type: .plastic, size: .medium, name: "Bulk Plastic", weight: 10, points: 36.6),
        ]

let plasticSmall =
        [
            Item(type: .plastic, size: .small, name: "Utensil", weight: 0.01, points: 1),
            Item(type: .plastic, size: .small, name: "Bottle", weight: 0.02, points: 2),
            Item(type: .plastic, size: .small, name: "Jar", weight: 0.04, points: 4),
            Item(type: .plastic, size: .small, name: "Bulk Plastic", weight: 1, points: 3.6),
        ]

let paperLarge =
        [
            Item(type: .paper, size: .large, name: "Oil Drum", weight: 40.2, points: 180),
            Item(type: .paper, size: .large, name: "Bathtub", weight: 190.3, points: 650),
            Item(type: .paper, size: .large, name: "Car Bumper", weight: 55.3, points: 220),
            Item(type: .paper, size: .large, name: "Bulk Plastic", weight: 100, points: 366),
            
        ]

let paperMedium =
        [
            Item(type: .paper, size: .medium, name: "Microwave Casing", weight: 10.2, points: 81),
            Item(type: .paper, size: .medium, name: "Backpack", weight: 8.2, points: 30),
            Item(type: .paper, size: .medium, name: "Container", weight: 5.5, points: 22),
            Item(type: .paper, size: .medium, name: "Bulk Plastic", weight: 10, points: 36.6),
        ]

let paperSmall =
        [
            Item(type: .paper, size: .small, name: "Plate", weight: 0.01, points: 1),
            Item(type: .paper, size: .small, name: "Cup", weight: 0.2, points: 2),
            Item(type: .paper, size: .small, name: "Sheet", weight: 0.01, points: 1),
            Item(type: .paper, size: .small, name: "Envelope", weight: 0.05, points: 1),
        ]

let metalLarge =
        [
            Item(type: .metal, size: .large, name: "Big Appliance", weight: 120, points: 500),
            Item(type: .metal, size: .large, name: "Drum", weight: 85, points: 405),
            Item(type: .metal, size: .large, name: "Car", weight: 2850, points: 1550),
            Item(type: .metal, size: .large, name: "Bulk Metal", weight: 100, points: 475),
        ]

let metalMedium =
        [
            Item(type: .metal, size: .medium, name: "Chair", weight: 10.2, points: 50.0),
            Item(type: .metal, size: .medium, name: "Lamp", weight: 4.5, points: 26.3),
            Item(type: .metal, size: .medium, name: "Small Appliance", weight: 10, points: 47.5),
            Item(type: .metal, size: .medium, name: "Bulk Metal", weight: 10, points: 47.5),
        ]
    
let metalSmall =
        [
            Item(type: .metal, size: .small, name: "Utensil", weight: 0.2, points: 1),
            Item(type: .metal, size: .small, name: "Bottle", weight: 0.2, points: 5),
            Item(type: .metal, size: .small, name: "Can", weight: 0.1, points: 5),
            Item(type: .metal, size: .small, name: "Bulk Metal", weight: 1, points: 3.6),
        ]

let data = [[plasticLarge, plasticMedium, plasticSmall], [paperLarge, paperMedium, paperSmall], [metalLarge, metalMedium, metalSmall]]

/*

let data : Array<Dictionary<ItemType, Array<Dictionary<ItemSize, Array<Array<Dictionary<String, Any?>>>>>>> =
            [
                [ItemType.plastic:
                    [
                        [ItemSize.large :
                            [
                                [
                                    ["name" : "Oil Drum"],
                                    ["weight" : 40.2],
                                    ["points" : 180]
                                ],
                                [
                                    ["name" : "Bathtub"],
                                    ["weight" : 190.3],
                                    ["points" : 650]
                                ],
                                [
                                    ["name" : "Car Bumper"],
                                    ["weight" : 55.3],
                                    ["points" : 220]
                                ],
                                [
                                    ["name" : "Bulk Plastic"],
                                    ["weight" : 100],
                                    ["points" : 366]
                                ]
                            
                            ]
                            
                        ],
                        [ItemSize.medium :
                            [
                                [
                                    ["name" : "Microwave Casing"],
                                    ["weight" : 10.2],
                                    ["points" : 81]
                                ],
                                [
                                    ["name" : "Backpack"],
                                    ["weight" : 8.2],
                                    ["points" : 30]
                                ],
                                [
                                    ["name" : "Container"],
                                    ["weight" : 5.5],
                                    ["points" : 22]
                                ],
                                [
                                    ["name" : "Bulk Plastic"],
                                    ["weight" : 10],
                                    ["points" : 36.6]
                                ]
                                
                            ]
                            
                            
                        ],
                        [ItemSize.small :
                            [
                                [
                                    ["name" : "Utensil"],
                                    ["weight" : 0.01],
                                    ["points" : 1]
                                ],
                                [
                                    ["name" : "Bottle"],
                                    ["weight" : 0.2],
                                    ["points" : 2]
                                ],
                                [
                                    ["name" : "Jar"],
                                    ["weight" : 0.4],
                                    ["points" : 5]
                                ],
                                [
                                    ["name" : "Bulk Plastic"],
                                    ["weight" : 1],
                                    ["points" : 3.6]
                                ]
                                
                            ]
                            
                        ]
                    ]
                ],
                [ItemType.paper:
                    [
                        [ItemSize.large :
                            [
                                [
                                    ["name" : "Appliance"],
                                    ["weight" : 100],
                                    ["points" : 500]
                                ],
                                [
                                    ["name" : "Drum"],
                                    ["weight" : 85],
                                    ["points" : 455]
                                ],
                                [
                                    ["name" : "Car"],
                                    ["weight" : 2800],
                                    ["points" : 1550]
                                ],
                                [
                                    ["name" : "Bulk Metal"],
                                    ["weight" : 100],
                                    ["points" : 366]
                                ]
                                
                            ]
                            
                        ],
                        [ItemSize.medium :
                            [
                                [
                                    ["name" : "Chair"],
                                    ["weight" : 10.2],
                                    ["points" : 81]
                                ],
                                [
                                    ["name" : "Lamp"],
                                    ["weight" : 8.2],
                                    ["points" : 30]
                                ],
                                [
                                    ["name" : "Small Appliance"],
                                    ["weight" : 10],
                                    ["points" : 55]
                                ],
                                [
                                    ["name" : "Bulk Metal"],
                                    ["weight" : 10],
                                    ["points" : 36.6]
                                ]
                                
                            ]
                            
                        ],
                        [ItemSize.small :
                            [
                                [
                                    ["name" : "Plate"],
                                    ["weight" : 0.01],
                                    ["points" : 1]
                                ],
                                [
                                    ["name" : "Cup"],
                                    ["weight" : 0.2],
                                    ["points" : 2]
                                ],
                                [
                                    ["name" : "Sheet"],
                                    ["weight" : 0.01],
                                    ["points" : 1]
                                ],
                                [
                                    ["name" : "Envilope"],
                                    ["weight" : 0.1],
                                    ["points" : 1]
                                ]
                                
                            ]
                            
                        ]
                    ]
                ],
                [ItemType.metal:
                    [
                        [ItemSize.large :
                            [
                                [
                                    ["name" : "Appliance"],
                                    ["weight" : 100],
                                    ["points" : 500]
                                ],
                                [
                                    ["name" : "Drum"],
                                    ["weight" : 85],
                                    ["points" : 455]
                                ],
                                [
                                    ["name" : "Car"],
                                    ["weight" : 2800],
                                    ["points" : 1550]
                                ],
                                [
                                    ["name" : "Bulk Metal"],
                                    ["weight" : 100],
                                    ["points" : 366]
                                ]
                                
                            ]
                            
                        ],
                        [ItemSize.medium :
                            [
                                [
                                    ["name" : "Chair"],
                                    ["weight" : 10.2],
                                    ["points" : 81]
                                ],
                                [
                                    ["name" : "Lamp"],
                                    ["weight" : 8.2],
                                    ["points" : 30]
                                ],
                                [
                                    ["name" : "Small Appliance"],
                                    ["weight" : 10],
                                    ["points" : 55]
                                ],
                                [
                                    ["name" : "Bulk Metal"],
                                    ["weight" : 10],
                                    ["points" : 36.6]
                                ]
                                
                            ]
                            
                            
                        ],
                        [ItemSize.small :
                            [
                                [
                                    ["name" : "Utensil"],
                                    ["weight" : 0.2],
                                    ["points" : 1]
                                ],
                                [
                                    ["name" : "Bottle"],
                                    ["weight" : 0.2],
                                    ["points" : 5]
                                ],
                                [
                                    ["name" : "Can"],
                                    ["weight" : 0.1],
                                    ["points" : 5]
                                ],
                                [
                                    ["name" : "Bulk Metal"],
                                    ["weight" : 1],
                                    ["points" : 3.6]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
*/
