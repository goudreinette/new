(ns <%= name %>.client
  (:require [reagent.core :as r]))

(def model (r/atom 0))

(defn app [params]
  [:h1 "Hello, World"])

(r/render [app] (.querySelector js/document "#app"))
