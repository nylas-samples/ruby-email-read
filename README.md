# ruby-email-read

This sample will show you to easily read your email with the Nylas Ruby SDK.

You can follow along step-by-step in our blog post ["How to Read Email Inbox Data with the Nylas Ruby SDK"](https://www.nylas.com/blog/how-to-read-email-inbox-data-with-nylas-ruby-sdk/).

## Setup

### System dependencies

- Ruby v3.x

### Gather environment variables

You'll need the following values:

```text
ACCESS_TOKEN =
CLIENT_ID =
CLIENT_SECRET =
```

Add the above values to a new `.env` file:

```bash
$ touch .env # Then add your env variables
```

### Install dependencies

```bash
$ gem install nylas
$ gem install dotenv
```

## Usage

Run the script using the `ruby` command:

```bash
$ ruby ReadEmail.rb
```

When your message is successfully sent, you'll get the following output in your terminal:

```text
[4/7/YYYY] Here's an email subject
[4/6/YYYY] Another subject
```

## Learn more

Visit our [Nylas Ruby SDK documentation](https://developer.nylas.com/docs/developer-tools/sdk/ruby-sdk/) to learn more.
