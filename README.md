### This is to test requests with different size of a fake header

1. Clone this and `cd` to it.
2. Make `request.sh` executable:
  ```bash
    $ chmod +x ./request.sh
  ```
3. Change the request url in `url` and value of the `Large-Header` in `header-value`
  if necessary.
4. Issue `curl` request with `./request.sh`
