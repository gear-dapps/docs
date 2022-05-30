.PHONY: all clean open

all:
	@echo ──────────── Sync repos ───────────────────────
	@./scripts/sync.sh
	@echo ──────────── Build docs ───────────────────────
	@RUSTDOCFLAGS="--enable-index-page -Zunstable-options" cargo +nightly doc --workspace --no-deps

clean:
	@echo ──────────── Clean ────────────────────────────
	@rm -rvf target

open: all
	@cargo +nightly doc --workspace --no-deps --open
