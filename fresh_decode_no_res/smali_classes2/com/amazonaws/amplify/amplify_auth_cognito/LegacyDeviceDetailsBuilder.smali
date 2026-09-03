.class public final Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;
.super Ljava/lang/Object;
.source "AmplifyAuthCognitoPlugin.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B5\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u0012\u001a\u00020\u0013R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000bR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;",
        "",
        "deviceKey",
        "",
        "deviceGroupKey",
        "deviceSecret",
        "asfDeviceId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAsfDeviceId",
        "()Ljava/lang/String;",
        "setAsfDeviceId",
        "(Ljava/lang/String;)V",
        "getDeviceGroupKey",
        "setDeviceGroupKey",
        "getDeviceKey",
        "setDeviceKey",
        "getDeviceSecret",
        "setDeviceSecret",
        "build",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;",
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
.field private asfDeviceId:Ljava/lang/String;

.field private deviceGroupKey:Ljava/lang/String;

.field private deviceKey:Ljava/lang/String;

.field private deviceSecret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->deviceKey:Ljava/lang/String;

    .line 634
    iput-object p2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->deviceGroupKey:Ljava/lang/String;

    .line 635
    iput-object p3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->deviceSecret:Ljava/lang/String;

    .line 636
    iput-object p4, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->asfDeviceId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 632
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final build()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;
    .locals 5

    .line 638
    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;

    .line 639
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->deviceKey:Ljava/lang/String;

    .line 640
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->deviceGroupKey:Ljava/lang/String;

    .line 641
    iget-object v3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->deviceSecret:Ljava/lang/String;

    .line 642
    iget-object v4, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->asfDeviceId:Ljava/lang/String;

    .line 638
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getAsfDeviceId()Ljava/lang/String;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->asfDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceGroupKey()Ljava/lang/String;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->deviceGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceKey()Ljava/lang/String;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->deviceKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceSecret()Ljava/lang/String;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->deviceSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final setAsfDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->asfDeviceId:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceGroupKey(Ljava/lang/String;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->deviceGroupKey:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceKey(Ljava/lang/String;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->deviceKey:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceSecret(Ljava/lang/String;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->deviceSecret:Ljava/lang/String;

    return-void
.end method
