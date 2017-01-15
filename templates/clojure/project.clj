(defproject <%= name %> "0.0.1"
  :description ""
  :dependencies
    [[org.clojure/clojure "1.8.0"]
     [http-kit "2.2.0"]
     [compojure "1.5.1"]
     [org.clojure/core.match "0.3.0-alpha4"]
     [org.clojure/core.incubator "0.1.4"]]
  :main <%= name %>
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}
             :dev {:source-paths ["test"]
                   :dependencies [[midje "1.8.3"]
                                  [proto-repl "0.3.1"]]}})
