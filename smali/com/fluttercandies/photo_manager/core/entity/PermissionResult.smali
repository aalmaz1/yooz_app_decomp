.class public final enum Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;
.super Ljava/lang/Enum;
.source "PermissionResult.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "NotDetermined",
        "Denied",
        "Authorized",
        "Limited",
        "photo_manager_release"
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

.field public static final enum Authorized:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

.field public static final enum Denied:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

.field public static final enum Limited:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

.field public static final enum NotDetermined:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    const/4 v1, 0x0

    sget-object v2, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->NotDetermined:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Denied:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Authorized:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Limited:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 4
    new-instance v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    const-string v1, "NotDetermined"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->NotDetermined:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    .line 5
    new-instance v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    const-string v1, "Denied"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Denied:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    .line 6
    new-instance v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    const-string v1, "Authorized"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Authorized:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    .line 7
    new-instance v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    const-string v1, "Limited"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Limited:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    invoke-static {}, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->$values()[Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    move-result-object v0

    sput-object v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->$VALUES:[Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;
    .registers 2

    const-class v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    return-object p0
.end method

.method public static values()[Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;
    .registers 1

    sget-object v0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->$VALUES:[Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .registers 2

    .line 3
    iget v0, p0, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->value:I

    return v0
.end method
