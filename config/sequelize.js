const Sequelize = require("sequelize");
const fs = require("fs");
const redis = require("ioredis");

const sequelizeConfig = JSON.parse(
  fs.readFileSync(__dirname + "/config.json", "utf8")
);
const dialect = process.env.DB_DIALECT || sequelizeConfig["donation"].dialect;
const host = process.env.DB_HOST || sequelizeConfig["donation"].host;
const database =
  process.env.DB_DATABSE || sequelizeConfig["donation"].database_name;
const username =
  process.env.DB_USERNAME || sequelizeConfig["donation"].username;
const password =
  process.env.DB_PASSWORD || sequelizeConfig["donation"].password;
const port = process.env.DB_PORT || sequelizeConfig["donation"].port;

const connectObject = {
  dialect: dialect,
  host: host,
};

const sequelizeConnect = new Sequelize(
  database,
  username,
  password,
  connectObject
);

const db = {};

db.client = new redis({
  password: sequelizeConfig["redis"].password,
  socket: {
    host: sequelizeConfig["redis"].host,
    port: sequelizeConfig["redis"].port,
  },
});

db.cacheTTL = 60;
db.Sequelize = Sequelize;
db.sequelizeConnect = sequelizeConnect;

db.categories = require("../models/category")(sequelizeConnect, Sequelize);
db.campaigns = require("../models/campaign")(sequelizeConnect, Sequelize);
db.comments = require("../models/comments")(sequelizeConnect, Sequelize);
db.inforusers = require("../models/inforusers")(sequelizeConnect, Sequelize);
db.donations = require("../models/donations")(sequelizeConnect, Sequelize);
db.donors = require("../models/donors")(sequelizeConnect, Sequelize);
db.users = require("../models/users")(sequelizeConnect, Sequelize);
db.orgs = require("../models/orgs")(sequelizeConnect, Sequelize);
db.articles = require("../models/articles")(sequelizeConnect, Sequelize);

db.categories.associate(db);
db.campaigns.associate(db);
db.comments.associate(db);
db.inforusers.associate(db);
db.donations.associate(db);
db.donors.associate(db);
db.orgs.associate(db);
db.articles.associate(db);
db.users.associate(db);

// exports.sequelizeConnnect = sequelizeConnect;
module.exports = db;
