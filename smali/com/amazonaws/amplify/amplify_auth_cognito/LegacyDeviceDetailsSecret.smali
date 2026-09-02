.class public final Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;
.super Ljava/lang/Object;
.source "NativeAuthPluginBindingsPigeon.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB5\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J9\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0018J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;",
        "",
        "deviceKey",
        "",
        "deviceGroupKey",
        "devicePassword",
        "asfDeviceId",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAsfDeviceId",
        "()Ljava/lang/String;",
        "getDeviceGroupKey",
        "getDeviceKey",
        "getDevicePassword",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
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
.field public static final Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret$Companion;


# instance fields
.field private final asfDeviceId:Ljava/lang/String;

.field private final deviceGroupKey:Ljava/lang/String;

.field private final deviceKey:Ljava/lang/String;

.field private final devicePassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceKey:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceGroupKey:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->devicePassword:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->asfDeviceId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p1, v0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    move-object p2, v0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    move-object p3, v0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_15

    move-object p4, v0

    .line 133
    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceKey:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceGroupKey:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-object p3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->devicePassword:Ljava/lang/String;

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->asfDeviceId:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->devicePassword:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->asfDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;
    .registers 6

    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;

    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceGroupKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceGroupKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->devicePassword:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->devicePassword:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->asfDeviceId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->asfDeviceId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getAsfDeviceId()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->asfDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceGroupKey()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceKey()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getDevicePassword()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->devicePassword:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceGroupKey:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->devicePassword:Ljava/lang/String;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->asfDeviceId:Ljava/lang/String;

    if-nez v2, :cond_2c

    goto :goto_30

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_30
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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 152
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 153
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceGroupKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 154
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->devicePassword:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 155
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->asfDeviceId:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 151
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->deviceGroupKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->devicePassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;->asfDeviceId:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LegacyDeviceDetailsSecret(deviceKey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", deviceGroupKey="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devicePassword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", asfDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
