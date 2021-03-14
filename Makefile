# REV02 Sun 14 Mar 2021 16:34:51 WIB
# REV01 Fri 12 Mar 2021 13:42:23 WIB
# START Mon 15 Feb 2021 09:41:08 WIB

ALL: 001.md 002.md 003.md 004.md 005.md 006.md 007.md

001.md: 001.pmd
	python assets/scripts/includeScript.py < 001.pmd > 001.md

002.md: 002.pmd
	python assets/scripts/includeScript.py < 002.pmd > 002.md

003.md: 003.pmd
	python assets/scripts/includeScript.py < 003.pmd > 003.md

005.md: 005.pmd
	python assets/scripts/includeScript.py < 005.pmd > 005.md

006.md: 006.pmd
	python assets/scripts/includeScript.py < 006.pmd > 006.md

007.md: 007.pmd
	python assets/scripts/includeScript.py < 007.pmd > 007.md

004.md: 004.pmd _config.yml Gemfile _layouts/layout.html Makefile \
        _includes/navbar.html \
        _includes/footer.html _includes/head.html _includes/google-analytics.html \
	assets/css/style.css assets/scripts/includeScript.py 
	python assets/scripts/includeScript.py < 004.pmd > 004.md

.phony: ALL

