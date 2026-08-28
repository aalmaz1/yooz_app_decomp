.class public final enum Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
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
    name = "FieldPresence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence$FieldPresenceVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

.field public static final enum EXPLICIT:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

.field public static final EXPLICIT_VALUE:I = 0x1

.field public static final enum FIELD_PRESENCE_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

.field public static final FIELD_PRESENCE_UNKNOWN_VALUE:I = 0x0

.field public static final enum IMPLICIT:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

.field public static final IMPLICIT_VALUE:I = 0x2

.field public static final enum LEGACY_REQUIRED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

.field public static final LEGACY_REQUIRED_VALUE:I = 0x3

.field private static final internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 24530
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    const-string v1, "FIELD_PRESENCE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->FIELD_PRESENCE_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 24534
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    const-string v3, "EXPLICIT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->EXPLICIT:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 24538
    new-instance v3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    const-string v5, "IMPLICIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->IMPLICIT:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 24542
    new-instance v5, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    const-string v7, "LEGACY_REQUIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->LEGACY_REQUIRED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 24525
    sput-object v7, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    .line 24593
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
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

    .line 24617
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24618
    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 24583
    :cond_d
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->LEGACY_REQUIRED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    return-object p0

    .line 24582
    :cond_10
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->IMPLICIT:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    return-object p0

    .line 24581
    :cond_13
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->EXPLICIT:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    return-object p0

    .line 24580
    :cond_16
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->FIELD_PRESENCE_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;",
            ">;"
        }
    .end annotation

    .line 24590
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .registers 1

    .line 24603
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence$FieldPresenceVerifier;->INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    .registers 1
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

    .line 24575
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 24525
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;
    .registers 1

    .line 24525
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 24565
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$FieldPresence;->value:I

    return v0
.end method
