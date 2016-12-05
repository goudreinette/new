(defproject <%= name %> "0.1.0"
  :dependencies [[org.clojure/clojure "1.8.0"]
                 [org.clojure/clojurescript "1.9.229"]
                 [reagent "0.6.0"]]
  :plugins [[lein-figwheel "0.5.8"]]
  :clean-targets [:target-path "out"]
  :cljsbuild
  { :builds [{:id "dev"
              :source-paths ["src"]
              :figwheel true
              :compiler
                {:main "<%= name %>.core"
                 :asset-path "cljs/out"
                 :output-to  "public/cljs/main.js"
                 :output-dir "public/cljs/out"}}]}
  :figwheel
  { :css-dirs ["public/css"]})
