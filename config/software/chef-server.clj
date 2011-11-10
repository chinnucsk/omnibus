;;
;; Author:: Adam Jacob (<adam@opscode.com>)
;; Author:: Christopher Brown (<cb@opscode.com>)
;; Copyright:: Copyright (c) 2010 Opscode, Inc.
;; License:: Apache License, Version 2.0
;;
;; Licensed under the Apache License, Version 2.0 (the "License");
;; you may not use this file except in compliance with the License.
;; You may obtain a copy of the License at
;; 
;;     http://www.apache.org/licenses/LICENSE-2.0
;; 
;; Unless required by applicable law or agreed to in writing, software
;; distributed under the License is distributed on an "AS IS" BASIS,
;; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;; See the License for the specific language governing permissions and
;; limitations under the License.
;;

(software "chef-server" :source "chef"
          :steps [{:command "/opt/opscode/embedded/bin/gem"
                   :args ["install" "chef-server" "-n" "/opt/opscode/bin"
                          "--no-rdoc" "--no-ri"
                          "--" "--with-xml2-include=/opt/opscode/embedded/include/libxml2"
                          "--with-xml2-lib=/opt/opscode/embedded/lib"]}
                  {:command "/opt/opscode/embedded/bin/gem"
                   :args ["install" "merb-core" "merb-assets" "merb-helpers" "merb-param-protection"                                                              ;; base common
                          "mixlib-authentication" "dep_selector" "uuidtools" "thin" "json" "treetop"                                                              ;; + chef-server-api
                          "merb-haml" "haml" "ruby-openid" "coderay"                                                                                              ;; + chef-server-webui
                          "mixlib-log" "amqp" "eventmachine" "em-http-request" "yajl-ruby" "bunny" "fast_xs"                                                      ;; + chef-expander
                          "-n" "/opt/opscode/bin"
                          "--no-rdoc" "--no-ri"
                          "--" "--with-xml2-include=/opt/opscode/embedded/include/libxml2"
                          "--with-xml2-lib=/opt/opscode/embedded/lib"]}
                  {:command "chown"
                   :args ["-R" (cond
                                (is-os? "darwin")
                                "root:wheel"
                                true "root:root") "/opt/opscode"]}])



