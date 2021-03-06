// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ConnectionSecuring.proto
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

public struct IGPConnectionSecuringResponse: SwiftProtobuf.ResponseMessage {
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

  public var igpPublicKey: String {
    get {return _storage._igpPublicKey}
    set {_uniqueStorage()._igpPublicKey = newValue}
  }

  public var igpSymmetricKeyLength: Int32 {
    get {return _storage._igpSymmetricKeyLength}
    set {_uniqueStorage()._igpSymmetricKeyLength = newValue}
  }

  public var igpHeartbeatInterval: Int32 {
    get {return _storage._igpHeartbeatInterval}
    set {_uniqueStorage()._igpHeartbeatInterval = newValue}
  }

  public var igpPrimaryNodeName: String {
    get {return _storage._igpPrimaryNodeName}
    set {_uniqueStorage()._igpPrimaryNodeName = newValue}
  }

  public var igpSecondaryChunkSize: Int32 {
    get {return _storage._igpSecondaryChunkSize}
    set {_uniqueStorage()._igpSecondaryChunkSize = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPConnectionSymmetricKey: SwiftProtobuf.RequestMessage {
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

  public var igpSymmetricKey: Data {
    get {return _storage._igpSymmetricKey}
    set {_uniqueStorage()._igpSymmetricKey = newValue}
  }

  public var igpVersion: Int32 {
    get {return _storage._igpVersion}
    set {_uniqueStorage()._igpVersion = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPConnectionSymmetricKeyResponse: SwiftProtobuf.ResponseMessage {
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

  public var igpStatus: IGPConnectionSymmetricKeyResponse.IGPStatus {
    get {return _storage._igpStatus}
    set {_uniqueStorage()._igpStatus = newValue}
  }

  public var igpSymmetricMethod: String {
    get {return _storage._igpSymmetricMethod}
    set {_uniqueStorage()._igpSymmetricMethod = newValue}
  }

  public var igpSymmetricIvSize: Int32 {
    get {return _storage._igpSymmetricIvSize}
    set {_uniqueStorage()._igpSymmetricIvSize = newValue}
  }

  public var igpSecurityIssue: Bool {
    get {return _storage._igpSecurityIssue}
    set {_uniqueStorage()._igpSecurityIssue = newValue}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum IGPStatus: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case rejected // = 0
    case accepted // = 1
    case UNRECOGNIZED(Int)

    public init() {
      self = .rejected
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .rejected
      case 1: self = .accepted
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .rejected: return 0
      case .accepted: return 1
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension IGPConnectionSymmetricKeyResponse.IGPStatus: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [IGPConnectionSymmetricKeyResponse.IGPStatus] = [
    .rejected,
    .accepted,
  ]
}

#endif  // swift(>=4.2)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPConnectionSecuringResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPConnectionSecuringResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_public_key"),
    3: .standard(proto: "IGP_symmetric_key_length"),
    4: .standard(proto: "IGP_heartbeat_interval"),
    5: .standard(proto: "IGP_primary_node_name"),
    6: .standard(proto: "IGP_secondary_chunk_size"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpPublicKey: String = String()
    var _igpSymmetricKeyLength: Int32 = 0
    var _igpHeartbeatInterval: Int32 = 0
    var _igpPrimaryNodeName: String = String()
    var _igpSecondaryChunkSize: Int32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpPublicKey = source._igpPublicKey
      _igpSymmetricKeyLength = source._igpSymmetricKeyLength
      _igpHeartbeatInterval = source._igpHeartbeatInterval
      _igpPrimaryNodeName = source._igpPrimaryNodeName
      _igpSecondaryChunkSize = source._igpSecondaryChunkSize
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
        case 2: try decoder.decodeSingularStringField(value: &_storage._igpPublicKey)
        case 3: try decoder.decodeSingularInt32Field(value: &_storage._igpSymmetricKeyLength)
        case 4: try decoder.decodeSingularInt32Field(value: &_storage._igpHeartbeatInterval)
        case 5: try decoder.decodeSingularStringField(value: &_storage._igpPrimaryNodeName)
        case 6: try decoder.decodeSingularInt32Field(value: &_storage._igpSecondaryChunkSize)
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
      if !_storage._igpPublicKey.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpPublicKey, fieldNumber: 2)
      }
      if _storage._igpSymmetricKeyLength != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpSymmetricKeyLength, fieldNumber: 3)
      }
      if _storage._igpHeartbeatInterval != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpHeartbeatInterval, fieldNumber: 4)
      }
      if !_storage._igpPrimaryNodeName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpPrimaryNodeName, fieldNumber: 5)
      }
      if _storage._igpSecondaryChunkSize != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpSecondaryChunkSize, fieldNumber: 6)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPConnectionSecuringResponse, rhs: IGPConnectionSecuringResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpResponse != rhs_storage._igpResponse {return false}
        if _storage._igpPublicKey != rhs_storage._igpPublicKey {return false}
        if _storage._igpSymmetricKeyLength != rhs_storage._igpSymmetricKeyLength {return false}
        if _storage._igpHeartbeatInterval != rhs_storage._igpHeartbeatInterval {return false}
        if _storage._igpPrimaryNodeName != rhs_storage._igpPrimaryNodeName {return false}
        if _storage._igpSecondaryChunkSize != rhs_storage._igpSecondaryChunkSize {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPConnectionSymmetricKey: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPConnectionSymmetricKey"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_symmetric_key"),
    3: .standard(proto: "IGP_version"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpSymmetricKey: Data = SwiftProtobuf.Internal.emptyData
    var _igpVersion: Int32 = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpSymmetricKey = source._igpSymmetricKey
      _igpVersion = source._igpVersion
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
        case 2: try decoder.decodeSingularBytesField(value: &_storage._igpSymmetricKey)
        case 3: try decoder.decodeSingularInt32Field(value: &_storage._igpVersion)
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
      if !_storage._igpSymmetricKey.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._igpSymmetricKey, fieldNumber: 2)
      }
      if _storage._igpVersion != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpVersion, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPConnectionSymmetricKey, rhs: IGPConnectionSymmetricKey) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpRequest != rhs_storage._igpRequest {return false}
        if _storage._igpSymmetricKey != rhs_storage._igpSymmetricKey {return false}
        if _storage._igpVersion != rhs_storage._igpVersion {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPConnectionSymmetricKeyResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPConnectionSymmetricKeyResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_status"),
    3: .standard(proto: "IGP_symmetric_method"),
    4: .standard(proto: "IGP_symmetric_iv_size"),
    5: .standard(proto: "IGP_security_issue"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpStatus: IGPConnectionSymmetricKeyResponse.IGPStatus = .rejected
    var _igpSymmetricMethod: String = String()
    var _igpSymmetricIvSize: Int32 = 0
    var _igpSecurityIssue: Bool = false

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpStatus = source._igpStatus
      _igpSymmetricMethod = source._igpSymmetricMethod
      _igpSymmetricIvSize = source._igpSymmetricIvSize
      _igpSecurityIssue = source._igpSecurityIssue
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
        case 2: try decoder.decodeSingularEnumField(value: &_storage._igpStatus)
        case 3: try decoder.decodeSingularStringField(value: &_storage._igpSymmetricMethod)
        case 4: try decoder.decodeSingularInt32Field(value: &_storage._igpSymmetricIvSize)
        case 5: try decoder.decodeSingularBoolField(value: &_storage._igpSecurityIssue)
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
      if _storage._igpStatus != .rejected {
        try visitor.visitSingularEnumField(value: _storage._igpStatus, fieldNumber: 2)
      }
      if !_storage._igpSymmetricMethod.isEmpty {
        try visitor.visitSingularStringField(value: _storage._igpSymmetricMethod, fieldNumber: 3)
      }
      if _storage._igpSymmetricIvSize != 0 {
        try visitor.visitSingularInt32Field(value: _storage._igpSymmetricIvSize, fieldNumber: 4)
      }
      if _storage._igpSecurityIssue != false {
        try visitor.visitSingularBoolField(value: _storage._igpSecurityIssue, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPConnectionSymmetricKeyResponse, rhs: IGPConnectionSymmetricKeyResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpResponse != rhs_storage._igpResponse {return false}
        if _storage._igpStatus != rhs_storage._igpStatus {return false}
        if _storage._igpSymmetricMethod != rhs_storage._igpSymmetricMethod {return false}
        if _storage._igpSymmetricIvSize != rhs_storage._igpSymmetricIvSize {return false}
        if _storage._igpSecurityIssue != rhs_storage._igpSecurityIssue {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPConnectionSymmetricKeyResponse.IGPStatus: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "REJECTED"),
    1: .same(proto: "ACCEPTED"),
  ]
}
