.class public final enum Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;
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
    name = "RepeatedFieldEncoding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding$RepeatedFieldEncodingVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

.field public static final enum EXPANDED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

.field public static final EXPANDED_VALUE:I = 0x2

.field public static final enum PACKED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

.field public static final PACKED_VALUE:I = 0x1

.field public static final enum REPEATED_FIELD_ENCODING_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

.field public static final REPEATED_FIELD_ENCODING_UNKNOWN_VALUE:I

.field private static final internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 24725
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    const-string v1, "REPEATED_FIELD_ENCODING_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->REPEATED_FIELD_ENCODING_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    .line 24729
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    const-string v3, "PACKED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->PACKED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    .line 24733
    new-instance v3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    const-string v5, "EXPANDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->EXPANDED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 24720
    sput-object v5, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    .line 24779
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

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

    .line 24803
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24804
    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 24769
    :cond_a
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->EXPANDED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    return-object p0

    .line 24768
    :cond_d
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->PACKED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    return-object p0

    .line 24767
    :cond_10
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->REPEATED_FIELD_ENCODING_UNKNOWN:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;",
            ">;"
        }
    .end annotation

    .line 24776
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .registers 1

    .line 24789
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding$RepeatedFieldEncodingVerifier;->INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;
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

    .line 24762
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 24720
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;
    .registers 1

    .line 24720
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 24752
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;->value:I

    return v0
.end method
