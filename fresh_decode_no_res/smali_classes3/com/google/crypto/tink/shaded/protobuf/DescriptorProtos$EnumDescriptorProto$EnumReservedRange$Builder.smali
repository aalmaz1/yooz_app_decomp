.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9762
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->access$20500()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 9755
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEnd()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;
    .locals 1

    .line 9833
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->copyOnWrite()V

    .line 9834
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->access$20900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)V

    return-object p0
.end method

.method public clearStart()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;
    .locals 1

    .line 9797
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->copyOnWrite()V

    .line 9798
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->access$20700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;)V

    return-object p0
.end method

.method public getEnd()I
    .locals 1

    .line 9816
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->getEnd()I

    move-result v0

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 9780
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->getStart()I

    move-result v0

    return v0
.end method

.method public hasEnd()Z
    .locals 1

    .line 9808
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->hasEnd()Z

    move-result v0

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .line 9772
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->hasStart()Z

    move-result v0

    return v0
.end method

.method public setEnd(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9824
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->copyOnWrite()V

    .line 9825
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->access$20800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;I)V

    return-object p0
.end method

.method public setStart(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9788
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->copyOnWrite()V

    .line 9789
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;->access$20600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumDescriptorProto$EnumReservedRange;I)V

    return-object p0
.end method
