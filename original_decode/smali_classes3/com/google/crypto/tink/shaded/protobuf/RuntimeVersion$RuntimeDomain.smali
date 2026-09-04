.class public final enum Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;
.super Ljava/lang/Enum;
.source "RuntimeVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RuntimeDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

.field public static final enum GOOGLE_INTERNAL:Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

.field public static final enum PUBLIC:Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 21
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    const-string v1, "GOOGLE_INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;->GOOGLE_INTERNAL:Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    .line 22
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    const-string v3, "PUBLIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;->PUBLIC:Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 20
    sput-object v3, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 20
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;
    .locals 1

    .line 20
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/RuntimeVersion$RuntimeDomain;

    return-object v0
.end method
