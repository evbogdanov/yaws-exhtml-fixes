## tl;dr

TEST COMPLETE, 12 ok, 4 failed of 16 test cases

## failed tests

test 1
```erlang
out(_Arg) ->
  EXHTML = {'!DOCTYPE'},
  {exhtml, EXHTML}.
```

tests 4-5 (self closing tags)
```erlang
out(_Arg) ->
  EXHTML = {'div', [], [
    {img, [{src, <<"http://hyber.org/icons/yaws_head.gif">>}, {alt, <<"yaws">>}]},
    {br},
    {input, [{type, <<"text">>}]}
  ]},
  {exhtml, EXHTML}.
```

test 16
```erlang
out(_Arg) ->
  XML = {'?xml', [{version, <<"1.0">>}, {encoding, <<"UTF-8">>}]},
  {exhtml, XML}.
```

## compiling
```
make compile
```

## running tests
```
make tests
```
