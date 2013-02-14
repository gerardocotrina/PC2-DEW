require 'lastfm'

lastfm = Lastfm.new('1073ec3af1e01ed833c2304c37bfb3c7', 'is 27fdc2eb3ae9b83e654b360098c1f9b6')
token = lastfm.auth.get_token

# open 'http://www.last.fm/api/auth/?api_key=xxxxxxxxxxx&token=xxxxxxxx' and grant the application

lastfm.session = lastfm.auth.get_session(:token => token)['key']

lastfm.track.love(:artist => 'Hujiko Pro', :track => 'acid acid 7riddim')
lastfm.track.scrobble(:artist => 'Hujiko Pro', :track => 'acid acid 7riddim')
lastfm.track.update_now_playing(:artist => 'Hujiko Pro', :track => 'acid acid 7riddim')

# deprecated style
lastfm.track.love('Hujiko Pro', 'acid acid 7riddim')