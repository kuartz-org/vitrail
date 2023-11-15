# Vitrail
Kuartz's Design system view components.

## Installation
Add this line to your application's Gemfile:

```ruby
gem "vitrail"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install vitrail
```

In `config/tailwind.config.js`,

- add before `module.exports`
    ```js
      const execSync = require('child_process').execSync
      const output = execSync('bundle show vitrail', { encoding: 'utf-8' })
    ```

- add as last item of `content`:
    ```js
      content: [
        // ...
        output.trim() + '/app/components/**/*.{erb,haml,html,rb}'
      ],
    ```


## Development

watch tailwindcss changes with:
```bash
tailwindcss_watch
```

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
