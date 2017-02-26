(defproject <%= name %> "0.1.0"
  :dependencies [[org.clojure/clojure "1.8.0"]
                 [org.clojure/clojurescript "1.9.229"]
                 [reagent "0.6.0"]
                 [prismatic/schema "1.1.3"]]
  :plugins [[lein-figwheel "0.5.8"]]
  :source-paths ["src/server" "src/domain"]
  :main <%= name %>.server
  :clean-targets [:target-path "out"]
  :cljsbuild
  { :builds [{:id "dev"
              :source-paths ["src/client" "src/domain"]
              :figwheel true
              :compiler
                {:main "<%= name %>.client"
                 :asset-path "cljs/out"
                 :output-to  "public/cljs/main.js"
                 :output-dir "public/cljs/out"}}]}
  :figwheel
  { :css-dirs ["public/css"]})
