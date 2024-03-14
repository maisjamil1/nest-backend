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
