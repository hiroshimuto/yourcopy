# ユーザーの作成
User.create(email: "test1@gmail.com", password: "test1test1", provider: "twitter", uid: "2887056381", username: "いちろー")
User.create(email: "test2@gmail.com", password: "test2test2", provider: "twitter", uid: "2887056382", username: "じろー")
User.create(email: "test@gmail.com", password: "testtest", provider: "twitter", uid: "2887056383", username: "さぶろー")

users = User.all()

# Themeテーブルのデータ作成
Theme.create(hash_tag: "#結婚っていいな")
Theme.create(hash_tag: "#家族っていいな")
Theme.create(hash_tag: "#青春の１ページ")
# Theme.create(hash_tag: "#バレンタインデー")
# Theme.create(hash_tag: "#女性が輝く化粧品")
# Theme.create(hash_tag: "#働くことがおもしろくなる")

# Topicテーブルのデータ作成
Topic.create(theme_id: 1)
Topic.create(theme_id: 2)
Topic.create(theme_id: 3)
# Topic.create(theme_id: 4)
# Topic.create(theme_id: 5)
# Topic.create(theme_id: 6)

# Copyテーブルのデータ作成
# 結婚っていいな
Copy.create(text: "「結婚しなくても幸せになれるこの時代に、私は、あなたと結婚したいのです」", topic_id:1, user_id: 1)
Copy.create(text: "結婚するとか、しないとか、それよりもただ、愛してる。", topic_id:1, user_id: 2)
Copy.create(text: "くすり指がドキドキした。", topic_id:1, user_id: 3)
Copy.create(text: "『ばいばい』が『ただいま』になる。", topic_id:1, user_id: 3)
Copy.create(text: "朝起きる、君がいる", topic_id:1, user_id: 2)
Copy.create(text: "出会いは突然、きっかけは偶然、これからは必然", topic_id:1, user_id: 1)
Copy.create(text: "『ばいばい』が『ただいま』になる。", topic_id:1, user_id: 1)

#家族っていいな
Copy.create(text: "うちごはんで、家族はもっと、家族になる。", topic_id:2, user_id: 1)
Copy.create(text: "きみがつらいとき、寂しいとき、きみを思う家族がいます。", topic_id:2, user_id: 2)
Copy.create(text: "ごはんだよ。帰っておいで。", topic_id:2, user_id: 3)
Copy.create(text: "家族は家族になっていく。 だいじょうぶ。つながっている。", topic_id:2, user_id: 3)
Copy.create(text: "結婚しようって言われて、なによりも先に、浮かんだのは、故郷の母と父だった。", topic_id:2, user_id: 2)
Copy.create(text: "まちでとなりになった人は、ちょっとの間のおとなりさん。", topic_id:2, user_id: 1)
Copy.create(text: "ひとつの屋根の下、今日もあなたと、食べれて良かった。", topic_id:2, user_id: 1)

#青春の１ページ
Copy.create(text: "今を、みんなで、味わいたい。", topic_id:3, user_id: 1)
Copy.create(text: "君のままで、君は変われる。", topic_id:3, user_id: 2)
Copy.create(text: "アオハルかよ。", topic_id:3, user_id: 3)
Copy.create(text: "青春は、戻らないらしい。", topic_id:3, user_id: 3)
Copy.create(text: "きゅんって、何の音ですか。", topic_id:3, user_id: 2)
Copy.create(text: "10代で口ずさんだ歌を人は一生、口ずさむ", topic_id:3, user_id: 1)
Copy.create(text: "キミのせいで、元気が出たり、涙が出たり。", topic_id:3, user_id: 1)
