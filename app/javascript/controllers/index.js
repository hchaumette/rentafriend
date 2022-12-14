// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import CarouselController from "./carousel_controller"
application.register("carousel", CarouselController)

import CategoryActivityController from "./category_activity_controller"
application.register("category-activity", CategoryActivityController)

import FlatpickrActivityController from "./flatpickr_activity_controller"
application.register("flatpickr-activity", FlatpickrActivityController)

import FlatpickrController from "./flatpickr_controller"
application.register("flatpickr", FlatpickrController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import MapController from "./map_controller"
application.register("map", MapController)
