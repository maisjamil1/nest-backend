To run the backend :
### Step 1: Install Dependencies
Before you begin, ensure you have Node.js, Docker, and Yarn (or npm) installed on your machine.

### Step 2: Set Up Environment Variables
Create a .env file in the root of your project and define the following variables, feel free to check .env.example:
```
PORT=3333
DATABASE_URL="postgresql://postgres:123@localhost:5432/nestjs?schema=public"
AT_SECRET=27d693959e5fb7944ff11082adfbb372fa4f8ab87f17beb50094a65f78c41981
RT_SECRET=08b548af8451b908a4dd80cec3dccfc8a3043aac9862309ca65602fe591cdf8f

POSTGRES_USER=postgres
POSTGRES_PASSWORD=123
POSTGRES_DB=nestjs
```
### Step 3: Start the PostgreSQL Database
Open a terminal and navigate to the root directory of your project where the docker-compose.yml file is located. Run the following command to start the PostgreSQL database:

`docker-compose up -d`

### Step 4: Install Project Dependencies
Still in the root directory of your project, run the following command to install the necessary dependencies:
```
yarn

```
or : 
```
npm i
```

### Step 5: Set Up Prisma

```
npx prisma init

```

```
npx prisma migrate dev
```

### step 6 :
```
npm start
```

### step 7 :
go to postman and try this curl :

```
curl --location 'http://localhost:3333/items' \
--header 'Content-Type: application/json' \
--data '{
  "itemName": "logitech-g733",
  "itemPrice": 140,
  "itemImage": "https://image.citycenter.jo/cache/catalog/112021/GG7731-1200x1200.jpg",
  "itemDescription": "Total freedom with up to 20 m wireless range and LIGHTSPEED wireless audio transmission. Keep playing for up to 29 hours of battery life. Play in stereo on PlayStation(R) 4..Note : If the size of the earbud tips does not match the size of your ear canals or the headset is not worn properly in your ears, you may not obtain the correct sound qualities or call performance. Change the earbud tips to ones that fit more snugly in your ear"

}'
```
