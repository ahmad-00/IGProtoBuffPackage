// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: GeoGetConfiguration.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct IGPGeoGetConfiguration: SwiftProtobuf.RequestMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var igpRequest: IGPRequest {
    get {return _storage._igpRequest ?? IGPRequest()}
    set {_uniqueStorage()._igpRequest = newValue}
  }
  /// Returns true if `igpRequest` has been explicitly set.
  public var hasIgpRequest: Bool {return _storage._igpRequest != nil}
  /// Clears the value of `igpRequest`. Subsequent reads from it will return its default value.
  public mutating func clearIgpRequest() {_uniqueStorage()._igpRequest = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPGeoGetConfigurationResponse: SwiftProtobuf.ResponseMessage {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var igpResponse: IGPResponse {
    get {return _storage._igpResponse ?? IGPResponse()}
    set {_uniqueStorage()._igpResponse = newValue}
  }
  /// Returns true if `igpResponse` has been explicitly set.
  public var hasIgpResponse: Bool {return _storage._igpResponse != nil}
  /// Clears the value of `igpResponse`. Subsequent reads from it will return its default value.
  public mutating func clearIgpResponse() {_uniqueStorage()._igpResponse = nil}

  public var igpTileServer: [IGPGeoGetConfigurationResponse.IGPTileServer] {
    get {return _storage._igpTileServer}
    set {_uniqueStorage()._igpTileServer = newValue}
  }

  public var igpCacheID: String {
    get {return _storage._igpCacheID}
    set {_uniqueStorage()._igpCacheID = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct IGPTileServer: SwiftProtobuf.Message {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var igpBaseURL: String = String()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPGeoGetConfiguration: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPGeoGetConfiguration"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpRequest)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpRequest {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPGeoGetConfiguration, rhs: IGPGeoGetConfiguration) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpRequest != rhs_storage._igpRequest {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPGeoGetConfigurationResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPGeoGetConfigurationResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_tile_server"),
    3: .standard(proto: "IGP_cache_id"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpTileServer: [IGPGeoGetConfigurationResponse.IGPTileServer] = []
    var _igpCacheID: String = String()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpTileServer = source._igpTileServer
      _igpCacheID = source._igpCacheID
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._igpResponse)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._igpTileServer)
        case 3: try decoder.decodeSingularStringField(value: &_storage._igpCacheID)
        default: break
        }
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._igpResponse {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._igpTileServer.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._igpTileServer, fieldNumber: 2)
      }
      if !_storage._igpCacheID.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpCacheID, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPGeoGetConfigurationResponse, rhs: IGPGeoGetConfigurationResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpResponse != rhs_storage._igpResponse {return false}
        if _storage._igpTileServer != rhs_storage._igpTileServer {return false}
        if _storage._igpCacheID != rhs_storage._igpCacheID {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPGeoGetConfigurationResponse.IGPTileServer: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = IGPGeoGetConfigurationResponse.protoMessageName + ".IGPTileServer"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_base_url"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.igpBaseURL)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.igpBaseURL.isEmpty {
      try visitor.visitSingularStringField(value: self.igpBaseURL, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPGeoGetConfigurationResponse.IGPTileServer, rhs: IGPGeoGetConfigurationResponse.IGPTileServer) -> Bool {
    if lhs.igpBaseURL != rhs.igpBaseURL {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}