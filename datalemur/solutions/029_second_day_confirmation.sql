SELECT user_id
FROM 
  emails
  LEFT JOIN texts ON emails.email_id = texts.email_id
WHERE 
  signup_action = 'Confirmed'
  AND action_date::DATE - signup_date::DATE = 1;