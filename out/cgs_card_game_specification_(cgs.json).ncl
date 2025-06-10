# DO NOT EDIT
# This file was automatically generated using json-schema-to-nickel
let js2n
  = import "../lib/main.ncl"
  in
let rec refs
    = {
      "definitions.CardAction" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [| 'discard, 'flip, 'tap, 'rotate, 'move |]
            ],
      "definitions.CardBackFaceImageUrl" =
        {
            id | String | doc "The id of the card back" | optional,
            url
              | String
              | doc "The url from which to download the card back"
              | optional,
          },
      "definitions.DeckFileTxtId" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'set, 'id |] ],
      "definitions.DeckFileType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'ydk, 'txt, 'lor, 'hsd, 'dec |] ],
      "definitions.DeckPlayCard" =
        {
            cardQuery
              | String
              | doc "CGS will automatically play the Card that matches cardQuery, when the player loads a Deck in Play Mode matching deckQuery"
              | optional,
            deckQuery
              | String
              | doc "CGS will automatically play the Card that matches cardQuery, when the player loads a Deck in Play Mode matching deckQuery"
              | optional,
            position
              | refs."definitions.Float2"
              | { _ | Dyn }
              | doc "Indicates the played Card's position in inches"
              | optional,
            rotation
              | std.number.Integer
              | doc "Indicates the played Card's rotation in degrees"
              | optional,
          },
      "definitions.DeckUrl" =
        {
            isAvailable
              | Bool
              | doc "Optionally set to false to ignore this deck url"
              | optional,
            name | String | doc "The name of the deck" | optional,
            txt
              | String
              | doc "An optional path that can be used to override the url. See @cgs.json#/properties/allDecksUrlTxtRoot"
              | optional,
            url
              | String
              | doc "The url from which to download the deck"
              | optional,
          },
      "definitions.EnumDef" =
        {
            property
              | String
              | doc "Refers to a *Property:Name* in <cardProperties>"
              | optional,
            values
              | { _ | String }
              | doc "Dictionary with string key-value pairs"
              | optional,
          },
      "definitions.ExtraDef" =
        {
            group
              | String
              | doc "A group of extra cards is displayed together with this label in Play Mode"
              | optional,
            property
              | String
              | doc "Refers to a *Property:Name* in <cardProperties>"
              | optional,
            value
              | String
              | doc "If *Card:Properties[ExtraDef:Property]* equals *ExtraDef:Value*, then that card will be moved from the main deck to this extra deck"
              | optional,
          },
      "definitions.FacePreference" =
        std.contract.Sequence [ std.enum.TagOrString, [| 'up, 'down, 'any |] ],
      "definitions.Float2" = { x | Number | optional, y | Number | optional, },
      "definitions.GameBoard" =
        {
            id | String | doc "The id of the board" | optional,
            offsetMin
              | refs."definitions.Float2"
              | { _ | Dyn }
              | doc "Indicates the position (in inches) of the bottom-left corner"
              | optional,
            size
              | refs."definitions.Float2"
              | { _ | Dyn }
              | doc "Indicates the board's width and height in inches"
              | optional,
          },
      "definitions.GameBoardCard" =
        {
            boards
              | Array (
                std.contract.Sequence
                  [ refs."definitions.GameBoard", { _ | Dyn } ]
              )
              | optional,
            card
              | String
              | doc "When a deck is loaded in Play Mode, any card with *Card:Id* = *Card* will cause *Boards* to be put into the play area."
              | optional,
          },
      "definitions.GameBoardUrl" =
        {
            id | String | doc "The id of the board" | optional,
            url
              | String
              | doc "The url from which to download the board image"
              | optional,
          },
      "definitions.GamePlayZone" =
        {
            defaultCardAction
              | js2n.Nullable
                (std.contract.Sequence
                  [ refs."definitions.CardAction", String ])
              | doc "If possible, CGS will take the defaultCardAction when a Card is double-clicked in the Game Play Zone. If null, defaults to <gameDefaulCardAction>"
              | optional,
            face
              | refs."definitions.FacePreference"
              | String
              | doc "When a Card enters the Game Play Zone, the Card will display this face"
              | optional,
            position
              | refs."definitions.Float2"
              | { _ | Dyn }
              | doc "Indicates the Game Play Zone's position in inches"
              | optional,
            rotation
              | std.number.Integer
              | doc "Indicates the Game Play Zone's rotation in degrees"
              | optional,
            size
              | refs."definitions.Float2"
              | { _ | Dyn }
              | doc "Indicates the Game Play Zone's width and height in inches"
              | optional,
            type
              | refs."definitions.GamePlayZoneType"
              | String
              | doc "The Game Play Zone type from area, horizontal, or vertical"
              | optional,
          },
      "definitions.GamePlayZoneType" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'vertical, 'horizontal, 'area |] ],
      "definitions.PropertyDef" =
        {
            backName
              | String
              | doc "If the Card is a back Face: This name can be referenced to lookup a Card's property"
              | optional,
            delimiter
              | String
              | doc "If this property is a stringList or stringEnumList, the value will be delimited by this delimiter"
              | optional,
            display
              | String
              | doc "The name of the property as it is displayed to the end user"
              | optional,
            displayEmpty
              | String
              | doc "The value to display if the value is null or empty"
              | optional,
            displayEmptyFirst
              | Bool
              | doc "List <displayEmpty> as the first option if this property is an enum?"
              | optional,
            frontName
              | String
              | doc "If the Card is a front Face: This name can be referenced to lookup a Card's property"
              | optional,
            name
              | String
              | doc "The name of the property: This name can be referenced to lookup a Card's property",
            properties
              | Array (std.contract.Sequence [ js2n.Always, { _ | Dyn } ])
              | optional,
            type
              | refs."definitions.PropertyType"
              | String
              | doc "The type of the property",
          },
      "definitions.PropertyType" =
        std.contract.Sequence
            [
              std.enum.TagOrString,
              [|
                'objectEnumList,
                'objectList,
                'objectEnum,
                'stringEnumList,
                'stringList,
                'stringEnum,
                'object,
                'boolean,
                'integer,
                'escapedString,
                'string
              |]
            ],
      "definitions.SharePreference" =
        std.contract.Sequence
            [ std.enum.TagOrString, [| 'individual, 'share, 'ask |] ],
    }
    in
  {
      allCardsUrl
        | js2n.Nullable String
        | doc "From allCardsUrl, CGS downloads the json that contains the Card data for the game. If CGS is able to successfully download this file, it will save it as AllCards.json."
        | optional,
      allCardsUrlPageCount
        | std.number.Integer
        | doc "If allCardsUrlPageCount > 1, CGS will download <allCardsUrl> with <allCardsUrlPageIdentifier>+<page> for each page."
        | optional,
      allCardsUrlPageCountDivisor
        | std.number.Integer
        | doc "allCardsUrlPageCountDivisor can be set to the # of cards per page, ie: allCardsUrlPageCount = <allCardsUrlPageCountIdentifier pointing to total # of cards>/<allCardsUrlPageCountDivisor>."
        | optional,
      allCardsUrlPageCountIdentifier
        | String
        | doc "If allCardsUrlPageCountIdentifier is set, CGS will set the allCardsUrlPageCount to the response value of <allCardsUrlPageCountIdentifier> from <allCardsUrl>."
        | optional,
      allCardsUrlPageCountStartIndex
        | std.number.Integer
        | doc "allCardsUrlPageCountStartIndex is used to identify the first page of allCardsUrlPageCount."
        | optional,
      allCardsUrlPageIdentifier
        | String
        | doc "If allCardsUrlPageCount > 1, CGS will download <allCardsUrl> with <allCardsUrlPageIdentifier>+<page> for each page."
        | optional,
      allCardsUrlPostBodyContent
        | String
        | doc "If allCardsUrlPostBodyContent is set, CGS will make a POST to <allCardsUrl> with a JSON body that contains <allCardsUrlPostBodyContent>. If not set, CGS will just GET from <allCardsUrl>."
        | optional,
      allCardsUrlRequestHeader
        | String
        | doc "allCardsUrlRequestHeader and allCardsUrlRequestHeader can be used together for secured APIs."
        | optional,
      allCardsUrlRequestHeaderValue
        | String
        | doc "allCardsUrlRequestHeader and allCardsUrlRequestHeader can be used together for secured APIs."
        | optional,
      allCardsUrlWrapped
        | Bool
        | doc "If allCardsUrl points to file(s) enclosed by extra characters, set allCardsUrlWrapped to true, and CGS will trim the first and last characters."
        | optional,
      allCardsUrlZipped
        | Bool
        | doc "If allCardsUrl points to zipped file(s), set allCardsUrlZipped to true, and CGS will unzip the file(s)."
        | optional,
      allDecksUrl
        | js2n.Nullable String
        | doc "From allDecksUrl, CGS downloads the json that contains the Deck data for the game. If CGS is able to successfully download this file, it will save it as AllDecks.json."
        | optional,
      allDecksUrlDataIdentifier
        | String
        | doc "If allDecksUrlDataIdentifier is set to a non-empty string, AllDecks.json will be parsed as a JSON object: {\"@allDecksUrlDataIdentifier\":{\"$ref\":\"AllDecks.json\"}}"
        | optional,
      allDecksUrlPostBodyContent
        | String
        | doc "If allDecksUrlPostBodyContent is set, CGS will make a POST to <allDecksUrl> with a JSON body that contains <allDecksUrlPostBodyContent>. If not set, CGS will just GET from <allDecksUrl>."
        | optional,
      allDecksUrlTxtRoot
        | String
        | doc "If allDecksUrlTxtRoot is set, CGS will parse deck urls as <allDecksUrlTxtRoot>+*DeckUrl:Txt*"
        | optional,
      allSetsUrl
        | js2n.Nullable String
        | doc "From allSetsUrl, CGS downloads the json that contains the Set data for the game. If CGS is able to successfully download this json, it will save it as AllSets.json."
        | optional,
      allSetsUrlWrapped
        | Bool
        | doc "If allSetsUrl points to a file enclosed by extra characters, set allSetsUrlWrapped to true, and CGS will trim the first and last characters."
        | optional,
      allSetsUrlZipped
        | Bool
        | doc "If allSetsUrl points to a zipped file, set allSetsUrlZipped to true, and CGS will unzip the file."
        | optional,
      autoUpdate
        | std.number.Integer
        | doc "autoUpdate indicates how many days to use cached files instead of re-downloading. autoUpdate=0 will re-download files at every opportunity. autoUpdate<0 will never attempt to download anything."
        | optional,
      autoUpdateUrl
        | js2n.Nullable String
        | doc "autoUpdateUrl indicates the url from which users download *Game:Name*.json, and CGS will automatically re-download the custom game from this url every <autoUpdate> days. This url is used in the *Game:Id*. You should host *Game:Name*.json at this url, but if you do not, you can set autoUpdate to -1, and there should be no issues."
        | optional,
      bannerImageFileType
        | String
        | doc "bannerImageFileType is the file type extension for the image file that CGS downloads from bannerImageUrl."
        | optional,
      bannerImageUrl
        | js2n.Nullable String
        | doc "If bannerImageUrl is a valid url, CGS will download the image at that url and save it as Banner.<bannerImageFileType>. CGS will attempt to display the Banner.<bannerImageFileType> as an identifier to the user. If it is unable to read Banner.<bannerImageFileType>, CGS will simply display the CGS logo."
        | optional,
      cardBackFaceImageUrls
        | Array refs."definitions.CardBackFaceImageUrl"
        | doc "CGS will go through each CardBackFaceImageUrl and save the data from *CardBackFaceImageUrl:Url* to 'backs/*CardBackFaceImageUrl:Id*.<cardBackImageFileType>'"
        | optional,
      cardBackImageFileType
        | String
        | doc "cardBackImageFileType is the file type extension for the image file that CGS downloads from cardBackImageUrl."
        | optional,
      cardBackImageUrl
        | js2n.Nullable String
        | doc "If cardBackImageUrl is a valid url, CGS will download the image at that url and save it as CardBack.<cardBackImageFileType>. CGS will display the CardBack.<cardBackImageFileType> when the user turns a card facedown or if CGS is unable to find the appropriate card image. If CGS is unable to get a custom card back, CGS will use the default CGS card back."
        | optional,
      cardDataIdentifier
        | String
        | doc "If cardDataIdentifier is set to a non-empty string, AllCards.json will be parsed as a JSON object: {\"@cardDataIdentifier\":{\"$ref\":\"AllCards.json\"}}"
        | optional,
      cardIdIdentifier
        | String
        | doc "Every Card must have a unique id. When defining a Card in AllCards.json or AllSets.json, you can have the *Card:Id* mapped to the field defined by cardIdIdentifier. Most custom games will likely want to keep the default cardIdIdentifier."
        | optional,
      cardIdStop
        | String
        | doc "Every Card must have a unique id. When defining a Card in AllCards.json or AllSets.json, you can have the *Card:Id* mapped to the field defined by cardIdIdentifier. Most custom games will likely want to keep the default cardIdIdentifier. If cardIdStop is set, any id that contains cardIdStop will be stopped at <cardIdStop>."
        | optional,
      cardImageFileType
        | String
        | doc "cardImageFileType is the file type extension for the image files that CGS downloads for each individual Card."
        | optional,
      cardImageProperty
        | String
        | doc "cardImageProperty is the *Card:Property* which points to the image for this Card. If <cardImageProperty> is empty, <cardImageUrl> will be used instead."
        | optional,
      cardImageUrl
        | String
        | doc "cardImageUrl is a parameterized template url from which CGS downloads card image files if <cardImageProperty> is empty. Parameters: {cardId}=*Card:Id*, {cardName}=*Card:Name*, {cardSet}=*Card:SetCode*, {cardImageFileType}=<cardImageFileType>, {<property>}=*Card:<property>*. Example: https://www.cardgamesimulator.com/games/Standard/sets/{cardSet}/{cardId}.{cardImageFileType}"
        | optional,
      cardNameBackIdentifier
        | String
        | doc "When defining a Card in AllCards.json or AllSets.json, you can have the *Card:Name* of the back face mapped to the field defined by cardNameBackIdentifier. Most custom games will likely want to keep the default cardNameBackIdentifier."
        | optional,
      cardNameIdentifier
        | String
        | doc "When defining a Card in AllCards.json or AllSets.json, you can have the *Card:Name* mapped to the field defined by cardNameIdentifier. Most custom games will likely want to keep the default cardNameIdentifier."
        | optional,
      cardNameIsUnique
        | Bool
        | doc "If cardNameIsUnique is true, different Cards are not allowed to have the same *Card:Name*. Cards with the same name will be treated as reprints, with the option to hide reprints available. If cardNameIsUnique is false, DeckFileType.Txt will require <deckFileTxtId> for every Card."
        | optional,
      cardPrimaryProperty
        | String
        | doc "The cardPrimaryProperty is the *Card:Property* that is first selected and displayed in the Card Viewer, which appears whenever a user selects a card."
        | optional,
      cardProperties
        | Array refs."definitions.PropertyDef"
        | doc "cardProperties defines the name keys for *Card:Property*s. The values should be mapped in AllCards.json or AllSets.json."
        | optional,
      cardPropertyIdentifier
        | String
        | doc "When defining a Card in AllCards.json or AllSets.json, you can integrate objectEnum and objectEnumList properties with enums by using cardPropertyIdentifier. Most custom games will likely want to keep the default cardPropertyIdentifier."
        | optional,
      cardRotationDefault
        | std.number.Integer
        | doc "Cards will be rotated <cardRotationDefault> degrees, unless you override with cardRotationIdentifier. Most custom games will likely want to keep the default cardRotationDefault."
        | optional,
      cardRotationIdentifier
        | String
        | doc "When defining a Card in AllCards.json or AllSets.json, you can set <cardRotationIdentifier> to an int field that indicates the rotation of a card in degrees. If left blank or missing, cards will be rotated <cardRotationDefault> degrees."
        | optional,
      cardSetIdentifier
        | String
        | doc "When defining a Card in AllCards.json, you can have the *Card:SetCode* mapped to the field defined by cardSetIdentifier. If the mapping is missing, CGS will use <setCodeDefault>. Most custom games will likely want to keep the default cardSetIdentifier."
        | optional,
      cardSetIsObject
        | Bool
        | doc "If cardSetIsObject is set to true, <cardSetIdentifier> should point to an object (or list of objects) that follows the rules for AllSets.json."
        | optional,
      cardSetNameIdentifier
        | String
        | doc "When defining a Card in AllCards.json, you can have the *Card:SetCode* mapped to the field defined by cardSetIdentifier. That Set's name can be defined by cardSetNameIdentifier."
        | optional,
      cardSetsInList
        | Bool
        | doc "If cardSetInList is set to true, Cards will be duplicated for each Set in <cardSetIdentifier>."
        | optional,
      cardSetsInListIsCsv
        | Bool
        | doc "If cardSetsInListIsCsv is set to true, Cards will be duplicated for each Set found in the comma-separated list of <cardSetIdentifier>."
        | optional,
      cardSize
        | refs."definitions.Float2"
        | doc "cardSize indicates a card's width and height in inches."
        | optional,
      cgsGamesLink
        | js2n.Nullable String
        | doc "cgsGamesLink is a clickable url that will take the user directly to this game on the CGS Games website, which can be shared between users."
        | optional,
      copyright
        | String
        | doc "copyright indicates the legal owner of this Card Game. CGS will display this value in the bottom-left corner of the Main Menu."
        | optional,
      deckFileAltId
        | String
        | doc "When saving or loading a deck with <deckFileType> NOT txt, deckFileAltId refers to the *Card:Property* used to uniquely identify each Card. For hsd, this is stored as a varint within the deck string."
        | optional,
      deckFileTxtId
        | refs."definitions.DeckFileTxtId"
        | doc "When saving a deck as txt, different Cards may share the same name, and if they do, the *Card:<deckFileTxtId>* will be used to uniquely identify Cards."
        | optional,
      deckFileType
        | refs."definitions.DeckFileType"
        | doc "When saving a deck, the formatting for how it is saved and loaded is defined by the deckFileType. dec refers to the old MTGO deck file format. hsd refers to the Hearthstone deck string format. ydk refers to the YGOPRO deck file format. txt parses each line for the following: <Quantity> [*Card:Id*] *Card:Name* (*Card:SetCode*)."
        | optional,
      deckPlayCards
        | Array refs."definitions.DeckPlayCard"
        | doc "deckPlayCards indicates cards that should automatically be played when a player loads a deck in Play Mode."
        | optional,
      deckSharePreference
        | refs."definitions.SharePreference"
        | doc "For networked games, CGS will use deckSharePreference to: ask players if they want to share the same deck, force all players to share the same deck, or force an individual deck for each player."
        | optional,
      deckUrls
        | Array refs."definitions.DeckUrl"
        | doc "CGS will go through each DeckUrl and save the data from *DeckUrl:Url* to 'decks/*DeckUrl:Name*.<deckFileType>'"
        | optional,
      enums
        | Array refs."definitions.EnumDef"
        | doc "The value is displayed to the user through the UI while the keys remain hidden. If the keys are entered as a hexadecimal integers (prefixed with 0x), multiple values can go through bitwise and/ors to have a single enumValue represent multiple values. The multiple values would be displayed together to the user, using | as the delimiter."
        | optional,
      extras
        | Array refs."definitions.ExtraDef"
        | doc "Describes extra cards separate from the main deck: The hsd deckFileType treats all extra cards as Heroes, and the ydk deckFileType treats all extra cards as extra deck cards."
        | optional,
      gameBoardCards | Array refs."definitions.GameBoardCard" | optional,
      gameBoardImageFileType
        | String
        | doc "gameBoardImageFileType is the file type extension for the image files that CGS downloads for each game board."
        | optional,
      gameBoardUrls
        | Array refs."definitions.GameBoardUrl"
        | doc "CGS will go through each GameBoardUrl and save the data from *GameBoardUrl:Url* to 'boards/*GameBoardUrl:Id*.<gameBoardImageFileType>'"
        | optional,
      gameCardRotationDegrees
        | std.number.Integer
        | doc "gameCardRotationDegrees indicates how many degrees to rotate Cards in Play Mode."
        | optional,
      gameDefaultCardAction
        | refs."definitions.CardAction"
        | doc "If possible, CGS will take the gameDefaultCardAction when a Card is double-clicked in Play Mode."
        | optional,
      gamePlayDeckName
        | String
        | doc "gamePlayDeckName is the name of the card stack shown when a player loads a deck. If <gamePlayDeckName> is empty, the *Deck:Name* is used."
        | optional,
      gamePlayDeckPositions
        | Array refs."definitions.Float2"
        | doc "Each deck loaded during a game will be loaded to its corresponding position in gamePlayDeckPositions. The first deck loaded will go to the first position, second to second, etc."
        | optional,
      gamePlayZones
        | Array refs."definitions.GamePlayZone"
        | doc "gamePlayZones will appear in the Play Area in Play Mode."
        | optional,
      gameStartDecks
        | Array refs."definitions.DeckUrl"
        | doc "gameStartDecks indicates decks that should automatically be loaded when a player starts playing in Play Mode."
        | optional,
      gameStartHandCount
        | std.number.Integer
        | doc "gameStartHandCount indicates how many cards are automatically dealt from a loaded deck to a player's hand."
        | optional,
      gameStartPointsCount
        | std.number.Integer
        | doc "gameStartPointsCount indicates how many points are automatically assigned to each player."
        | optional,
      name
        | String
        | doc "The name of the custom card game as it appears to the user. This name is required for the *Game:Id*.",
      playMatGridCellSize
        | refs."definitions.Float2"
        | doc "playMatGridCellSize indicates the width and height in inches of each cell in the play area in Play Mode."
        | optional,
      playMatImageFileType
        | String
        | doc "playMatImageFileType is the file type extension for the image file that CGS downloads from playMatImageUrl."
        | optional,
      playMatImageUrl
        | js2n.Nullable String
        | doc "If playMatImageUrl is a valid url, CGS will download the image at that url and save it as PlayMat.<playMatImageFileType>. CGS will use the PlayMat.<playMatImageFileType> as the background image while in Play Mode. If CGS is unable to get this image, CGS will use the default table image."
        | optional,
      playMatSize
        | refs."definitions.Float2"
        | doc "playMatSize indicates the width and height in inches of the play area in Play Mode."
        | optional,
      rulesUrl
        | js2n.Nullable String
        | doc "rulesUrl should link to this game's online rulebook."
        | optional,
      setCardsIdentifier
        | String
        | doc "When defining a Set in AllSets.json, you can also define Cards to include in that Set by indicating them with setCardsIdentifier. Most custom games will likely want to keep the default setCardsIdentifier."
        | optional,
      setCardsUrlIdentifier
        | String
        | doc "When defining a Set in AllSets.json, you can also define Cards to include in that Set by indicating them with SetCardsUrlIdentifier. Most custom games will likely want to keep the default SetCardsUrlIdentifier."
        | optional,
      setCodeDefault
        | String
        | doc "If a Card does not specify its Set, it will be included in the Set with *Set:Code* specified by setCodeDefault. This Set's name is specified by setNameDefault."
        | optional,
      setCodeIdentifier
        | String
        | doc "When defining a Set in AllSets.json, you can have the *Set:Code* mapped to the field defined by setCodeIdentifier. Most custom games will likely want to keep the default setCodeIdentifier."
        | optional,
      setDataIdentifier
        | String
        | doc "If setDataIdentifier is set to a non-empty string, AllSets.json will be parsed as a JSON object: {\"@setDataIdentifier\":{\"$ref\":\"AllSets.json\"}}"
        | optional,
      setNameDefault
        | String
        | doc "If a Card does not specify its Set, it will be included in the Set with *Set:Code* specified by setCodeDefault. This Set's name is specified by setNameDefault."
        | optional,
      setNameIdentifier
        | String
        | doc "When defining a Set in AllSets.json, you can have the *Set:Name* mapped to the field defined by setNameIdentifier. If the mapping is missing, CGS will use the *Set:Code*. Most custom games will likely want to keep the default setNameIdentifier."
        | optional,
    }