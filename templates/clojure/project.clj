(defproject <%= name %> "0.0.1"
  :description ""
  :dependencies
    [[org.clojure/clojure "1.8.0"]
     [http-kit "2.2.0"]
     [compojure "1.5.1"]]
  :main <%= name %>
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}})
