curl --verbose "$(cat ./url)/api/graphql" -w '%{size_request} %{size_upload}' \
  -H "Large-Header:$(echo $(cat ./header-value))" \
  -H 'Connection: keep-alive' \
  -H 'accept: */*' \
  -H 'Language-Context: en' \
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.83 Safari/537.36' \
  -H 'content-type: application/json' \
  -H 'Origin: https://my.rotary.org' \
  -H 'Sec-Fetch-Site: same-site' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Referer: https://my.rotary.org/en/login' \
  -H 'Accept-Language: en-US,en;q=0.9,es;q=0.8' \
  -H 'Cookie: ApplicationGatewayAffinityCORS=9484d7697631080f8278a6e917e10b9d; ApplicationGatewayAffinity=9484d7697631080f8278a6e917e10b9d; _fbp=fb.1.1598985528049.1776250668; AMCVS_6E43BF115751AA767F000101%40AdobeOrg=1; __qca=P0-2100977737-1598985527944; s_cc=true; _ga=GA1.2.952514879.1598985579; _gid=GA1.2.1519181528.1598985579; .RIFBA.E5C67A1B-73F8-4465-BC33-FEA178637429=6FE2C75BB2F990D1424E6BDC898BC33783D71064EBB7B650B9EF4BCC93B1DFF87DF79FE5E46E813672837079B772F40C1A43B5C56B46E3E63810D9DB6B3CFBDDC6A21C7F572433A0EDB2CFFBF1CC4DEBD251E8E5C94A930D81A924566483E5C490EF68D3C7FB94D9214AC37BEF25536A77381AFF22D0E4432114C3B1F665D220FA4D9619DE5C5968249DE8A41F5BCE07B2A73CF34B5AC0C063B69AB74BB075C118D6B7DCF47EDF299F4F3CC81EEF02D92167987053891A7FD6B5D03965E53BE3571EAF6C2AA93804E5548993E1D3AED65BFB9B3646238BFDC05C7A59589958A3438E17CFE505D213CB94B1D5A00BBC9C2028EDAA8721C6EB9E51721906D7A6340C00EFDBF8406A9AC382359A619A920F3738F7A99980162E63D806661194523AB9BE381B8E9F66B5AB567E8B8BDC0C8A46AAE6D66657A481E05F6EEE6ADFE4F3780BEA54D0A57827342D81039F9324348597348A1597677BE28BAE25E219FC7AF604A05F92006622F19BC4A7E1DC73B001CF322E816C2CE26661121BC5C6A6A54FBD97088AB62CB3EC8CD8EA9C949B5118C1633FA854763D3782861CD2B68E5EA017054D0F5330F6F81E0A1B87BC554EA9D52FDBB8043A0E686E30131283F2977AABA13CD0CFD7A8969374CAD276AB623C8878D94E803A4A894D5A6FB95DB31D0BD4401E3221C6A2B36A4B18C195375FE2EF28789F893908EE76EC5B0CE9552566215CE4626F26F18F0AB0E1F1B11F5EAF8F98C29795B311ECE979F655ABD6865FCC8D2546676FEC6F4483CC3B9E4AE73B0A11BCD11D78BD800DC1F48A0DA41A5582E6A8636A24F98946D962E679A521A8B66254B13210002DE63391531F5047484A23FE6D1F49EA65AC022A6E032196D4B78A30801B11758B4FA1BC1A5A024428DAF6F8D46DEE28325F480BBAC0F9F586B4883F673A140404ECB39C42A77ABD3636E6CC78ED8A067103D84CCAF52CE02FC5294F0F46C4AD1F2C9B80B86C61C53B3731C9D41A9ABE319AA3CB099DB596EC591A112ADF62069BE0D2966EE376234CC82C3AD5369EE0966A0D9CB238824903DBB943EA0A0041AEE4A1FA878B7D8E03F0B7A8EB5DDF5E5A655A84B85A955A95F849FDEFDB55BCC52D48BB7D13444FF2A3600EE1C7C63B999862F790D7E41AEC1E8B4F174E6148A7ADFB4887E07907EB91852B2ACBE0256B170B33CC1A578E501EA1F23AC3EF33AF7DED34B0F9723B06C8516356D988C2E3E14D655E6DEAB3D027E444; s_sq=%5B%5BB%5D%5D; AMCV_6E43BF115751AA767F000101%40AdobeOrg=870038026%7CMCIDTS%7C18507%7CMCMID%7C67176462402997899761397784902670943681%7CMCAAMLH-1599680582%7C7%7CMCAAMB-1599680582%7C6G1ynYcLPuiQxYZrsz_pkqfLG9yMXBpb2zX5dvJdYQJzPXImdj0y%7CMCOPTOUT-1599082982s%7CNONE%7CMCSYNCSOP%7C411-18514%7CMCAID%7CNONE%7CvVersion%7C5.0.0; s_ips=150; AKA_A2=A; rid=s%3A44deeeb1-453c-43d7-8f4d-77cf9edc7e2a.hKK2AxTOmuB5yPs08Hr1qfLIW59qzVxGBk3Z42bxRog; s_tp=2696; s_ppv=my%2520rotary%2520-%2520my%2520rotary%2C6%2C6%2C150%2C1%2C17; RT="z=1&dm=rotary.org&si=fq4ciqzle05&ss=kelo3kci&sl=f&tt=6ab&obo=1"' \
  --data-binary '{"operationName":"AuthGetUser","variables":{},"query":"query AuthGetUser {\n  currentUser {\n    login\n    oktaId\n    individualId\n    currentSecurityQuestion\n    impersonatorId\n    impersonationExpiration\n    nfKey\n    profile {\n      firstName\n      lastName\n      __typename\n    }\n    __typename\n  }\n}\n"}' \
  --compressed
