.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 18833
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$37600()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .registers 2

    .line 18826
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllEditionDefaults(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;"
        }
    .end annotation

    .line 19309
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19310
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllTargets(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;"
        }
    .end annotation

    .line 19215
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19216
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$39700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;"
        }
    .end annotation

    .line 19505
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19506
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$41400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addEditionDefaults(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
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

    .line 19299
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19300
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    .line 19301
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    .line 19300
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;)V

    return-object p0
.end method

.method public addEditionDefaults(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
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

    .line 19281
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19282
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;)V

    return-object p0
.end method

.method public addEditionDefaults(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 19290
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19291
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;)V

    return-object p0
.end method

.method public addEditionDefaults(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19272
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19273
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;)V

    return-object p0
.end method

.method public addTargets(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19204
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19205
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$39600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;)V

    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
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

    .line 19495
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19496
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    .line 19497
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    .line 19496
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$41300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
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

    .line 19477
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19478
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$41300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 19486
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19487
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$41200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19468
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19469
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$41200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearCtype()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 18868
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 18869
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$37800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public clearDebugRedact()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 19120
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19121
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$39200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public clearDeprecated()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 19048
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19049
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$38800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public clearEditionDefaults()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 19317
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19318
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public clearFeatureSupport()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 19419
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19420
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$41000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public clearFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 19372
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19373
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public clearJstype()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 18940
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 18941
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$38200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public clearLazy()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 18976
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 18977
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$38400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public clearPacked()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 18904
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 18905
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$38000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public clearRetention()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 19156
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19157
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$39400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public clearTargets()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 19223
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19224
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$39800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 19513
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19514
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$41500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public clearUnverifiedLazy()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 19012
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19013
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$38600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public clearWeak()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 2

    .line 19084
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19085
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$39000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;)V

    return-object p0
.end method

.method public getCtype()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$CType;
    .registers 2

    .line 18851
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getCtype()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$CType;

    move-result-object v0

    return-object v0
.end method

.method public getDebugRedact()Z
    .registers 2

    .line 19103
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getDebugRedact()Z

    move-result v0

    return v0
.end method

.method public getDeprecated()Z
    .registers 2

    .line 19031
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getDeprecated()Z

    move-result v0

    return v0
.end method

.method public getEditionDefaults(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 19247
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getEditionDefaults(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    move-result-object p1

    return-object p1
.end method

.method public getEditionDefaultsCount()I
    .registers 2

    .line 19241
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getEditionDefaultsCount()I

    move-result v0

    return v0
.end method

.method public getEditionDefaultsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;",
            ">;"
        }
    .end annotation

    .line 19233
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    .line 19234
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getEditionDefaultsList()Ljava/util/List;

    move-result-object v0

    .line 19233
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureSupport()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;
    .registers 2

    .line 19389
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getFeatureSupport()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
    .registers 2

    .line 19342
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    move-result-object v0

    return-object v0
.end method

.method public getJstype()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$JSType;
    .registers 2

    .line 18923
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getJstype()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$JSType;

    move-result-object v0

    return-object v0
.end method

.method public getLazy()Z
    .registers 2

    .line 18959
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getLazy()Z

    move-result v0

    return v0
.end method

.method public getPacked()Z
    .registers 2

    .line 18887
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getPacked()Z

    move-result v0

    return v0
.end method

.method public getRetention()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionRetention;
    .registers 2

    .line 19139
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getRetention()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionRetention;

    move-result-object v0

    return-object v0
.end method

.method public getTargets(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 19184
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getTargets(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;

    move-result-object p1

    return-object p1
.end method

.method public getTargetsCount()I
    .registers 2

    .line 19175
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getTargetsCount()I

    move-result v0

    return v0
.end method

.method public getTargetsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;",
            ">;"
        }
    .end annotation

    .line 19167
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getTargetsList()Ljava/util/List;

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

    .line 19443
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOption(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    return-object p1
.end method

.method public getUninterpretedOptionCount()I
    .registers 2

    .line 19437
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionCount()I

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

    .line 19429
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    .line 19430
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v0

    .line 19429
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUnverifiedLazy()Z
    .registers 2

    .line 18995
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getUnverifiedLazy()Z

    move-result v0

    return v0
.end method

.method public getWeak()Z
    .registers 2

    .line 19067
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->getWeak()Z

    move-result v0

    return v0
.end method

.method public hasCtype()Z
    .registers 2

    .line 18843
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->hasCtype()Z

    move-result v0

    return v0
.end method

.method public hasDebugRedact()Z
    .registers 2

    .line 19095
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->hasDebugRedact()Z

    move-result v0

    return v0
.end method

.method public hasDeprecated()Z
    .registers 2

    .line 19023
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->hasDeprecated()Z

    move-result v0

    return v0
.end method

.method public hasFeatureSupport()Z
    .registers 2

    .line 19382
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->hasFeatureSupport()Z

    move-result v0

    return v0
.end method

.method public hasFeatures()Z
    .registers 2

    .line 19335
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->hasFeatures()Z

    move-result v0

    return v0
.end method

.method public hasJstype()Z
    .registers 2

    .line 18915
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->hasJstype()Z

    move-result v0

    return v0
.end method

.method public hasLazy()Z
    .registers 2

    .line 18951
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->hasLazy()Z

    move-result v0

    return v0
.end method

.method public hasPacked()Z
    .registers 2

    .line 18879
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->hasPacked()Z

    move-result v0

    return v0
.end method

.method public hasRetention()Z
    .registers 2

    .line 19131
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->hasRetention()Z

    move-result v0

    return v0
.end method

.method public hasUnverifiedLazy()Z
    .registers 2

    .line 18987
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->hasUnverifiedLazy()Z

    move-result v0

    return v0
.end method

.method public hasWeak()Z
    .registers 2

    .line 19059
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->hasWeak()Z

    move-result v0

    return v0
.end method

.method public mergeFeatureSupport(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19412
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19413
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;)V

    return-object p0
.end method

.method public mergeFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19365
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19366
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public removeEditionDefaults(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 19325
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19326
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;I)V

    return-object p0
.end method

.method public removeUninterpretedOption(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 19521
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19522
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$41600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;I)V

    return-object p0
.end method

.method public setCtype(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18859
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 18860
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$37700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$CType;)V

    return-object p0
.end method

.method public setDebugRedact(Z)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19111
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19112
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$39100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Z)V

    return-object p0
.end method

.method public setDeprecated(Z)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19039
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19040
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$38700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Z)V

    return-object p0
.end method

.method public setEditionDefaults(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
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

    .line 19263
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19264
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    .line 19265
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    .line 19264
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$39900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;)V

    return-object p0
.end method

.method public setEditionDefaults(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
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

    .line 19254
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19255
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$39900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$EditionDefault;)V

    return-object p0
.end method

.method public setFeatureSupport(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 19404
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19405
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;)V

    return-object p0
.end method

.method public setFeatureSupport(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19395
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19396
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;)V

    return-object p0
.end method

.method public setFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 19357
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19358
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public setFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19348
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19349
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$40500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public setJstype(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$JSType;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18931
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 18932
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$38100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$JSType;)V

    return-object p0
.end method

.method public setLazy(Z)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18967
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 18968
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$38300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Z)V

    return-object p0
.end method

.method public setPacked(Z)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 18895
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 18896
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$37900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Z)V

    return-object p0
.end method

.method public setRetention(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionRetention;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19147
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19148
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$39300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionRetention;)V

    return-object p0
.end method

.method public setTargets(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
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

    .line 19194
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19195
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$39500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;)V

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
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

    .line 19459
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19460
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    .line 19461
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    .line 19460
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$41100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
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

    .line 19450
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19451
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$41100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public setUnverifiedLazy(Z)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19003
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19004
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$38500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Z)V

    return-object p0
.end method

.method public setWeak(Z)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 19075
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->copyOnWrite()V

    .line 19076
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;->access$38900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FieldOptions;Z)V

    return-object p0
.end method
