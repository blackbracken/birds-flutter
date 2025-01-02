# Firestore Schema

## Users

- **Collection Path**: `users`
- **Description**: ユーザー情報

### Fields

- `userId` (String): ユーザーのID*
- `userName` (String?): ユーザーの表示名
- `imageUrl` (String?): ユーザーのプロフィール画像のURL
- `createdAt` (Timestamp): ユーザーが作成された日時(UTC+0)

## Posts

- **Collection Path**: `users/{userId}/posts`
- **Description**: ユーザーが作成した投稿

### Fields

- `postId` (String): 投稿のID*
- `body` (String): 投稿の本文
- `authorId` (String): 投稿したユーザーの `userId`
- `createdAt` (Timestamp): 投稿が作成された日時(UTC+0)