githooks:
	curl -s -S -L -f https://libs.solicity-agency.com/githooks/pre-commit -z ./.git/hooks/pre-commit -o pre-commit.tmp && mv -f pre-commit.tmp ./.git/hooks/pre-commit 2>/dev/null || rm -f pre-commit.tmp ./.git/hooks/pre-commit
	chmod 744 .git/hooks/pre-commit