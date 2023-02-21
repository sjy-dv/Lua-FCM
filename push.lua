local http = require("socket.http")
local ltn12 = require("ltn12")
local json = require("json")

local key_file_path = "/fcm-key.txt"

local server_key = io.open(key_file_path):read("*l")

local fcm_url = "https://fcm.googleapis.com/fcm/send"

local push_token = "your-push-token-here"
local message = {
  data = {
    title = "Hello, World!",
    body = "This is a test message from Lua",
  },
  to = push_token,
}


local message_json = json.encode(message)


local headers = {
  ["Authorization"] = "key=" .. server_key,
  ["Content-Type"] = "application/json",
  ["Content-Length"] = tostring(#message_json),
}

local response_body = {}
local _, response_status = http.request({
  url = fcm_url,
  method = "POST",
  headers = headers,
  source = ltn12.source.string(message_json),
  sink = ltn12.sink.table(response_body),
})


if response_status ~= 200 then
  print("Error sending push notification:", response_status)
else
  print("Push notification sent successfully")
end
