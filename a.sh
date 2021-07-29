#!/bin/bash

grep -rl 'nginx-02.com' ./ | xargs sed -i 's/nginx-02.com/nginx-02.com/g'
