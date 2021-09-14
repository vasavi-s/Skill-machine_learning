import speech_recognition as sr
import os
import wikipedia
import datetime 
from gtts import gTTs 
import random
import calendar
import warnings
warnings.filterwarnings('ignore')
def recordAudio():
    r =sr.Recognizer()
    with sr.Microhphone() as source:
        print("say somthing")
        audio = r.listen(source)

    data =''
    
    try:
        data = r.recognize_google(audio)
        print("You said: "+data)
    except sr.UnknownValueError:
        print("Google Speech Recognition could not understand the audio, unknown error.")
    except sr.RequestError as e:
        print("Request results from Google Speech Recognition Service error " + e)
    return data

recordAudio()