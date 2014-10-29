hivewing-web
============

The webserver for Hivewing.com / .io

== PUMA Server
https://www.digitalocean.com/community/tutorials/how-to-set-up-zero-downtime-rails-deploys-using-puma-and-foreman

=======

Beekepers (are Users)  and they have an "Apiary".

"Apiaries" do not have names, but have an owner, and "own" "Hives".

"Hives" have names, and contain a repo "worker images" - of which has revisions assigned to workers.
"Hives" can have any number of "helpers" - other Beekeepers assigned to help with this hive. They all have roles (owner, manager) ? TBD.
"Hives" have "frames" which are groupings of "Workers"  - this is tagging , so a worker can live in many frames.

"Workers" have a configuration hash.
"Workers" have a revision of an image
"Workers" configuration can be updated by the UI (all workers in a hive, frame, or individually).

=======

The webpage should have an endpoint where the hivewing enabled device is redirected to.
'www.hivewing.io / workers / new / XXXXXXXXXXXXXXXXXXXX'
(can have a user_auth_token and a hive id -- for automated deployments - the system can hit that URL directly).

That is going to be a place where we either add it to the logged in user's apiary, or it gets added to a hive/apiary automagically.
