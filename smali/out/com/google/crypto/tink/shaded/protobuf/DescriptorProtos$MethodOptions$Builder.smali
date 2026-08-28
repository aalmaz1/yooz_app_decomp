.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 22738
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$47700()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .registers 2

    .line 22731
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;"
        }
    .end annotation

    .line 22942
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22943
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
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

    .line 22932
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22933
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    .line 22934
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    .line 22933
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
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

    .line 22914
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22915
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 22923
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22924
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22905
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22906
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearDeprecated()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .registers 2

    .line 22773
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22774
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$47900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;)V

    return-object p0
.end method

.method public clearFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .registers 2

    .line 22856
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22857
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;)V

    return-object p0
.end method

.method public clearIdempotencyLevel()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .registers 2

    .line 22809
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22810
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;)V

    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .registers 2

    .line 22950
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22951
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;)V

    return-object p0
.end method

.method public getDeprecated()Z
    .registers 2

    .line 22756
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->getDeprecated()Z

    move-result v0

    return v0
.end method

.method public getFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
    .registers 2

    .line 22826
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->getFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v0

    return-object v0
.end method

.method public getIdempotencyLevel()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;
    .registers 2

    .line 22792
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->getIdempotencyLevel()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 22880
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOption(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    return-object p1
.end method

.method public getUninterpretedOptionCount()I
    .registers 2

    .line 22874
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOptionCount()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 22866
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    .line 22867
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v0

    .line 22866
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDeprecated()Z
    .registers 2

    .line 22748
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->hasDeprecated()Z

    move-result v0

    return v0
.end method

.method public hasFeatures()Z
    .registers 2

    .line 22819
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->hasFeatures()Z

    move-result v0

    return v0
.end method

.method public hasIdempotencyLevel()Z
    .registers 2

    .line 22784
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->hasIdempotencyLevel()Z

    move-result v0

    return v0
.end method

.method public mergeFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22849
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22850
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public removeUninterpretedOption(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 22958
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22959
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$49000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;I)V

    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22764
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22765
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$47800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Z)V

    return-object p0
.end method

.method public setFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 22841
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22842
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public setFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22832
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22833
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public setIdempotencyLevel(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 22800
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22801
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$IdempotencyLevel;)V

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
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

    .line 22896
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22897
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    .line 22898
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    .line 22897
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;
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

    .line 22887
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->copyOnWrite()V

    .line 22888
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;->access$48500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$MethodOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method
