.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21332
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$44600()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 21325
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;"
        }
    .end annotation

    .line 21583
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21584
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$46000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
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

    .line 21573
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21574
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    .line 21575
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    .line 21574
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
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

    .line 21555
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21556
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 21564
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21565
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 21546
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21547
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearDebugRedact()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1

    .line 21450
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21451
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;)V

    return-object p0
.end method

.method public clearDeprecated()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1

    .line 21367
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21368
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$44800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;)V

    return-object p0
.end method

.method public clearFeatureSupport()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1

    .line 21497
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21498
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;)V

    return-object p0
.end method

.method public clearFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1

    .line 21414
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21415
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;)V

    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1

    .line 21591
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21592
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$46100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;)V

    return-object p0
.end method

.method public getDebugRedact()Z
    .locals 1

    .line 21433
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->getDebugRedact()Z

    move-result v0

    return v0
.end method

.method public getDeprecated()Z
    .locals 1

    .line 21350
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->getDeprecated()Z

    move-result v0

    return v0
.end method

.method public getFeatureSupport()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;
    .locals 1

    .line 21467
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->getFeatureSupport()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
    .locals 1

    .line 21384
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->getFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v0

    return-object v0
.end method

.method public getUninterpretedOption(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 21521
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->getUninterpretedOption(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    return-object p1
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 21515
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->getUninterpretedOptionCount()I

    move-result v0

    return v0
.end method

.method public getUninterpretedOptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation

    .line 21507
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    .line 21508
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v0

    .line 21507
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDebugRedact()Z
    .locals 1

    .line 21425
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->hasDebugRedact()Z

    move-result v0

    return v0
.end method

.method public hasDeprecated()Z
    .locals 1

    .line 21342
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->hasDeprecated()Z

    move-result v0

    return v0
.end method

.method public hasFeatureSupport()Z
    .locals 1

    .line 21460
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->hasFeatureSupport()Z

    move-result v0

    return v0
.end method

.method public hasFeatures()Z
    .locals 1

    .line 21377
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->hasFeatures()Z

    move-result v0

    return v0
.end method

.method public mergeFeatureSupport(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 21490
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21491
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;)V

    return-object p0
.end method

.method public mergeFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 21407
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21408
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public removeUninterpretedOption(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 21599
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21600
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$46200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;I)V

    return-object p0
.end method

.method public setDebugRedact(Z)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 21441
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21442
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;Z)V

    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 21358
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21359
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$44700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;Z)V

    return-object p0
.end method

.method public setFeatureSupport(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 21482
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21483
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;)V

    return-object p0
.end method

.method public setFeatureSupport(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 21473
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21474
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;)V

    return-object p0
.end method

.method public setFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 21399
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21400
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$44900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public setFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 21390
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21391
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$44900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
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

    .line 21537
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21538
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    .line 21539
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    .line 21538
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;
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

    .line 21528
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->copyOnWrite()V

    .line 21529
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;->access$45700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$EnumValueOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method
