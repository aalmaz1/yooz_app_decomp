.class Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation$1;
.super Ljava/lang/Object;
.source "JavaFeaturesProto.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "number"
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation$1;->findValueByNumber(I)Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .line 116
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;->forNumber(I)Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;

    move-result-object p1

    return-object p1
.end method
