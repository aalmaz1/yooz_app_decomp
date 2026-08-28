.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaultsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaultsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 26495
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$54500()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .registers 2

    .line 26488
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDefaults(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;"
        }
    .end annotation

    .line 26580
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->copyOnWrite()V

    .line 26581
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$54900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addDefaults(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
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

    .line 26570
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->copyOnWrite()V

    .line 26571
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    .line 26572
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    .line 26571
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$54800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;)V

    return-object p0
.end method

.method public addDefaults(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
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

    .line 26552
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->copyOnWrite()V

    .line 26553
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$54800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;)V

    return-object p0
.end method

.method public addDefaults(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 26561
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->copyOnWrite()V

    .line 26562
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$54700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;)V

    return-object p0
.end method

.method public addDefaults(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 26543
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->copyOnWrite()V

    .line 26544
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$54700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;)V

    return-object p0
.end method

.method public clearDefaults()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
    .registers 2

    .line 26588
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->copyOnWrite()V

    .line 26589
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$55000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;)V

    return-object p0
.end method

.method public clearMaximumEdition()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
    .registers 2

    .line 26668
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->copyOnWrite()V

    .line 26669
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$55500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;)V

    return-object p0
.end method

.method public clearMinimumEdition()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
    .registers 2

    .line 26632
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->copyOnWrite()V

    .line 26633
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$55300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;)V

    return-object p0
.end method

.method public getDefaults(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 26518
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->getDefaults(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultsCount()I
    .registers 2

    .line 26512
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->getDefaultsCount()I

    move-result v0

    return v0
.end method

.method public getDefaultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;",
            ">;"
        }
    .end annotation

    .line 26504
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    .line 26505
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->getDefaultsList()Ljava/util/List;

    move-result-object v0

    .line 26504
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumEdition()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;
    .registers 2

    .line 26651
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->getMaximumEdition()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumEdition()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;
    .registers 2

    .line 26615
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->getMinimumEdition()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;

    move-result-object v0

    return-object v0
.end method

.method public hasMaximumEdition()Z
    .registers 2

    .line 26643
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->hasMaximumEdition()Z

    move-result v0

    return v0
.end method

.method public hasMinimumEdition()Z
    .registers 2

    .line 26607
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->hasMinimumEdition()Z

    move-result v0

    return v0
.end method

.method public removeDefaults(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 26596
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->copyOnWrite()V

    .line 26597
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$55100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;I)V

    return-object p0
.end method

.method public setDefaults(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
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

    .line 26534
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->copyOnWrite()V

    .line 26535
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    .line 26536
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;

    .line 26535
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$54600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;)V

    return-object p0
.end method

.method public setDefaults(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
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

    .line 26525
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->copyOnWrite()V

    .line 26526
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$54600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$FeatureSetEditionDefault;)V

    return-object p0
.end method

.method public setMaximumEdition(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 26659
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->copyOnWrite()V

    .line 26660
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$55400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;)V

    return-object p0
.end method

.method public setMinimumEdition(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 26623
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->copyOnWrite()V

    .line 26624
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;->access$55200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSetDefaults;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$Edition;)V

    return-object p0
.end method
