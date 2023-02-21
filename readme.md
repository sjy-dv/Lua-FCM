The Lua script I provided above for sending a Firebase Cloud Messaging (FCM) push notification has several merits that make it a good solution:

1. Simple and concise: The script is relatively short and easy to understand, with clear comments explaining each step of the process. It uses standard Lua libraries and FCM API to send push notifications, without requiring any external dependencies.

2. Flexible and customizable: The script allows you to customize the push notification message and target device by modifying the message payload and push token variables. You can easily modify the message payload to include additional fields, such as custom data or notification options.

3. Secure and reliable: The script uses secure HTTPS communication and the FCM API to send push notifications, which ensures that the messages are delivered to the intended device and not intercepted by a third party. It also handles error responses and checks the response status to ensure that the message was sent successfully.

4. Key file support: As I mentioned earlier, the script supports storing the FCM server key in a separate file, which makes it easier to manage and keep the key confidential. This is a best practice for managing secrets and can help prevent accidental exposure of the key.

Overall, the Lua script provides a lightweight and effective solution for sending push notifications using the FCM API, with a balance between simplicity and flexibility.

And you can use Lua serverless with Knative, etc.