// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import ChatController from "./chat_controller"
application.register("chat", ChatController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import ResetChatController from "./reset_chat_controller"
application.register("reset-chat", ResetChatController)
