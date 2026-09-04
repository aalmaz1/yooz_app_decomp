.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9278
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->access$19700()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 9271
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 9323
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->copyOnWrite()V

    .line 9324
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->access$19900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1

    .line 9381
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->copyOnWrite()V

    .line 9382
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->access$20300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 9296
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 9305
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;
    .locals 1

    .line 9351
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->getOptions()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .line 9288
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 9344
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public mergeOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9374
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->copyOnWrite()V

    .line 9375
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->access$20200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9314
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->copyOnWrite()V

    .line 9315
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->access$19800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9334
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->copyOnWrite()V

    .line 9335
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->access$20000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 9366
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->copyOnWrite()V

    .line 9367
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->access$20100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9357
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->copyOnWrite()V

    .line 9358
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;->access$20100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$OneofOptions;)V

    return-object p0
.end method
