.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProtoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11729
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$24600()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 11722
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllMethod(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;"
        }
    .end annotation

    .line 11871
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11872
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$25300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addMethod(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
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

    .line 11861
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11862
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 11863
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 11862
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$25200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-object p0
.end method

.method public addMethod(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
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

    .line 11843
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11844
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$25200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-object p0
.end method

.method public addMethod(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 11852
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11853
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$25100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-object p0
.end method

.method public addMethod(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11834
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11835
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$25100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-object p0
.end method

.method public clearMethod()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1

    .line 11879
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11880
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$25400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;)V

    return-object p0
.end method

.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1

    .line 11774
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11775
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$24800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1

    .line 11934
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11935
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$25800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;)V

    return-object p0
.end method

.method public getMethod(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11809
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethod(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;

    move-result-object p1

    return-object p1
.end method

.method public getMethodCount()I
    .locals 1

    .line 11803
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodCount()I

    move-result v0

    return v0
.end method

.method public getMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation

    .line 11795
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 11796
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->getMethodList()Ljava/util/List;

    move-result-object v0

    .line 11795
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 11747
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 11756
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .line 11904
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->getOptions()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;

    move-result-object v0

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .line 11739
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasName()Z

    move-result v0

    return v0
.end method

.method public hasOptions()Z
    .locals 1

    .line 11897
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasOptions()Z

    move-result v0

    return v0
.end method

.method public mergeOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11927
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11928
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$25700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;)V

    return-object p0
.end method

.method public removeMethod(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 11887
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11888
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$25500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;I)V

    return-object p0
.end method

.method public setMethod(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
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

    .line 11825
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11826
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 11827
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 11826
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$25000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-object p0
.end method

.method public setMethod(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
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

    .line 11816
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11817
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$25000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodDescriptorProto;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11765
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11766
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$24700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11785
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11786
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$24900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 11919
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11920
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$25600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;)V

    return-object p0
.end method

.method public setOptions(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11910
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->copyOnWrite()V

    .line 11911
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;->access$25600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ServiceOptions;)V

    return-object p0
.end method
