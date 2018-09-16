from twilio.rest import Client


def send_sms(message, to='+16478829710'):
    account_sid = 'AC317eca15865977f73aa512852906419b'
    auth_token = '95ac86e9fb5cee090e899bb33002d39c'
    client = Client(account_sid, auth_token)

    message = client.messages.create(
        from_='+16474901835',
        body=message,
        to=to
    )

    print(message.sid)


def make_call(url='https://grahamhoyes.com/sad.xml', to='+16478829710'):
    account_sid = 'AC317eca15865977f73aa512852906419b'
    auth_token = '95ac86e9fb5cee090e899bb33002d39c'
    client = Client(account_sid, auth_token)

    call = client.calls.create(
        url=url,
        to=to,
        from_='+16474901835'
    )

    print(call.sid)
