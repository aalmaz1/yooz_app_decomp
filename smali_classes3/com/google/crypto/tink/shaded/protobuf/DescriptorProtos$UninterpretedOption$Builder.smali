.class public final Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOptionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 23990
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$49900()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$1;)V
    .locals 0

    .line 23983
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllName(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;"
        }
    .end annotation

    .line 24075
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24076
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$50300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addName(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
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

    .line 24065
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24066
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    .line 24067
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 24066
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$50200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public addName(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
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

    .line 24047
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24048
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$50200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public addName(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 24056
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24057
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$50100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public addName(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 24038
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24039
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$50100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public clearAggregateValue()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 24338
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24339
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$51800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearDoubleValue()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 24256
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24257
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$51400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearIdentifierValue()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 24137
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24138
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$50700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 24083
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24084
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$50400(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearNegativeIntValue()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 24220
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24221
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$51200(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearPositiveIntValue()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 24184
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24185
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$51000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public clearStringValue()Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1

    .line 24292
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24293
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$51600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;)V

    return-object p0
.end method

.method public getAggregateValue()Ljava/lang/String;
    .locals 1

    .line 24311
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->getAggregateValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateValueBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 24320
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->getAggregateValueBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDoubleValue()D
    .locals 2

    .line 24239
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->getDoubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getIdentifierValue()Ljava/lang/String;
    .locals 1

    .line 24110
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifierValueBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 24119
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->getIdentifierValueBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 24013
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->getName(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    move-result-object p1

    return-object p1
.end method

.method public getNameCount()I
    .locals 1

    .line 24007
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->getNameCount()I

    move-result v0

    return v0
.end method

.method public getNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;",
            ">;"
        }
    .end annotation

    .line 23999
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    .line 24000
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->getNameList()Ljava/util/List;

    move-result-object v0

    .line 23999
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNegativeIntValue()J
    .locals 2

    .line 24203
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->getNegativeIntValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPositiveIntValue()J
    .locals 2

    .line 24167
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->getPositiveIntValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStringValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 24275
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->getStringValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAggregateValue()Z
    .locals 1

    .line 24303
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->hasAggregateValue()Z

    move-result v0

    return v0
.end method

.method public hasDoubleValue()Z
    .locals 1

    .line 24231
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->hasDoubleValue()Z

    move-result v0

    return v0
.end method

.method public hasIdentifierValue()Z
    .locals 1

    .line 24102
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->hasIdentifierValue()Z

    move-result v0

    return v0
.end method

.method public hasNegativeIntValue()Z
    .locals 1

    .line 24195
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->hasNegativeIntValue()Z

    move-result v0

    return v0
.end method

.method public hasPositiveIntValue()Z
    .locals 1

    .line 24159
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->hasPositiveIntValue()Z

    move-result v0

    return v0
.end method

.method public hasStringValue()Z
    .locals 1

    .line 24267
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->hasStringValue()Z

    move-result v0

    return v0
.end method

.method public removeName(I)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 24091
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24092
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$50500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;I)V

    return-object p0
.end method

.method public setAggregateValue(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 24329
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24330
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$51700(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAggregateValueBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 24349
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24350
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$51900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDoubleValue(D)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 24247
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24248
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$51300(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;D)V

    return-object p0
.end method

.method public setIdentifierValue(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 24128
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24129
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$50600(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdentifierValueBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 24148
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24149
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$50800(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setName(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
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

    .line 24029
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24030
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    .line 24031
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;

    .line 24030
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$50000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public setName(ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
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

    .line 24020
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24021
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$50000(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;ILcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$NamePart;)V

    return-object p0
.end method

.method public setNegativeIntValue(J)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 24211
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24212
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$51100(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;J)V

    return-object p0
.end method

.method public setPositiveIntValue(J)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 24175
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24176
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$50900(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;J)V

    return-object p0
.end method

.method public setStringValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 24283
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->copyOnWrite()V

    .line 24284
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;->access$51500(Lcom/google/crypto/tink/shaded/protobuf/DescriptorProtos$UninterpretedOption;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method
