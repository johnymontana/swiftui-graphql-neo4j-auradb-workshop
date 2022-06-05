// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class MostRecentArticlesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query MostRecentArticles {
      articles(options: {limit: 30, sort: {published: DESC}}) {
        __typename
        title
        url
        published
        abstract
        photo {
          __typename
          caption
          url
        }
        people {
          __typename
          name
        }
        geos {
          __typename
          name
        }
        organizations {
          __typename
          name
        }
      }
    }
    """

  public let operationName: String = "MostRecentArticles"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("articles", arguments: ["options": ["limit": 30, "sort": ["published": "DESC"]]], type: .nonNull(.list(.nonNull(.object(Article.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(articles: [Article]) {
      self.init(unsafeResultMap: ["__typename": "Query", "articles": articles.map { (value: Article) -> ResultMap in value.resultMap }])
    }

    public var articles: [Article] {
      get {
        return (resultMap["articles"] as! [ResultMap]).map { (value: ResultMap) -> Article in Article(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Article) -> ResultMap in value.resultMap }, forKey: "articles")
      }
    }

    public struct Article: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Article"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("url", type: .nonNull(.scalar(String.self))),
          GraphQLField("published", type: .scalar(String.self)),
          GraphQLField("abstract", type: .scalar(String.self)),
          GraphQLField("photo", type: .object(Photo.selections)),
          GraphQLField("people", type: .list(.object(Person.selections))),
          GraphQLField("geos", type: .list(.object(Geo.selections))),
          GraphQLField("organizations", type: .list(.object(Organization.selections))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(title: String? = nil, url: String, published: String? = nil, abstract: String? = nil, photo: Photo? = nil, people: [Person?]? = nil, geos: [Geo?]? = nil, organizations: [Organization?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Article", "title": title, "url": url, "published": published, "abstract": abstract, "photo": photo.flatMap { (value: Photo) -> ResultMap in value.resultMap }, "people": people.flatMap { (value: [Person?]) -> [ResultMap?] in value.map { (value: Person?) -> ResultMap? in value.flatMap { (value: Person) -> ResultMap in value.resultMap } } }, "geos": geos.flatMap { (value: [Geo?]) -> [ResultMap?] in value.map { (value: Geo?) -> ResultMap? in value.flatMap { (value: Geo) -> ResultMap in value.resultMap } } }, "organizations": organizations.flatMap { (value: [Organization?]) -> [ResultMap?] in value.map { (value: Organization?) -> ResultMap? in value.flatMap { (value: Organization) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var title: String? {
        get {
          return resultMap["title"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "title")
        }
      }

      public var url: String {
        get {
          return resultMap["url"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "url")
        }
      }

      public var published: String? {
        get {
          return resultMap["published"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "published")
        }
      }

      public var abstract: String? {
        get {
          return resultMap["abstract"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "abstract")
        }
      }

      public var photo: Photo? {
        get {
          return (resultMap["photo"] as? ResultMap).flatMap { Photo(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "photo")
        }
      }

      public var people: [Person?]? {
        get {
          return (resultMap["people"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Person?] in value.map { (value: ResultMap?) -> Person? in value.flatMap { (value: ResultMap) -> Person in Person(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Person?]) -> [ResultMap?] in value.map { (value: Person?) -> ResultMap? in value.flatMap { (value: Person) -> ResultMap in value.resultMap } } }, forKey: "people")
        }
      }

      public var geos: [Geo?]? {
        get {
          return (resultMap["geos"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Geo?] in value.map { (value: ResultMap?) -> Geo? in value.flatMap { (value: ResultMap) -> Geo in Geo(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Geo?]) -> [ResultMap?] in value.map { (value: Geo?) -> ResultMap? in value.flatMap { (value: Geo) -> ResultMap in value.resultMap } } }, forKey: "geos")
        }
      }

      public var organizations: [Organization?]? {
        get {
          return (resultMap["organizations"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Organization?] in value.map { (value: ResultMap?) -> Organization? in value.flatMap { (value: ResultMap) -> Organization in Organization(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Organization?]) -> [ResultMap?] in value.map { (value: Organization?) -> ResultMap? in value.flatMap { (value: Organization) -> ResultMap in value.resultMap } } }, forKey: "organizations")
        }
      }

      public struct Photo: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Photo"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("caption", type: .scalar(String.self)),
            GraphQLField("url", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(caption: String? = nil, url: String) {
          self.init(unsafeResultMap: ["__typename": "Photo", "caption": caption, "url": url])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var caption: String? {
          get {
            return resultMap["caption"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "caption")
          }
        }

        public var url: String {
          get {
            return resultMap["url"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "url")
          }
        }
      }

      public struct Person: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Person"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String) {
          self.init(unsafeResultMap: ["__typename": "Person", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Geo: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Geo"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String) {
          self.init(unsafeResultMap: ["__typename": "Geo", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }

      public struct Organization: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Organization"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String) {
          self.init(unsafeResultMap: ["__typename": "Organization", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}
