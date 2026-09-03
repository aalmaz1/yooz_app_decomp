.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePartOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23381
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$49200()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 23374
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearIsExtension()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1

    .line 23473
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->copyOnWrite()V

    .line 23474
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$49700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public clearNamePart()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1

    .line 23426
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->copyOnWrite()V

    .line 23427
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$49400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public getIsExtension()Z
    .locals 1

    .line 23456
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getIsExtension()Z

    move-result v0

    return v0
.end method

.method public getNamePart()Ljava/lang/String;
    .locals 1

    .line 23399
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getNamePart()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamePartBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 23408
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->getNamePartBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasIsExtension()Z
    .locals 1

    .line 23448
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasIsExtension()Z

    move-result v0

    return v0
.end method

.method public hasNamePart()Z
    .locals 1

    .line 23391
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->hasNamePart()Z

    move-result v0

    return v0
.end method

.method public setIsExtension(Z)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 23464
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->copyOnWrite()V

    .line 23465
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$49600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Z)V

    return-object p0
.end method

.method public setNamePart(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 23417
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->copyOnWrite()V

    .line 23418
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$49300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNamePartBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 23437
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->copyOnWrite()V

    .line 23438
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;->access$49500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method
