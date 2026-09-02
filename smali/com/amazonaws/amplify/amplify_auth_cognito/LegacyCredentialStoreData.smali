.class public final Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;
.super Ljava/lang/Object;
.source "NativeAuthPluginBindingsPigeon.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u001a\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 *2\u00020\u0001:\u0001*Be\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000cJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0011J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003Jn\u0010 \u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010!J\u0013\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010%\u001a\u00020&H\u00d6\u0001J\u000e\u0010\'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010(J\t\u0010)\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0012\u001a\u0004\u0008\u0010\u0010\u0011R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000eR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000e\u00a8\u0006+"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;",
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
        "getAccessToken",
        "getExpirationMsSinceEpoch",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getIdToken",
        "getIdentityId",
        "getRefreshToken",
        "getSecretAccessKey",
        "getSessionToken",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toList",
        "",
        "toString",
        "Companion",
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
.field public static final Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData$Companion;


# instance fields
.field private final accessKeyId:Ljava/lang/String;

.field private final accessToken:Ljava/lang/String;

.field private final expirationMsSinceEpoch:Ljava/lang/Long;

.field private final idToken:Ljava/lang/String;

.field private final identityId:Ljava/lang/String;

.field private final refreshToken:Ljava/lang/String;

.field private final secretAccessKey:Ljava/lang/String;

.field private final sessionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData$Companion;

    return-void
.end method

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

    invoke-direct/range {v0 .. v10}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->identityId:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessKeyId:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->secretAccessKey:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->sessionToken:Ljava/lang/String;

    .line 98
    iput-object p5, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->expirationMsSinceEpoch:Ljava/lang/Long;

    .line 99
    iput-object p6, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessToken:Ljava/lang/String;

    .line 100
    iput-object p7, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->refreshToken:Ljava/lang/String;

    .line 101
    iput-object p8, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->idToken:Ljava/lang/String;

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

    .line 93
    invoke-direct/range {p1 .. p9}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;
    .registers 20

    move-object v0, p0

    move/from16 v1, p9

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->identityId:Ljava/lang/String;

    goto :goto_b

    :cond_a
    move-object v2, p1

    :goto_b
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessKeyId:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object v3, p2

    :goto_13
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->secretAccessKey:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    move-object v4, p3

    :goto_1b
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_22

    iget-object v5, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->sessionToken:Ljava/lang/String;

    goto :goto_23

    :cond_22
    move-object v5, p4

    :goto_23
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_2a

    iget-object v6, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->expirationMsSinceEpoch:Ljava/lang/Long;

    goto :goto_2b

    :cond_2a
    move-object v6, p5

    :goto_2b
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_32

    iget-object v7, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessToken:Ljava/lang/String;

    goto :goto_33

    :cond_32
    move-object v7, p6

    :goto_33
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3a

    iget-object v8, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->refreshToken:Ljava/lang/String;

    goto :goto_3c

    :cond_3a
    move-object/from16 v8, p7

    :goto_3c
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_43

    iget-object v1, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->idToken:Ljava/lang/String;

    goto :goto_45

    :cond_43
    move-object/from16 v1, p8

    :goto_45
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v1

    invoke-virtual/range {p0 .. p8}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->identityId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->secretAccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/Long;
    .registers 2

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->expirationMsSinceEpoch:Ljava/lang/Long;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;
    .registers 19

    new-instance v9, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;

    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->identityId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->identityId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessKeyId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessKeyId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->secretAccessKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->secretAccessKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->sessionToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->sessionToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->expirationMsSinceEpoch:Ljava/lang/Long;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->expirationMsSinceEpoch:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->refreshToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->refreshToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->idToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->idToken:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_64

    return v2

    :cond_64
    return v0
.end method

.method public final getAccessKeyId()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpirationMsSinceEpoch()Ljava/lang/Long;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->expirationMsSinceEpoch:Ljava/lang/Long;

    return-object v0
.end method

.method public final getIdToken()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdentityId()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->identityId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getSecretAccessKey()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->secretAccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionToken()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->identityId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessKeyId:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->secretAccessKey:Ljava/lang/String;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->sessionToken:Ljava/lang/String;

    if-nez v2, :cond_2d

    move v2, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->expirationMsSinceEpoch:Ljava/lang/Long;

    if-nez v2, :cond_3a

    move v2, v1

    goto :goto_3e

    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessToken:Ljava/lang/String;

    if-nez v2, :cond_47

    move v2, v1

    goto :goto_4b

    :cond_47
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->refreshToken:Ljava/lang/String;

    if-nez v2, :cond_54

    move v2, v1

    goto :goto_58

    :cond_54
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_58
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->idToken:Ljava/lang/String;

    if-nez v2, :cond_60

    goto :goto_64

    :cond_60
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_64
    add-int/2addr v0, v1

    return v0
.end method

.method public final toList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 120
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->identityId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 121
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessKeyId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 122
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->secretAccessKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 123
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->sessionToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 124
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->expirationMsSinceEpoch:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 125
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 126
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->refreshToken:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 127
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->idToken:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 119
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->identityId:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessKeyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->secretAccessKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->sessionToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->expirationMsSinceEpoch:Ljava/lang/Long;

    iget-object v5, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->accessToken:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->refreshToken:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;->idToken:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "LegacyCredentialStoreData(identityId="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", accessKeyId="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secretAccessKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expirationMsSinceEpoch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
