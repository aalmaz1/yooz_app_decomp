.class public final enum Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
.super Ljava/lang/Enum;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Label"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label$LabelVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

.field public static final enum LABEL_OPTIONAL:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

.field public static final LABEL_OPTIONAL_VALUE:I = 0x1

.field public static final enum LABEL_REPEATED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

.field public static final LABEL_REPEATED_VALUE:I = 0x3

.field public static final enum LABEL_REQUIRED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

.field public static final LABEL_REQUIRED_VALUE:I = 0x2

.field private static final internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 7767
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    const-string v1, "LABEL_OPTIONAL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    .line 7771
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    const-string v4, "LABEL_REPEATED"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    .line 7775
    new-instance v4, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    const-string v6, "LABEL_REQUIRED"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v7}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    new-array v5, v5, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v7

    .line 7762
    sput-object v5, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    .line 7821
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

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

    .line 7845
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7846
    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 7810
    :cond_b
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REPEATED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    return-object p0

    .line 7811
    :cond_e
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_REQUIRED:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    return-object p0

    .line 7809
    :cond_11
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->LABEL_OPTIONAL:Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;",
            ">;"
        }
    .end annotation

    .line 7818
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->internalValueMap:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .registers 1

    .line 7831
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label$LabelVerifier;->INSTANCE:Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
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

    .line 7804
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 7762
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    return-object p0
.end method

.method public static values()[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;
    .registers 1

    .line 7762
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->$VALUES:[Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    invoke-virtual {v0}, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .line 7794
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldDescriptorProto$Label;->value:I

    return v0
.end method
