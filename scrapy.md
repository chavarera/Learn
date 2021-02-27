# Scrapy
Official documentaion : [Here](https://docs.scrapy.org)

## Week 1:
- Basic
  - python(large no of resoures available)
    - [Learn Python The Harder Way](https://learnpythonthehardway.org/python3/)
    - [Lean Python Subreddit](https://www.reddit.com/r/learnpython/wiki/index#wiki_new_to_python.3F)
    - [Learn Python step by step](https://github.com/chavarera/PythonScript)
    
- Scrapy at a glance
  - [Overview of scrapy framework](https://docs.scrapy.org/en/latest/intro/overview.html)
  
- Installation guide
  - [Installation Guide](https://docs.scrapy.org/en/latest/intro/install.html)
  - [Platform Specific](https://docs.scrapy.org/en/latest/intro/install.html#platform-specific-installation-notes) 
  
  To install Scrapy on Ubuntu (or Ubuntu-based) systems, you need to install these dependencies:
  ```sh
  sudo apt-get install python3 python3-dev python3-pip libxml2-dev libxslt1-dev zlib1g-dev libffi-dev libssl-dev
  ```
- Scrapy Tutorial
  - [Tutorial](https://docs.scrapy.org/en/latest/intro/tutorial.html)
  - Selector Tools
    - Chrome : [selectorGadget](https://chrome.google.com/webstore/detail/selectorgadget/mhjhnkcfbdhnjickkkdbjoemdmbfginb)
    - Firefox : [scrapeMate](https://addons.mozilla.org/en-US/firefox/addon/scrapemate/)
  - Crawl all urls using follow_all
    ```python
    yield from response.follow_all(css='ul.pager a', callback=self.parse)
    ```
