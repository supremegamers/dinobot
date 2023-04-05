# Gitpod Community Discord Bot

This repo contains the code that runs the Gitpod Community Discord Bot.

Community contribuitions are welcome! 🧡 Please create an issue and open a Gitpod workspace from that context.

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/gitpod-io/optimus)

# Contributing

You wanna contribute!? That sounds awesome! Thank you for taking the step to contribute towards this project :)

## Getting started

> Creating the Bot application on Discord's dev portal
- Login on https://discord.com/developers/applications
- Create a new app by clicking on `New Application` on the top right
- Inside your bot page, click on 🧩 `Bot` from the left sidebar and then `Add Bot` button
    - In the same page, toggle on the following options: `Presence Intent`, `Server Members Intent` and `Message Content Intent`
- Go to **OAuth2 > URL Generator** from your left sidebar
    - Tick `Scopes: bot, application.commands` and `Bot permissions: Adminstrator`. It should look like below:
    ![OAuth2 example](/.assets/oauth2_example.png)
    - Scroll to the bottom of this page and copy paste the **GENERATED-URL** into your browser tab to add the bot to a discord server. I recommend creating a new Discord server for bot development perposes.

> Running the BOT from Gitpod

- Grab the token from your 🧩 `Bot` page on discord dev portal. You might need to reset it to see.
![bot token](/.assets/bot_token_example.png)
- Grab the **Application ID** from the `General Information` section in your left sidebar
- Update the channel IDs from https://github.com/gitpod-io/optimus/blob/a7d82011b6334d3bc25404b3e4685fc09ff4f35b/src/event/questions_thread.rs#L8 for question placeholders (This process will be simplified once we close https://github.com/gitpod-io/optimus/issues/13)
    - You can get IDs by right-clicking on your desired question channels on your dev server.
- In Gitpod terminal, run the BOT in the following manner:
```bash
echo bot_token=YOUR_TOKEN_HERE app_id=YOUR_APPID_HERE | cargo run
```

### Meilisearch and GitHub integration

Some features use Meilisearch and GitHub API.

You can pass their credentials as well:

```bash
echo bot_token=YOUR_TOKEN_HERE app_id=YOUR_APPID_HERE github_token=YOUR_GITHUB_TOKEN_HERE meilisearch_api_key=YOUR_MEILISEARCH_API_KEY_HERE | cargo run
```

Note: This part is very much undocumented, will be done soon.
