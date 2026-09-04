.class final Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridgeCodec;
.super Lio/flutter/plugin/common/StandardMessageCodec;
.source "NativeAuthPluginBindingsPigeon.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0014J\u001a\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004H\u0014\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridgeCodec;",
        "Lio/flutter/plugin/common/StandardMessageCodec;",
        "()V",
        "readValueOfType",
        "",
        "type",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "writeValue",
        "",
        "stream",
        "Ljava/io/ByteArrayOutputStream;",
        "value",
        "amplify_auth_cognito_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridgeCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridgeCodec;

    invoke-direct {v0}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridgeCodec;-><init>()V

    sput-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridgeCodec;->INSTANCE:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridgeCodec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 182
    invoke-direct {p0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-void
.end method


# virtual methods
.method protected readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 2

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, -0x80

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 186
    invoke-virtual {p0, p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridgeCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 187
    sget-object p2, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData$Companion;

    invoke-virtual {p2, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData$Companion;->fromList(Ljava/util/List;)Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    const/16 v0, -0x7f

    if-ne p1, v0, :cond_5

    .line 191
    invoke-virtual {p0, p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridgeCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/util/List;

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 192
    sget-object p2, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret$Companion;

    invoke-virtual {p2, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret$Companion;->fromList(Ljava/util/List;)Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;

    move-result-object v1

    :cond_4
    return-object v1

    :cond_5
    const/16 v0, -0x7e

    if-ne p1, v0, :cond_8

    .line 196
    invoke-virtual {p0, p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridgeCodec;->readValue(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_6

    check-cast p1, Ljava/util/List;

    goto :goto_2

    :cond_6
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_7

    .line 197
    sget-object p2, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData$Companion;

    invoke-virtual {p2, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData$Companion;->fromList(Ljava/util/List;)Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;

    move-result-object v1

    :cond_7
    return-object v1

    .line 200
    :cond_8
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->readValueOfType(BLjava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    instance-of v0, p2, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;

    if-eqz v0, :cond_0

    const/16 v0, 0x80

    .line 206
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 207
    check-cast p2, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;

    invoke-virtual {p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->toList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridgeCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :cond_0
    instance-of v0, p2, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;

    if-eqz v0, :cond_1

    const/16 v0, 0x81

    .line 210
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 211
    check-cast p2, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;

    invoke-virtual {p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->toList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridgeCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_1
    instance-of v0, p2, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;

    if-eqz v0, :cond_2

    const/16 v0, 0x82

    .line 214
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 215
    check-cast p2, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;

    invoke-virtual {p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->toList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridgeCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    :cond_2
    invoke-super {p0, p1, p2}, Lio/flutter/plugin/common/StandardMessageCodec;->writeValue(Ljava/io/ByteArrayOutputStream;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
