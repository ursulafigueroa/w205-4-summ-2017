import tweepy

consumer_key = "YNPmlGJhL3yTGuhpWc4opXTs9";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "3ZO23ZkQAOXjuTQWxExZB12VkcfvewgChIO4B8jDWA30BCuldL";
#eg: consumer_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token = "267707798-ITch5EOfaiK7DAM1Cs6BMM4gP4p0Faq58Oh1FkWJ";
#eg: access_token = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token_secret = "P7UzOJBZtxUEDd67XvaMj6jPFIwoMKeVf2AtL5qc48JiB";
#eg: access_token_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)
