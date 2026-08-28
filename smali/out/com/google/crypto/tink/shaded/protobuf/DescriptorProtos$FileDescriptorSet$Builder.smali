.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 403
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;->access$000()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .registers 2

    .line 396
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFile(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;"
        }
    .end annotation

    .line 488
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 489
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;->access$400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addFile(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 478
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 479
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 480
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 479
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;->access$300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0
.end method

.method public addFile(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 461
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;->access$300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0
.end method

.method public addFile(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 469
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 470
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;->access$200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0
.end method

.method public addFile(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 451
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 452
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;->access$200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0
.end method

.method public clearFile()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .registers 2

    .line 496
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 497
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;->access$500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;)V

    return-object p0
.end method

.method public getFile(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;->getFile(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p1

    return-object p1
.end method

.method public getFileCount()I
    .registers 2

    .line 420
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;->getFileCount()I

    move-result v0

    return v0
.end method

.method public getFileList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 412
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 413
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;->getFileList()Ljava/util/List;

    move-result-object v0

    .line 412
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeFile(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 504
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 505
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;->access$600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;I)V

    return-object p0
.end method

.method public setFile(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 443
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;

    .line 444
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;

    .line 443
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;->access$100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0
.end method

.method public setFile(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 433
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->copyOnWrite()V

    .line 434
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;->access$100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorSet;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FileDescriptorProto;)V

    return-object p0
.end method
