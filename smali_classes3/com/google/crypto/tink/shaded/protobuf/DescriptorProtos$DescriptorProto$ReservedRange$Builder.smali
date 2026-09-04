.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3669
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->access$7300()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 3662
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEnd()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1

    .line 3740
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->copyOnWrite()V

    .line 3741
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->access$7700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;)V

    return-object p0
.end method

.method public clearStart()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1

    .line 3704
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->copyOnWrite()V

    .line 3705
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->access$7500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;)V

    return-object p0
.end method

.method public getEnd()I
    .locals 1

    .line 3723
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->getEnd()I

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 3687
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->getStart()I

    move-result v0

    return v0
.end method

.method public hasEnd()Z
    .locals 1

    .line 3715
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->hasEnd()Z

    move-result v0

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .line 3679
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->hasStart()Z

    move-result v0

    return v0
.end method

.method public setEnd(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3731
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->copyOnWrite()V

    .line 3732
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->access$7600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;I)V

    return-object p0
.end method

.method public setStart(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3695
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->copyOnWrite()V

    .line 3696
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;->access$7400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$DescriptorProto$ReservedRange;I)V

    return-object p0
.end method
