SELECT
ROUND(
  (SELECT COUNT(DISTINCT emails.email_id)::NUMERIC AS num_users
  FROM emails LEFT JOIN texts ON emails.email_id = texts.email_id
  WHERE texts.signup_action = 'Confirmed')
  /
  (SELECT COUNT(DISTINCT emails.email_id)::NUMERIC AS num_users
  FROM emails LEFT JOIN texts ON emails.email_id = texts.email_id)
, 2)