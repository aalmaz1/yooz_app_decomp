.class public interface abstract Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/sharedpreferences/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SharedPreferencesApi"
.end annotation


# direct methods
.method public static getCodec()Lio/flutter/plugin/common/MessageCodec;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$setUp$0(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 108
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->remove(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    .line 109
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 111
    invoke-static {p0}, Lio/flutter/plugins/sharedpreferences/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 114
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setUp$1(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 133
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 134
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 136
    :try_start_15
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->setBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    .line 137
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    goto :goto_22

    :catchall_1d
    move-exception p0

    .line 139
    invoke-static {p0}, Lio/flutter/plugins/sharedpreferences/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    :goto_22
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setUp$2(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 161
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 162
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 164
    :try_start_15
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->setString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    .line 165
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    goto :goto_22

    :catchall_1d
    move-exception p0

    .line 167
    invoke-static {p0}, Lio/flutter/plugins/sharedpreferences/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 170
    :goto_22
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setUp$3(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 8

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 189
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 190
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-nez p1, :cond_19

    const/4 p1, 0x0

    goto :goto_21

    .line 193
    :cond_19
    :try_start_19
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_21
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->setInt(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    .line 194
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_29

    goto :goto_2e

    :catchall_29
    move-exception p0

    .line 196
    invoke-static {p0}, Lio/flutter/plugins/sharedpreferences/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 199
    :goto_2e
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setUp$4(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 218
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 219
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    .line 221
    :try_start_15
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->setDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Boolean;

    move-result-object p0

    .line 222
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    goto :goto_22

    :catchall_1d
    move-exception p0

    .line 224
    invoke-static {p0}, Lio/flutter/plugins/sharedpreferences/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 227
    :goto_22
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setUp$5(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 246
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 247
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 249
    :try_start_15
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->setStringList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    .line 250
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    goto :goto_22

    :catchall_1d
    move-exception p0

    .line 252
    invoke-static {p0}, Lio/flutter/plugins/sharedpreferences/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 255
    :goto_22
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setUp$6(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 273
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 274
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 275
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 277
    :try_start_15
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->clear(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    .line 278
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    goto :goto_22

    :catchall_1d
    move-exception p0

    .line 280
    invoke-static {p0}, Lio/flutter/plugins/sharedpreferences/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 283
    :goto_22
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setUp$7(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 302
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 303
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 305
    :try_start_15
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->getAll(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    .line 306
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    goto :goto_22

    :catchall_1d
    move-exception p0

    .line 308
    invoke-static {p0}, Lio/flutter/plugins/sharedpreferences/Messages;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 311
    :goto_22
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static setUp(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;)V
    .registers 7

    .line 94
    invoke-interface {p0}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v0

    .line 95
    new-instance v1, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.remove"

    .line 99
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 102
    new-instance v2, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;)V

    invoke-virtual {v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1e

    .line 117
    :cond_1b
    invoke-virtual {v1, v0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 121
    :goto_1e
    invoke-interface {p0}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v1

    .line 122
    new-instance v2, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v3, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.setBool"

    .line 126
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    if-eqz p1, :cond_38

    .line 129
    new-instance v1, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;)V

    invoke-virtual {v2, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_3b

    .line 145
    :cond_38
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 149
    :goto_3b
    invoke-interface {p0}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v1

    .line 150
    new-instance v2, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v3, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.setString"

    .line 154
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    if-eqz p1, :cond_55

    .line 157
    new-instance v1, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;)V

    invoke-virtual {v2, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_58

    .line 173
    :cond_55
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 177
    :goto_58
    invoke-interface {p0}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v1

    .line 178
    new-instance v2, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v3, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.setInt"

    .line 182
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    if-eqz p1, :cond_72

    .line 185
    new-instance v1, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda3;-><init>(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;)V

    invoke-virtual {v2, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_75

    .line 202
    :cond_72
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 206
    :goto_75
    invoke-interface {p0}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v1

    .line 207
    new-instance v2, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v3, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.setDouble"

    .line 211
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    if-eqz p1, :cond_8f

    .line 214
    new-instance v1, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda4;-><init>(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;)V

    invoke-virtual {v2, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_92

    .line 230
    :cond_8f
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 234
    :goto_92
    invoke-interface {p0}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v1

    .line 235
    new-instance v2, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v3, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.setStringList"

    .line 239
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    if-eqz p1, :cond_ac

    .line 242
    new-instance v1, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda5;-><init>(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;)V

    invoke-virtual {v2, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_af

    .line 258
    :cond_ac
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 262
    :goto_af
    invoke-interface {p0}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v1

    .line 263
    new-instance v2, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v3, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.clear"

    .line 267
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    if-eqz p1, :cond_c9

    .line 270
    new-instance v1, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda6;-><init>(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;)V

    invoke-virtual {v2, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_cc

    .line 286
    :cond_c9
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 290
    :goto_cc
    invoke-interface {p0}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v1

    .line 291
    new-instance v2, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v3, "dev.flutter.pigeon.shared_preferences_android.SharedPreferencesApi.getAll"

    .line 295
    invoke-static {}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4, v1}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    if-eqz p1, :cond_e6

    .line 298
    new-instance p0, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda7;

    invoke-direct {p0, p1}, Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi$$ExternalSyntheticLambda7;-><init>(Lio/flutter/plugins/sharedpreferences/Messages$SharedPreferencesApi;)V

    invoke-virtual {v2, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_e9

    .line 314
    :cond_e6
    invoke-virtual {v2, v0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    :goto_e9
    return-void
.end method


# virtual methods
.method public abstract clear(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method

.method public abstract getAll(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract setBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
.end method

.method public abstract setDouble(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/Boolean;
.end method

.method public abstract setInt(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;
.end method

.method public abstract setString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract setStringList(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation
.end method
