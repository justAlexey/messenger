// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserRecord {

 String get userId; String get passwordHash;
/// Create a copy of UserRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRecordCopyWith<UserRecord> get copyWith => _$UserRecordCopyWithImpl<UserRecord>(this as UserRecord, _$identity);

  /// Serializes this UserRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as UserRecord;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRecord&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.passwordHash, _this.passwordHash) || other.passwordHash == _this.passwordHash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as UserRecord;
  return Object.hash(runtimeType,_this.userId,_this.passwordHash);
}

@override
String toString() {
  final _this = this as UserRecord;
  return 'UserRecord(userId: ${_this.userId}, passwordHash: ${_this.passwordHash})';
}


}

/// @nodoc
abstract mixin class $UserRecordCopyWith<$Res>  {
  factory $UserRecordCopyWith(UserRecord value, $Res Function(UserRecord) _then) = _$UserRecordCopyWithImpl;
@useResult
$Res call({
 String userId, String passwordHash
});




}
/// @nodoc
class _$UserRecordCopyWithImpl<$Res>
    implements $UserRecordCopyWith<$Res> {
  _$UserRecordCopyWithImpl(this._self, this._then);

  final UserRecord _self;
  final $Res Function(UserRecord) _then;

/// Create a copy of UserRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? passwordHash = null,}) {
  return _then(UserRecord(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,passwordHash: null == passwordHash ? _self.passwordHash : passwordHash // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserRecord].
extension UserRecordPatterns on UserRecord {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserRecord() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserRecord value)  $default,){
final _that = this;
switch (_that) {
case _UserRecord():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserRecord value)?  $default,){
final _that = this;
switch (_that) {
case _UserRecord() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String passwordHash)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserRecord() when $default != null:
return $default(_that.userId,_that.passwordHash);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String passwordHash)  $default,) {final _that = this;
switch (_that) {
case _UserRecord():
return $default(_that.userId,_that.passwordHash);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String passwordHash)?  $default,) {final _that = this;
switch (_that) {
case _UserRecord() when $default != null:
return $default(_that.userId,_that.passwordHash);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserRecord implements UserRecord {
   _UserRecord({required this.userId, required this.passwordHash});
  factory _UserRecord.fromJson(Map<String, dynamic> json) => _$UserRecordFromJson(json);

@override final  String userId;
@override final  String passwordHash;

/// Create a copy of UserRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRecordCopyWith<_UserRecord> get copyWith => __$UserRecordCopyWithImpl<_UserRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserRecordToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRecord&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.passwordHash, passwordHash) || other.passwordHash == passwordHash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,userId,passwordHash);
}

@override
String toString() {
    return 'UserRecord(userId: $userId, passwordHash: $passwordHash)';
}


}

/// @nodoc
abstract mixin class _$UserRecordCopyWith<$Res> implements $UserRecordCopyWith<$Res> {
  factory _$UserRecordCopyWith(_UserRecord value, $Res Function(_UserRecord) _then) = __$UserRecordCopyWithImpl;
@override @useResult
$Res call({
 String userId, String passwordHash
});




}
/// @nodoc
class __$UserRecordCopyWithImpl<$Res>
    implements _$UserRecordCopyWith<$Res> {
  __$UserRecordCopyWithImpl(this._self, this._then);

  final _UserRecord _self;
  final $Res Function(_UserRecord) _then;

/// Create a copy of UserRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? passwordHash = null,}) {
  return _then(_UserRecord(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,passwordHash: null == passwordHash ? _self.passwordHash : passwordHash // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
