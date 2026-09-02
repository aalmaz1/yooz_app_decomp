.class public final Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;
.super Ljava/lang/Object;
.source "AmplifyAuthCognitoPlugin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001Be\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000cJ\u0006\u0010\"\u001a\u00020#R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u000e\"\u0004\u0008\u0019\u0010\u0010R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u000e\"\u0004\u0008\u001b\u0010\u0010R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u000e\"\u0004\u0008\u001d\u0010\u0010R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u000e\"\u0004\u0008\u001f\u0010\u0010R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u000e\"\u0004\u0008!\u0010\u0010\u00a8\u0006$"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;",
        "",
        "identityId",
        "",
        "accessKeyId",
        "secretAccessKey",
        "sessionToken",
        "expirationMsSinceEpoch",
        "",
        "accessToken",
        "refreshToken",
        "idToken",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAccessKeyId",
        "()Ljava/lang/String;",
        "setAccessKeyId",
        "(Ljava/lang/String;)V",
        "getAccessToken",
        "setAccessToken",
        "getExpirationMsSinceEpoch",
        "()Ljava/lang/Long;",
        "setExpirationMsSinceEpoch",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getIdToken",
        "setIdToken",
        "getIdentityId",
        "setIdentityId",
        "getRefreshToken",
        "setRefreshToken",
        "getSecretAccessKey",
        "setSecretAccessKey",
        "getSessionToken",
        "setSessionToken",
        "build",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;",
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


# instance fields
.field private accessKeyId:Ljava/lang/String;

.field private accessToken:Ljava/lang/String;

.field private expirationMsSinceEpoch:Ljava/lang/Long;

.field private idToken:Ljava/lang/String;

.field private identityId:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;

.field private secretAccessKey:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->identityId:Ljava/lang/String;

    .line 610
    iput-object p2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->accessKeyId:Ljava/lang/String;

    .line 611
    iput-object p3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->secretAccessKey:Ljava/lang/String;

    .line 612
    iput-object p4, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->sessionToken:Ljava/lang/String;

    .line 613
    iput-object p5, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->expirationMsSinceEpoch:Ljava/lang/Long;

    .line 614
    iput-object p6, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->accessToken:Ljava/lang/String;

    .line 615
    iput-object p7, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->refreshToken:Ljava/lang/String;

    .line 616
    iput-object p8, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->idToken:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 20

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_10

    move-object v3, v2

    goto :goto_11

    :cond_10
    move-object v3, p2

    :goto_11
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_17

    move-object v4, v2

    goto :goto_18

    :cond_17
    move-object v4, p3

    :goto_18
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_1e

    move-object v5, v2

    goto :goto_1f

    :cond_1e
    move-object v5, p4

    :goto_1f
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_25

    move-object v6, v2

    goto :goto_26

    :cond_25
    move-object v6, p5

    :goto_26
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_2c

    move-object v7, v2

    goto :goto_2d

    :cond_2c
    move-object v7, p6

    :goto_2d
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_33

    move-object v8, v2

    goto :goto_35

    :cond_33
    move-object/from16 v8, p7

    :goto_35
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3a

    goto :goto_3c

    :cond_3a
    move-object/from16 v2, p8

    :goto_3c
    move-object p1, p0

    move-object p2, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v2

    .line 608
    invoke-direct/range {p1 .. p9}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;
    .registers 11

    .line 618
    new-instance v9, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;

    .line 619
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->identityId:Ljava/lang/String;

    .line 620
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->accessKeyId:Ljava/lang/String;

    .line 621
    iget-object v3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->secretAccessKey:Ljava/lang/String;

    .line 622
    iget-object v4, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->sessionToken:Ljava/lang/String;

    .line 623
    iget-object v5, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->expirationMsSinceEpoch:Ljava/lang/Long;

    .line 624
    iget-object v6, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->accessToken:Ljava/lang/String;

    .line 625
    iget-object v7, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->refreshToken:Ljava/lang/String;

    .line 626
    iget-object v8, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->idToken:Ljava/lang/String;

    move-object v0, v9

    .line 618
    invoke-direct/range {v0 .. v8}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public final getAccessKeyId()Ljava/lang/String;
    .registers 2

    .line 610
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .registers 2

    .line 614
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpirationMsSinceEpoch()Ljava/lang/Long;
    .registers 2

    .line 613
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->expirationMsSinceEpoch:Ljava/lang/Long;

    return-object v0
.end method

.method public final getIdToken()Ljava/lang/String;
    .registers 2

    .line 616
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdentityId()Ljava/lang/String;
    .registers 2

    .line 609
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->identityId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .registers 2

    .line 615
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecretAccessKey()Ljava/lang/String;
    .registers 2

    .line 611
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->secretAccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionToken()Ljava/lang/String;
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public final setAccessKeyId(Ljava/lang/String;)V
    .registers 2

    .line 610
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->accessKeyId:Ljava/lang/String;

    return-void
.end method

.method public final setAccessToken(Ljava/lang/String;)V
    .registers 2

    .line 614
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public final setExpirationMsSinceEpoch(Ljava/lang/Long;)V
    .registers 2

    .line 613
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->expirationMsSinceEpoch:Ljava/lang/Long;

    return-void
.end method

.method public final setIdToken(Ljava/lang/String;)V
    .registers 2

    .line 616
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->idToken:Ljava/lang/String;

    return-void
.end method

.method public final setIdentityId(Ljava/lang/String;)V
    .registers 2

    .line 609
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->identityId:Ljava/lang/String;

    return-void
.end method

.method public final setRefreshToken(Ljava/lang/String;)V
    .registers 2

    .line 615
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public final setSecretAccessKey(Ljava/lang/String;)V
    .registers 2

    .line 611
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->secretAccessKey:Ljava/lang/String;

    return-void
.end method

.method public final setSessionToken(Ljava/lang/String;)V
    .registers 2

    .line 612
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->sessionToken:Ljava/lang/String;

    return-void
.end method
