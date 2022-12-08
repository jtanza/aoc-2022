(ns aoc-2022.core
  (:gen-class)
  (:require
   [clojure.string :as str]
   [clojure.java.io :as io]))

(defn read-input
  [file]
  (slurp (io/resource file)))

(defn find-start
  [stream]
  (str/join (first (filter #(apply distinct? %) (partition 4 1 stream)))))

(defn day-six
  [input]
  (+ 4 (str/index-of input (find-start input))))

(defn -main
  [& args]
  (println (day-six (read-input "six.txt"))))
