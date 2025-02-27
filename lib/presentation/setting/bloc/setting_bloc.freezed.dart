// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id) selectSetting,
    required TResult Function(int id) selectTabPrinter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id)? selectSetting,
    TResult? Function(int id)? selectTabPrinter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id)? selectSetting,
    TResult Function(int id)? selectTabPrinter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectSetting value) selectSetting,
    required TResult Function(_SelectTabPrinter value) selectTabPrinter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectSetting value)? selectSetting,
    TResult? Function(_SelectTabPrinter value)? selectTabPrinter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectSetting value)? selectSetting,
    TResult Function(_SelectTabPrinter value)? selectTabPrinter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res, SettingEvent>;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res, $Val extends SettingEvent>
    implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SettingEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id) selectSetting,
    required TResult Function(int id) selectTabPrinter,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id)? selectSetting,
    TResult? Function(int id)? selectTabPrinter,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id)? selectSetting,
    TResult Function(int id)? selectTabPrinter,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectSetting value) selectSetting,
    required TResult Function(_SelectTabPrinter value) selectTabPrinter,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectSetting value)? selectSetting,
    TResult? Function(_SelectTabPrinter value)? selectTabPrinter,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectSetting value)? selectSetting,
    TResult Function(_SelectTabPrinter value)? selectTabPrinter,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SettingEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SelectSettingImplCopyWith<$Res> {
  factory _$$SelectSettingImplCopyWith(
          _$SelectSettingImpl value, $Res Function(_$SelectSettingImpl) then) =
      __$$SelectSettingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SelectSettingImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$SelectSettingImpl>
    implements _$$SelectSettingImplCopyWith<$Res> {
  __$$SelectSettingImplCopyWithImpl(
      _$SelectSettingImpl _value, $Res Function(_$SelectSettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SelectSettingImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectSettingImpl implements _SelectSetting {
  const _$SelectSettingImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SettingEvent.selectSetting(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectSettingImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectSettingImplCopyWith<_$SelectSettingImpl> get copyWith =>
      __$$SelectSettingImplCopyWithImpl<_$SelectSettingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id) selectSetting,
    required TResult Function(int id) selectTabPrinter,
  }) {
    return selectSetting(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id)? selectSetting,
    TResult? Function(int id)? selectTabPrinter,
  }) {
    return selectSetting?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id)? selectSetting,
    TResult Function(int id)? selectTabPrinter,
    required TResult orElse(),
  }) {
    if (selectSetting != null) {
      return selectSetting(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectSetting value) selectSetting,
    required TResult Function(_SelectTabPrinter value) selectTabPrinter,
  }) {
    return selectSetting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectSetting value)? selectSetting,
    TResult? Function(_SelectTabPrinter value)? selectTabPrinter,
  }) {
    return selectSetting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectSetting value)? selectSetting,
    TResult Function(_SelectTabPrinter value)? selectTabPrinter,
    required TResult orElse(),
  }) {
    if (selectSetting != null) {
      return selectSetting(this);
    }
    return orElse();
  }
}

abstract class _SelectSetting implements SettingEvent {
  const factory _SelectSetting(final int id) = _$SelectSettingImpl;

  int get id;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectSettingImplCopyWith<_$SelectSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectTabPrinterImplCopyWith<$Res> {
  factory _$$SelectTabPrinterImplCopyWith(_$SelectTabPrinterImpl value,
          $Res Function(_$SelectTabPrinterImpl) then) =
      __$$SelectTabPrinterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$SelectTabPrinterImplCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res, _$SelectTabPrinterImpl>
    implements _$$SelectTabPrinterImplCopyWith<$Res> {
  __$$SelectTabPrinterImplCopyWithImpl(_$SelectTabPrinterImpl _value,
      $Res Function(_$SelectTabPrinterImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SelectTabPrinterImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectTabPrinterImpl implements _SelectTabPrinter {
  const _$SelectTabPrinterImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SettingEvent.selectTabPrinter(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTabPrinterImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTabPrinterImplCopyWith<_$SelectTabPrinterImpl> get copyWith =>
      __$$SelectTabPrinterImplCopyWithImpl<_$SelectTabPrinterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id) selectSetting,
    required TResult Function(int id) selectTabPrinter,
  }) {
    return selectTabPrinter(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id)? selectSetting,
    TResult? Function(int id)? selectTabPrinter,
  }) {
    return selectTabPrinter?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id)? selectSetting,
    TResult Function(int id)? selectTabPrinter,
    required TResult orElse(),
  }) {
    if (selectTabPrinter != null) {
      return selectTabPrinter(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectSetting value) selectSetting,
    required TResult Function(_SelectTabPrinter value) selectTabPrinter,
  }) {
    return selectTabPrinter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SelectSetting value)? selectSetting,
    TResult? Function(_SelectTabPrinter value)? selectTabPrinter,
  }) {
    return selectTabPrinter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectSetting value)? selectSetting,
    TResult Function(_SelectTabPrinter value)? selectTabPrinter,
    required TResult orElse(),
  }) {
    if (selectTabPrinter != null) {
      return selectTabPrinter(this);
    }
    return orElse();
  }
}

abstract class _SelectTabPrinter implements SettingEvent {
  const factory _SelectTabPrinter(final int id) = _$SelectTabPrinterImpl;

  int get id;

  /// Create a copy of SettingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectTabPrinterImplCopyWith<_$SelectTabPrinterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SettingState {
  int get idMenu => throw _privateConstructorUsedError;
  int get idTabPrinter => throw _privateConstructorUsedError;
  List<String> get tabPrinterLabels => throw _privateConstructorUsedError;
  List<SettingMenuModel> get listSettingMenu =>
      throw _privateConstructorUsedError;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call(
      {int idMenu,
      int idTabPrinter,
      List<String> tabPrinterLabels,
      List<SettingMenuModel> listSettingMenu});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMenu = null,
    Object? idTabPrinter = null,
    Object? tabPrinterLabels = null,
    Object? listSettingMenu = null,
  }) {
    return _then(_value.copyWith(
      idMenu: null == idMenu
          ? _value.idMenu
          : idMenu // ignore: cast_nullable_to_non_nullable
              as int,
      idTabPrinter: null == idTabPrinter
          ? _value.idTabPrinter
          : idTabPrinter // ignore: cast_nullable_to_non_nullable
              as int,
      tabPrinterLabels: null == tabPrinterLabels
          ? _value.tabPrinterLabels
          : tabPrinterLabels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listSettingMenu: null == listSettingMenu
          ? _value.listSettingMenu
          : listSettingMenu // ignore: cast_nullable_to_non_nullable
              as List<SettingMenuModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingStateImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingStateImplCopyWith(
          _$SettingStateImpl value, $Res Function(_$SettingStateImpl) then) =
      __$$SettingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idMenu,
      int idTabPrinter,
      List<String> tabPrinterLabels,
      List<SettingMenuModel> listSettingMenu});
}

/// @nodoc
class __$$SettingStateImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingStateImpl>
    implements _$$SettingStateImplCopyWith<$Res> {
  __$$SettingStateImplCopyWithImpl(
      _$SettingStateImpl _value, $Res Function(_$SettingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idMenu = null,
    Object? idTabPrinter = null,
    Object? tabPrinterLabels = null,
    Object? listSettingMenu = null,
  }) {
    return _then(_$SettingStateImpl(
      idMenu: null == idMenu
          ? _value.idMenu
          : idMenu // ignore: cast_nullable_to_non_nullable
              as int,
      idTabPrinter: null == idTabPrinter
          ? _value.idTabPrinter
          : idTabPrinter // ignore: cast_nullable_to_non_nullable
              as int,
      tabPrinterLabels: null == tabPrinterLabels
          ? _value._tabPrinterLabels
          : tabPrinterLabels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listSettingMenu: null == listSettingMenu
          ? _value._listSettingMenu
          : listSettingMenu // ignore: cast_nullable_to_non_nullable
              as List<SettingMenuModel>,
    ));
  }
}

/// @nodoc

class _$SettingStateImpl implements _SettingState {
  const _$SettingStateImpl(
      {this.idMenu = 0,
      this.idTabPrinter = 0,
      final List<String> tabPrinterLabels = const [],
      final List<SettingMenuModel> listSettingMenu = const []})
      : _tabPrinterLabels = tabPrinterLabels,
        _listSettingMenu = listSettingMenu;

  @override
  @JsonKey()
  final int idMenu;
  @override
  @JsonKey()
  final int idTabPrinter;
  final List<String> _tabPrinterLabels;
  @override
  @JsonKey()
  List<String> get tabPrinterLabels {
    if (_tabPrinterLabels is EqualUnmodifiableListView)
      return _tabPrinterLabels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tabPrinterLabels);
  }

  final List<SettingMenuModel> _listSettingMenu;
  @override
  @JsonKey()
  List<SettingMenuModel> get listSettingMenu {
    if (_listSettingMenu is EqualUnmodifiableListView) return _listSettingMenu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listSettingMenu);
  }

  @override
  String toString() {
    return 'SettingState(idMenu: $idMenu, idTabPrinter: $idTabPrinter, tabPrinterLabels: $tabPrinterLabels, listSettingMenu: $listSettingMenu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingStateImpl &&
            (identical(other.idMenu, idMenu) || other.idMenu == idMenu) &&
            (identical(other.idTabPrinter, idTabPrinter) ||
                other.idTabPrinter == idTabPrinter) &&
            const DeepCollectionEquality()
                .equals(other._tabPrinterLabels, _tabPrinterLabels) &&
            const DeepCollectionEquality()
                .equals(other._listSettingMenu, _listSettingMenu));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      idMenu,
      idTabPrinter,
      const DeepCollectionEquality().hash(_tabPrinterLabels),
      const DeepCollectionEquality().hash(_listSettingMenu));

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      __$$SettingStateImplCopyWithImpl<_$SettingStateImpl>(this, _$identity);
}

abstract class _SettingState implements SettingState {
  const factory _SettingState(
      {final int idMenu,
      final int idTabPrinter,
      final List<String> tabPrinterLabels,
      final List<SettingMenuModel> listSettingMenu}) = _$SettingStateImpl;

  @override
  int get idMenu;
  @override
  int get idTabPrinter;
  @override
  List<String> get tabPrinterLabels;
  @override
  List<SettingMenuModel> get listSettingMenu;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingStateImplCopyWith<_$SettingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
