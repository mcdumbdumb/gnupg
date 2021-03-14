# REV01 Fri 12 Mar 13:42:23 WIB 2021
# START Mon 15 Feb 09:41:08 WIB 2021

ALL: 001.md 004.md

001.md: 001.pmd
	python assets/scripts/includeScript.py < 001.pmd > 001.md

004.md: 004.pmd _config.yml Gemfile _layouts/layout.html Makefile \
        _includes/navbar.html \
        _includes/footer.html _includes/head.html _includes/google-analytics.html \
	assets/css/style.css assets/scripts/includeScript.py 
	python assets/scripts/includeScript.py < 004.pmd > 004.md

.phony: ALL

