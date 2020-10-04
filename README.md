# devise-jwt sample

denylistを採用．

## API
### sign_up
- endpoint
`POST http://localhost:3000/users/sign_in`
- parameter
```
{"user": {"email": "test@example.com", "password": "password"}}
```
- 認証に成功すると，Authorizationにtokenが返る

### sign_in
- endpoint
`http://localhost:3000/users`
- parameter
```
{"user": {"email": "test10@example.com", "password": "password"}}
```
- 認証に成功するとuserのbodyが返る

### memo一覧
- endpoint
```
GET http://localhost:3000/memos
```
- Bearerにtokenをセットする．  

## 参考
- [https://www.nightswinger.dev/2020/02/jwt-authentication-for-rails/](https://www.nightswinger.dev/2020/02/jwt-authentication-for-rails/)
- [hajime-goshima/JWTAuth](https://github.com/hajime-goshima/JWTAuth)
