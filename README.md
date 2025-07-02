# 🔐 Rails JWT Authentication: A Practical Guide

Secure your Rails API with JSON Web Tokens — in a few clear steps.

**Tutorial:**

🔐 [Rails JWT Authentication: A Practical Guide](https://medium.com/jungletronics/rails-jwt-authentication-a-practical-guide-ed62126e0f70)
Secure your Rails API with JSON Web Tokens — in a few clear steps

Clone the repo and get started:

```bash
git clone https://github.com/giljr/jwt_rails_app.git
cd jwt_rails_app
bundle install
rails db:create db:migrate
bin/dev
```

🛠️ Endpoints

Endpoint Method Description

```
POST /users       -> Create account
POST /auth/login  -> Authenticate and receive JWT
GET /me	          -> Get current user (requires JWT in Authorization header)
```

Example (Postman):

```
pm.test("Login success", () => pm.response.to.have.status(202));
let json = pm.response.json();
pm.collectionVariables.set("access_token", json.token);
```

Use {{access_token}} in Authorization:

Bearer {{access_token}} for protected routes.

✅ Summary

You now have a clean Rails 8 JWT-auth setup:

    User model with has_secure_password

    JsonWebToken service for encoding/decoding

    authenticate_user middleware in ApplicationController

    Controllers: UsersController, AuthController

    JSON serialization via ActiveModelSerializer

Feel free to extend this with refresh tokens, role checks, token expiration, etc. 🎉

## License

[MIT](https://choosealicense.com/licenses/mit/)
