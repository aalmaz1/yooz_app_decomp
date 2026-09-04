.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6984
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$14800()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 6977
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDeclaration(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;"
        }
    .end annotation

    .line 7171
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7172
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllUninterpretedOption(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;"
        }
    .end annotation

    .line 7069
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7070
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addDeclaration(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
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

    .line 7161
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7162
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 7163
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;

    .line 7162
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V

    return-object p0
.end method

.method public addDeclaration(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
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

    .line 7143
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7144
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V

    return-object p0
.end method

.method public addDeclaration(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7152
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7153
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V

    return-object p0
.end method

.method public addDeclaration(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7134
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7135
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V

    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
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

    .line 7059
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7060
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 7061
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    .line 7060
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
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

    .line 7041
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7042
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7050
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7051
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public addUninterpretedOption(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7032
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7033
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearDeclaration()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1

    .line 7179
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7180
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)V

    return-object p0
.end method

.method public clearFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1

    .line 7234
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7235
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$16300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)V

    return-object p0
.end method

.method public clearUninterpretedOption()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1

    .line 7077
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7078
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)V

    return-object p0
.end method

.method public clearVerification()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1

    .line 7270
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7271
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$16500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;)V

    return-object p0
.end method

.method public getDeclaration(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7109
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->getDeclaration(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;

    move-result-object p1

    return-object p1
.end method

.method public getDeclarationCount()I
    .locals 1

    .line 7103
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->getDeclarationCount()I

    move-result v0

    return v0
.end method

.method public getDeclarationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;",
            ">;"
        }
    .end annotation

    .line 7095
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 7096
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->getDeclarationList()Ljava/util/List;

    move-result-object v0

    .line 7095
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;
    .locals 1

    .line 7204
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->getFeatures()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

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

    .line 7007
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->getUninterpretedOption(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object p1

    return-object p1
.end method

.method public getUninterpretedOptionCount()I
    .locals 1

    .line 7001
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->getUninterpretedOptionCount()I

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

    .line 6993
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 6994
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->getUninterpretedOptionList()Ljava/util/List;

    move-result-object v0

    .line 6993
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVerification()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;
    .locals 1

    .line 7253
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->getVerification()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;

    move-result-object v0

    return-object v0
.end method

.method public hasFeatures()Z
    .locals 1

    .line 7197
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->hasFeatures()Z

    move-result v0

    return v0
.end method

.method public hasVerification()Z
    .locals 1

    .line 7245
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->hasVerification()Z

    move-result v0

    return v0
.end method

.method public mergeFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7227
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7228
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$16200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public removeDeclaration(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7187
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7188
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$16000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;I)V

    return-object p0
.end method

.method public removeUninterpretedOption(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 7085
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7086
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;I)V

    return-object p0
.end method

.method public setDeclaration(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
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

    .line 7125
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7126
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 7127
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;

    .line 7126
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V

    return-object p0
.end method

.method public setDeclaration(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
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

    .line 7116
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7117
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$15500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Declaration;)V

    return-object p0
.end method

.method public setFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 7219
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7220
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$16100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public setFeatures(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7210
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7211
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$16100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$FeatureSet;)V

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
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

    .line 7023
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7024
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    .line 7025
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    .line 7024
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$14900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public setUninterpretedOption(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
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

    .line 7014
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7015
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$14900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public setVerification(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7261
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->copyOnWrite()V

    .line 7262
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;->access$16400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$ExtensionRangeOptions$VerificationState;)V

    return-object p0
.end method
