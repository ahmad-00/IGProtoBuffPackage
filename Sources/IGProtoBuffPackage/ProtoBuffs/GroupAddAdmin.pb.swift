// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: GroupAddAdmin.proto
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

public struct IGPGroupAddAdmin: SwiftProtobuf.RequestMessage {
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

  public var igpRoomID: Int64 {
    get {return _storage._igpRoomID}
    set {_uniqueStorage()._igpRoomID = newValue}
  }

  public var igpMemberID: Int64 {
    get {return _storage._igpMemberID}
    set {_uniqueStorage()._igpMemberID = newValue}
  }

  public var igpPermission: IGPGroupAddAdmin.IGPAdminRights {
    get {return _storage._igpPermission ?? IGPGroupAddAdmin.IGPAdminRights()}
    set {_uniqueStorage()._igpPermission = newValue}
  }
  /// Returns true if `igpPermission` has been explicitly set.
  public var hasIgpPermission: Bool {return _storage._igpPermission != nil}
  /// Clears the value of `igpPermission`. Subsequent reads from it will return its default value.
  public mutating func clearIgpPermission() {_uniqueStorage()._igpPermission = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public struct IGPAdminRights: SwiftProtobuf.Message {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var igpModifyRoom: Bool = false

    public var igpDeleteMessage: Bool = false

    public var igpPinMessage: Bool = false

    public var igpAddMember: Bool = false

    public var igpBanMember: Bool = false

    public var igpGetMember: Bool = false

    public var igpAddAdmin: Bool = false

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

public struct IGPGroupAddAdminResponse: SwiftProtobuf.ResponseMessage {
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

  public var igpRoomID: Int64 {
    get {return _storage._igpRoomID}
    set {_uniqueStorage()._igpRoomID = newValue}
  }

  public var igpMemberID: Int64 {
    get {return _storage._igpMemberID}
    set {_uniqueStorage()._igpMemberID = newValue}
  }

  public var igpPermission: IGPGroupAddAdmin.IGPAdminRights {
    get {return _storage._igpPermission ?? IGPGroupAddAdmin.IGPAdminRights()}
    set {_uniqueStorage()._igpPermission = newValue}
  }
  /// Returns true if `igpPermission` has been explicitly set.
  public var hasIgpPermission: Bool {return _storage._igpPermission != nil}
  /// Clears the value of `igpPermission`. Subsequent reads from it will return its default value.
  public mutating func clearIgpPermission() {_uniqueStorage()._igpPermission = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension IGPGroupAddAdmin: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPGroupAddAdmin"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_request"),
    2: .standard(proto: "IGP_room_id"),
    3: .standard(proto: "IGP_member_id"),
    4: .standard(proto: "IGP_permission"),
  ]

  fileprivate class _StorageClass {
    var _igpRequest: IGPRequest? = nil
    var _igpRoomID: Int64 = 0
    var _igpMemberID: Int64 = 0
    var _igpPermission: IGPGroupAddAdmin.IGPAdminRights? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpRequest = source._igpRequest
      _igpRoomID = source._igpRoomID
      _igpMemberID = source._igpMemberID
      _igpPermission = source._igpPermission
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
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpRoomID)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._igpMemberID)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._igpPermission)
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
      if _storage._igpRoomID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpRoomID, fieldNumber: 2)
      }
      if _storage._igpMemberID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpMemberID, fieldNumber: 3)
      }
      if let v = _storage._igpPermission {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPGroupAddAdmin, rhs: IGPGroupAddAdmin) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpRequest != rhs_storage._igpRequest {return false}
        if _storage._igpRoomID != rhs_storage._igpRoomID {return false}
        if _storage._igpMemberID != rhs_storage._igpMemberID {return false}
        if _storage._igpPermission != rhs_storage._igpPermission {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPGroupAddAdmin.IGPAdminRights: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = IGPGroupAddAdmin.protoMessageName + ".IGPAdminRights"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_modify_room"),
    2: .standard(proto: "IGP_delete_message"),
    3: .standard(proto: "IGP_pin_message"),
    4: .standard(proto: "IGP_add_member"),
    5: .standard(proto: "IGP_ban_member"),
    6: .standard(proto: "IGP_get_member"),
    7: .standard(proto: "IGP_add_admin"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularBoolField(value: &self.igpModifyRoom)
      case 2: try decoder.decodeSingularBoolField(value: &self.igpDeleteMessage)
      case 3: try decoder.decodeSingularBoolField(value: &self.igpPinMessage)
      case 4: try decoder.decodeSingularBoolField(value: &self.igpAddMember)
      case 5: try decoder.decodeSingularBoolField(value: &self.igpBanMember)
      case 6: try decoder.decodeSingularBoolField(value: &self.igpGetMember)
      case 7: try decoder.decodeSingularBoolField(value: &self.igpAddAdmin)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.igpModifyRoom != false {
      try visitor.visitSingularBoolField(value: self.igpModifyRoom, fieldNumber: 1)
    }
    if self.igpDeleteMessage != false {
      try visitor.visitSingularBoolField(value: self.igpDeleteMessage, fieldNumber: 2)
    }
    if self.igpPinMessage != false {
      try visitor.visitSingularBoolField(value: self.igpPinMessage, fieldNumber: 3)
    }
    if self.igpAddMember != false {
      try visitor.visitSingularBoolField(value: self.igpAddMember, fieldNumber: 4)
    }
    if self.igpBanMember != false {
      try visitor.visitSingularBoolField(value: self.igpBanMember, fieldNumber: 5)
    }
    if self.igpGetMember != false {
      try visitor.visitSingularBoolField(value: self.igpGetMember, fieldNumber: 6)
    }
    if self.igpAddAdmin != false {
      try visitor.visitSingularBoolField(value: self.igpAddAdmin, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPGroupAddAdmin.IGPAdminRights, rhs: IGPGroupAddAdmin.IGPAdminRights) -> Bool {
    if lhs.igpModifyRoom != rhs.igpModifyRoom {return false}
    if lhs.igpDeleteMessage != rhs.igpDeleteMessage {return false}
    if lhs.igpPinMessage != rhs.igpPinMessage {return false}
    if lhs.igpAddMember != rhs.igpAddMember {return false}
    if lhs.igpBanMember != rhs.igpBanMember {return false}
    if lhs.igpGetMember != rhs.igpGetMember {return false}
    if lhs.igpAddAdmin != rhs.igpAddAdmin {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension IGPGroupAddAdminResponse: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = "IGPGroupAddAdminResponse"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "IGP_response"),
    2: .standard(proto: "IGP_room_id"),
    3: .standard(proto: "IGP_member_id"),
    4: .standard(proto: "IGP_permission"),
  ]

  fileprivate class _StorageClass {
    var _igpResponse: IGPResponse? = nil
    var _igpRoomID: Int64 = 0
    var _igpMemberID: Int64 = 0
    var _igpPermission: IGPGroupAddAdmin.IGPAdminRights? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _igpResponse = source._igpResponse
      _igpRoomID = source._igpRoomID
      _igpMemberID = source._igpMemberID
      _igpPermission = source._igpPermission
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
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._igpRoomID)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._igpMemberID)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._igpPermission)
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
      if _storage._igpRoomID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpRoomID, fieldNumber: 2)
      }
      if _storage._igpMemberID != 0 {
        try visitor.visitSingularInt64Field(value: _storage._igpMemberID, fieldNumber: 3)
      }
      if let v = _storage._igpPermission {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: IGPGroupAddAdminResponse, rhs: IGPGroupAddAdminResponse) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._igpResponse != rhs_storage._igpResponse {return false}
        if _storage._igpRoomID != rhs_storage._igpRoomID {return false}
        if _storage._igpMemberID != rhs_storage._igpMemberID {return false}
        if _storage._igpPermission != rhs_storage._igpPermission {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
