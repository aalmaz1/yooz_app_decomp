.class public final enum Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JsonFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat$JsonFormatVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

.field public static final enum ALLOW:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

.field public static final ALLOW_VALUE:I = 0x1

.field public static final enum JSON_FORMAT_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

.field public static final JSON_FORMAT_UNKNOWN_VALUE:I = 0x0

.field public static final enum LEGACY_BEST_EFFORT:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

.field public static final LEGACY_BEST_EFFORT_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25004
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    const-string v1, "JSON_FORMAT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->JSON_FORMAT_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    .line 25008
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    const-string v3, "ALLOW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->ALLOW:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    .line 25012
    new-instance v3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    const-string v5, "LEGACY_BEST_EFFORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->LEGACY_BEST_EFFORT:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 24999
    sput-object v5, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    .line 25058
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 25082
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25083
    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 25048
    :cond_0
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->LEGACY_BEST_EFFORT:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    return-object p0

    .line 25047
    :cond_1
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->ALLOW:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    return-object p0

    .line 25046
    :cond_2
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->JSON_FORMAT_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;",
            ">;"
        }
    .end annotation

    .line 25055
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 25068
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat$JsonFormatVerifier;->INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 25041
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 24999
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;
    .locals 1

    .line 24999
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 25031
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$JsonFormat;->value:I

    return v0
.end method
