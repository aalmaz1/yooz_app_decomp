.class Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType$1;
.super Ljava/lang/Object;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 17066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 17069
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "number"
        }
    .end annotation

    .line 17066
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType$1;->findValueByNumber(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;

    move-result-object p1

    return-object p1
.end method
