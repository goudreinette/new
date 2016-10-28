(ns <%= name %> 
 (:use [compojure.route]
       [compojure.core]
       [org.httpkit.server]))

(defroutes my-routes
 (GET "/" [] "Hello World!"))

(defn -main []
 (run-server my-routes {:port 8080}))

