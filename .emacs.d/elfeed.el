(setq elfeed-feeds
      '(
        ("http://rss.slashdot.org/Slashdot/slashdotMain" news tech)
        ("https://news.ycombinator.com/rss" news tech)
        ("https://www.smbc-comics.com/comic/rss" comic)
        ("http://feeds.feedburner.com/codinghorror" blog dev)
        ("https://krebsonsecurity.com/feed/" blog dev security)
        ("https://feeds.feedburner.com/niebezpiecznik/" tech security)
        )
      )
(setq elfeed-db-directory (concat user-emacs-directory "elfeed"))
