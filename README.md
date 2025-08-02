# liferoulette

simplifying life at the click of a button, this app automates the boring process of responding to emails using generative AI. This, however, comes at a price, as there is always a 1/6 chance of the email you send being dangerous, unprofessional, insulting, or downright incriminating

## Team Name
team lead: Muhammed Shamil

## project description:
the system works by simulating a six chambered revolver, resetting when it encounters the bullet. on encountering the bullet, the backend send malicious, insulting and dangerous email, guaranteed to get you fired from your job (or you get your money back). The app uses osint tools to ensure the insults are as scathing and as personal as possible, meaning, the email is not just AI-generated, for peak disrespect, but is also highly personalised.

## the problem
people are too connected these day, many people still personally respond to emails, like a monkey from the stone age

## the solution
to make emails less boring, we implement the russian roulette feature, ensuring that at every click of the button, you are on the edge of your seats (as opposed to being bored out of your minds). If you win, your prize is that you get to sleep in, and relax, and go on with your life. If you lose......

# Technical Details

## technologies used:
flutter
expressjs
node.js
sherlock (osint tool)

# Implementation
the flutter app consists of a single button, that signals the server when pressed. On calling the route, the server first checks your inboxes for unread mail, and then runs teh extract function, to get information about a person from his email, username, firstname, and lastname. This information is used to scrape social media sites (here, instagram) to get a profile of the person responded to. This scraped data is fed into an llm, and a revolver chamber is spun. if a blank is reached, the llm responds with a professional email. If a bullet is reached, the model uses the information fed to personalise an insulting email.

## Installation
use the app-release.apk file to install it on android devices, or compile your own. Then, run the express server locally. Then, create a file .env file in the backend, with the fields client_id, client_secret,redirect_uri,refresh_token,ig_username,ig_password,  openrouter_api_key,email_user,email_pass
populate teh above fields appropriately. 

## Run
in the backend, 
npm run start:dev

in the frontend,
open the app, or

navigate to the folder, and do
flutter run

## screenshots

![screenshot1](/Screenshot 2025-08-02 071410.png)
