.class public final Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "JavaFeaturesProto.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeaturesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;",
        "Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeaturesOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 306
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;->access$000()Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$1;)V
    .registers 2

    .line 299
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLegacyClosedEnum()Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;
    .registers 2

    .line 341
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;->copyOnWrite()V

    .line 342
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;->access$200(Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;)V

    return-object p0
.end method

.method public clearUtf8Validation()Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;
    .registers 2

    .line 377
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;->copyOnWrite()V

    .line 378
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;->access$400(Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;)V

    return-object p0
.end method

.method public getLegacyClosedEnum()Z
    .registers 2

    .line 324
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;->getLegacyClosedEnum()Z

    move-result v0

    return v0
.end method

.method public getUtf8Validation()Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;->getUtf8Validation()Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;

    move-result-object v0

    return-object v0
.end method

.method public hasLegacyClosedEnum()Z
    .registers 2

    .line 316
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;->hasLegacyClosedEnum()Z

    move-result v0

    return v0
.end method

.method public hasUtf8Validation()Z
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;->hasUtf8Validation()Z

    move-result v0

    return v0
.end method

.method public setLegacyClosedEnum(Z)Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 332
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;->copyOnWrite()V

    .line 333
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;->access$100(Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;Z)V

    return-object p0
.end method

.method public setUtf8Validation(Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;)Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 368
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;->access$300(Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures;Lcom/google/crypto/tink/shaded/protobuf/JavaFeaturesProto$JavaFeatures$Utf8Validation;)V

    return-object p0
.end method
