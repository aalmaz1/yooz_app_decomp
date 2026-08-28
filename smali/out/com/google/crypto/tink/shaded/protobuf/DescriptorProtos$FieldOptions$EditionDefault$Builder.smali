.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefaultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefaultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 17322
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;->access$35800()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .registers 2

    .line 17315
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEdition()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;
    .registers 2

    .line 17357
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->copyOnWrite()V

    .line 17358
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;->access$36000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;)V

    return-object p0
.end method

.method public clearValue()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;
    .registers 2

    .line 17403
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->copyOnWrite()V

    .line 17404
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;->access$36200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;)V

    return-object p0
.end method

.method public getEdition()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;
    .registers 2

    .line 17340
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;->getEdition()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 17376
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 17385
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;->getValueBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasEdition()Z
    .registers 2

    .line 17332
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;->hasEdition()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .registers 2

    .line 17368
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;->hasValue()Z

    move-result v0

    return v0
.end method

.method public setEdition(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17348
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->copyOnWrite()V

    .line 17349
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;->access$35900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;)V

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17394
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->copyOnWrite()V

    .line 17395
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;->access$36100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValueBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17414
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->copyOnWrite()V

    .line 17415
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;->access$36300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method
