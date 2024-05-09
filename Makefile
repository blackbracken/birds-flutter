.PHONY: format
format:
	dart fix --apply
	dart format lib

.PHONY: l10n
l10n:
	flutter gen-l10n

.PHONY: buildrunner
buildrunner:
	dart run build_runner build --delete-conflicting-outputs