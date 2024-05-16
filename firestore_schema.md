# Firestore Schema

クライアントの技術検証の簡単のため、サブコレクションは持たずリレーショナルにしている

## Users

- **Collection ID**: `users`
- **Description**: ユーザー情報

### Fields

- `userId` (String): ユーザーのID
- `userName` (String?): ユーザーの表示名
- `imageUrl` (String?): ユーザーのプロフィール画像のURL
- `createdAt` (Timestamp): ユーザーが作成された日時(UTC+0)
- `followeeIds` (Array): ユーザーがフォローしているユーザーの `userId` の配列
- `followerIds` (Array): ユーザーをフォローしているユーザーの `userId` の配列
- `createdPostIds` (Array): ユーザーが作成した投稿の `postId` の配列
- `likedPostIds` (Array): ユーザーがいいねした投稿の `postId` の配列

## Posts

- **Collection ID**: `posts`
- **Description**: ユーザーが作成した投稿

### Fields

- `postId` (String):投稿のID
- `body` (String): 投稿の本文
- `authorId` (String): 投稿したユーザーの `userId`
- `createdAt` (Timestamp): 投稿が作成された日時(UTC+0)
- `likedUserIds` (Array): 投稿をいいねしたユーザーの `userId` の配列