.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3268
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$6400()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 3261
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEnd()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1

    .line 3339
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->copyOnWrite()V

    .line 3340
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$6800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1

    .line 3386
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->copyOnWrite()V

    .line 3387
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$7100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)V

    return-object p0
.end method

.method public clearStart()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1

    .line 3303
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->copyOnWrite()V

    .line 3304
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$6600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;)V

    return-object p0
.end method

.method public getEnd()I
    .locals 1

    .line 3322
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getEnd()I

    move-result v0

    return v0
.end method

.method public getOptions()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
    .locals 1

    .line 3356
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getOptions()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    move-result-object v0

    return-object v0
.end method

.method public getStart()I
    .locals 1

    .line 3286
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getStart()I

    move-result v0

    return v0
.end method

.method public hasEnd()Z
    .locals 1

    .line 3314
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasEnd()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 3349
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .line 3278
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->hasStart()Z

    move-result v0

    return v0
.end method

.method public mergeOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3379
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->copyOnWrite()V

    .line 3380
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$7000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)V

    return-object p0
.end method

.method public setEnd(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3330
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->copyOnWrite()V

    .line 3331
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$6700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)V

    return-object p0
.end method

.method public setOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 3371
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->copyOnWrite()V

    .line 3372
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$6900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3362
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->copyOnWrite()V

    .line 3363
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$6900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)V

    return-object p0
.end method

.method public setStart(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3294
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->copyOnWrite()V

    .line 3295
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->access$6500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;I)V

    return-object p0
.end method
