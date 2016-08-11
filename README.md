# Brubeck

Brubeck is a [statsd](https://github.com/etsy/statsd)-compatible stats
aggregator written in C. The original can found at https://github.com/brubeck.

## What's different here?

GitHub folks don't seem to be interested in namespacing present in statsd, so this fork
implements it (kudos to [hzhang-cl](https://github.com/hzhang-cl)).

## Configuration

On top of regular brubeck configuration, this supports:

        ```
        {
          "type" : "carbon",
          "address" : "0.0.0.0",
          "port" : 2003,
          "frequency" : 10,
          "pickle: true,
          "namespacing": true,
          "legacy_namespace": false
        }
        ```
