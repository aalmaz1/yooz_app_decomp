.class public final Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;
.super Ljava/lang/Object;
.source "NativeAuthPluginBindingsPigeon.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u001a\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 -2\u00020\u0001:\u0001-Bq\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\rJ\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010\"\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016Jz\u0010#\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u00c6\u0001\u00a2\u0006\u0002\u0010$J\u0013\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010(\u001a\u00020)H\u00d6\u0001J\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010+J\t\u0010,\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000fR\u0015\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0015\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u000f\u00a8\u0006."
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;",
        "",
        "deviceName",
        "",
        "thirdPartyDeviceId",
        "deviceFingerprint",
        "applicationName",
        "applicationVersion",
        "deviceLanguage",
        "deviceOsReleaseVersion",
        "screenHeightPixels",
        "",
        "screenWidthPixels",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V",
        "getApplicationName",
        "()Ljava/lang/String;",
        "getApplicationVersion",
        "getDeviceFingerprint",
        "getDeviceLanguage",
        "getDeviceName",
        "getDeviceOsReleaseVersion",
        "getScreenHeightPixels",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getScreenWidthPixels",
        "getThirdPartyDeviceId",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;",
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
.field public static final Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData$Companion;


# instance fields
.field private final applicationName:Ljava/lang/String;

.field private final applicationVersion:Ljava/lang/String;

.field private final deviceFingerprint:Ljava/lang/String;

.field private final deviceLanguage:Ljava/lang/String;

.field private final deviceName:Ljava/lang/String;

.field private final deviceOsReleaseVersion:Ljava/lang/String;

.field private final screenHeightPixels:Ljava/lang/Long;

.field private final screenWidthPixels:Ljava/lang/Long;

.field private final thirdPartyDeviceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 12

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->thirdPartyDeviceId:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceFingerprint:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationName:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationVersion:Ljava/lang/String;

    .line 56
    iput-object p6, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceLanguage:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceOsReleaseVersion:Ljava/lang/String;

    .line 58
    iput-object p8, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenHeightPixels:Ljava/lang/Long;

    .line 59
    iput-object p9, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenWidthPixels:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v2, p9

    :goto_8
    move-object p1, p0

    move-object p2, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v2

    .line 50
    invoke-direct/range {p1 .. p10}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ILjava/lang/Object;)Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->thirdPartyDeviceId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceFingerprint:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationVersion:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceLanguage:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceOsReleaseVersion:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenHeightPixels:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenWidthPixels:Ljava/lang/Long;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->thirdPartyDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceOsReleaseVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenHeightPixels:Ljava/lang/Long;

    return-object v0
.end method

.method public final component9()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenWidthPixels:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;
    .locals 11

    new-instance v10, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;

    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->thirdPartyDeviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->thirdPartyDeviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceFingerprint:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceFingerprint:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationName:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceLanguage:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceLanguage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceOsReleaseVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceOsReleaseVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenHeightPixels:Ljava/lang/Long;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenHeightPixels:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenWidthPixels:Ljava/lang/Long;

    iget-object p1, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenWidthPixels:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getApplicationName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationVersion()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceFingerprint()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceLanguage()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceOsReleaseVersion()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceOsReleaseVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getScreenHeightPixels()Ljava/lang/Long;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenHeightPixels:Ljava/lang/Long;

    return-object v0
.end method

.method public final getScreenWidthPixels()Ljava/lang/Long;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenWidthPixels:Ljava/lang/Long;

    return-object v0
.end method

.method public final getThirdPartyDeviceId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->thirdPartyDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->thirdPartyDeviceId:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceFingerprint:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationName:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationVersion:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceLanguage:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceOsReleaseVersion:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenHeightPixels:Ljava/lang/Long;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenWidthPixels:Ljava/lang/Long;

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final toList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 79
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 80
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->thirdPartyDeviceId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 81
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceFingerprint:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 82
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 83
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 84
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceLanguage:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 85
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceOsReleaseVersion:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 86
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenHeightPixels:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 87
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenWidthPixels:Ljava/lang/Long;

    aput-object v2, v0, v1

    .line 78
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->thirdPartyDeviceId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceFingerprint:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationName:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->applicationVersion:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceLanguage:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->deviceOsReleaseVersion:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenHeightPixels:Ljava/lang/Long;

    iget-object v8, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;->screenWidthPixels:Ljava/lang/Long;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "NativeUserContextData(deviceName="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", thirdPartyDeviceId="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceFingerprint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", applicationName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", applicationVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceLanguage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceOsReleaseVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenHeightPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenWidthPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
