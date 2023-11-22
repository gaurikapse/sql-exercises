# Most Popular Client ID Among Users Using Video and Voice Calls

[Problem Source](https://platform.stratascratch.com/coding/2029-the-most-popular-client_id-among-users-using-video-and-voice-calls?code_type=1)
[Solution](solutions/010_most_popular_client_id.sql)

Select the most popular client_id based on a count of the number of users who have at least 50% of their events from the following list: 'video call received', 'video call sent', 'voice call received', 'voice call sent'.

fact_events
id time_id user_id customer_id client_id event_type event_id
1 2020-02-28 3668-QPYBK Sendit desktop message sent 3
2 2020-02-28 7892-POOKP Connectix mobile file received 2
3 2020-04-03 9763-GRSKD Zoomit desktop video call received 7
4 2020-04-02 9763-GRSKD Connectix desktop video call received 7

Expected Output:
client_id
desktop
