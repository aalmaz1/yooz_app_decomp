.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$LocationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 27333
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$55700()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 27326
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLeadingDetachedComments(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
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
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;"
        }
    .end annotation

    .line 27656
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27657
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$57400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllPath(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
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
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;"
        }
    .end annotation

    .line 27392
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27393
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$56000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSpan(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
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
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;"
        }
    .end annotation

    .line 27461
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27462
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$56400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLeadingDetachedComments(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 27645
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27646
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$57300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/String;)V

    return-object p0
.end method

.method public addLeadingDetachedCommentsBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 27676
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27677
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$57600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public addPath(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 27381
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27382
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$55900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;I)V

    return-object p0
.end method

.method public addSpan(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 27450
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27451
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$56300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;I)V

    return-object p0
.end method

.method public clearLeadingComments()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 27516
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27517
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$56700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    return-object p0
.end method

.method public clearLeadingDetachedComments()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 27665
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27666
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$57500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    return-object p0
.end method

.method public clearPath()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 27401
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27402
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$56100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    return-object p0
.end method

.method public clearSpan()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 27470
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27471
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$56500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    return-object p0
.end method

.method public clearTrailingComments()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1

    .line 27573
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27574
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$57000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;)V

    return-object p0
.end method

.method public getLeadingComments()Ljava/lang/String;
    .locals 1

    .line 27489
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingComments()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLeadingCommentsBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 27498
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingCommentsBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLeadingDetachedComments(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 27614
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedComments(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLeadingDetachedCommentsBytes(I)Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 27624
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsBytes(I)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getLeadingDetachedCommentsCount()I
    .locals 1

    .line 27605
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsCount()I

    move-result v0

    return v0
.end method

.method public getLeadingDetachedCommentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27596
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 27597
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getLeadingDetachedCommentsList()Ljava/util/List;

    move-result-object v0

    .line 27596
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPath(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 27362
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPath(I)I

    move-result p1

    return p1
.end method

.method public getPathCount()I
    .locals 1

    .line 27353
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathCount()I

    move-result v0

    return v0
.end method

.method public getPathList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 27344
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 27345
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getPathList()Ljava/util/List;

    move-result-object v0

    .line 27344
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpan(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 27431
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpan(I)I

    move-result p1

    return p1
.end method

.method public getSpanCount()I
    .locals 1

    .line 27422
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanCount()I

    move-result v0

    return v0
.end method

.method public getSpanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 27413
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    .line 27414
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getSpanList()Ljava/util/List;

    move-result-object v0

    .line 27413
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrailingComments()Ljava/lang/String;
    .locals 1

    .line 27546
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getTrailingComments()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrailingCommentsBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 27555
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->getTrailingCommentsBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasLeadingComments()Z
    .locals 1

    .line 27481
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasLeadingComments()Z

    move-result v0

    return v0
.end method

.method public hasTrailingComments()Z
    .locals 1

    .line 27538
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->hasTrailingComments()Z

    move-result v0

    return v0
.end method

.method public setLeadingComments(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 27507
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27508
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$56600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLeadingCommentsBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 27527
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27528
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$56800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLeadingDetachedComments(ILjava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
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

    .line 27634
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27635
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$57200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;ILjava/lang/String;)V

    return-object p0
.end method

.method public setPath(II)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
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

    .line 27371
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27372
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$55800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;II)V

    return-object p0
.end method

.method public setSpan(II)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
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

    .line 27440
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27441
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$56200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;II)V

    return-object p0
.end method

.method public setTrailingComments(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 27564
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27565
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$56900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTrailingCommentsBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 27584
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->copyOnWrite()V

    .line 27585
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;->access$57100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$SourceCodeInfo$Location;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method
