#!/usr/bin/python3
'''
Module for outputting lastfm scrobbling to polybar
'''
import requests
import time
import os
import re

def parse_song_name(song_name):
    '''
    Used to remove feats and extra long info after brackets
    '''
    if '(' in song_name or '[' in song_name:
        return re.split(r'\[|\(', song_name)[0].rstrip(' ')+' ...'

    else:
        return song_name

class NowPlaying(object):
    '''
    Prints song played on lastfm account every 5 seconds, used for polybar
    '''
    def __init__(self, API_KEY, USER):
        '''
        Create all the variables
        '''
        self.API_KEY = API_KEY
        self.USER = USER
        self.base_url ='https://ws.audioscrobbler.com/2.0/?method=user.getrecenttracks'
        self.parameters = {
        'api_key':    API_KEY,
        'format':     'json',
        'limit':      '1',
        'nowplaying': 'true',
        'user':       USER}

    def get_song_json(self):
        '''
        Creates local variable track with all info from the song
        '''
        self.track = requests.get(self.base_url, self.parameters).json()['recenttracks']['track'][0]
        return
    
    def print_string(self):
        '''
        Prints the output as string
        '''
        print('🎧 %s - %s' % (self.track['artist']['#text'], parse_song_name( self.track['name'])), flush=True)

    def run(self):
        '''
        Prints the output every 5 seconds
        '''
        while True:
            try:
                self.get_song_json()
                self.print_string()
            except:
                print('Error', flush=True)
            time.sleep(5)

if __name__ == "__main__":
    C = NowPlaying(os.environ['LASTFM_API'], os.environ['LASTFM_USER'])
    C.run()
