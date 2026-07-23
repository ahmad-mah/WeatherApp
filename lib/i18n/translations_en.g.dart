///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final Translations$app$en app = Translations$app$en.internal(_root);
	late final Translations$home$en home = Translations$home$en.internal(_root);
	late final Translations$failure$en failure = Translations$failure$en.internal(_root);
}

// Path: app
class Translations$app$en {
	Translations$app$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Weather'
	String get title => 'Weather';
}

// Path: home
class Translations$home$en {
	Translations$home$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Hello World!'
	String get hello => 'Hello World!';

	late final Translations$home$searchField$en searchField = Translations$home$searchField$en.internal(_root);
}

// Path: failure
class Translations$failure$en {
	Translations$failure$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Location services are disabled. Please enable GPS.'
	String get serviceDisabled => 'Location services are disabled. Please enable GPS.';

	/// en: 'Location permission was denied.'
	String get permissionDenied => 'Location permission was denied.';

	/// en: 'Location permission is permanently denied. Please enable it in settings.'
	String get permissionDeniedForever => 'Location permission is permanently denied. Please enable it in settings.';

	/// en: 'No internet connection.'
	String get noInternet => 'No internet connection.';

	/// en: 'Request timed out. Please try again.'
	String get timeout => 'Request timed out. Please try again.';

	/// en: 'No cached data available.'
	String get cache => 'No cached data available.';

	/// en: 'City not found.'
	String get cityNotFound => 'City not found.';

	/// en: 'Something went wrong.'
	String get unknown => 'Something went wrong.';
}

// Path: home.searchField
class Translations$home$searchField$en {
	Translations$home$searchField$en.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Enter city name'
	String get hint => 'Enter city name';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'app.title' => 'Weather',
			'home.hello' => 'Hello World!',
			'home.searchField.hint' => 'Enter city name',
			'failure.serviceDisabled' => 'Location services are disabled. Please enable GPS.',
			'failure.permissionDenied' => 'Location permission was denied.',
			'failure.permissionDeniedForever' => 'Location permission is permanently denied. Please enable it in settings.',
			'failure.noInternet' => 'No internet connection.',
			'failure.timeout' => 'Request timed out. Please try again.',
			'failure.cache' => 'No cached data available.',
			'failure.cityNotFound' => 'City not found.',
			'failure.unknown' => 'Something went wrong.',
			_ => null,
		};
	}
}
