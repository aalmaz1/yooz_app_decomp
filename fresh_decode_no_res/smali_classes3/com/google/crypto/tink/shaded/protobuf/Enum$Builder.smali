.class public final Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "Enum.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/EnumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Enum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/Enum;",
        "Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/EnumOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 486
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$000()Lcom/google/crypto/tink/shaded/protobuf/Enum;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/Enum$1;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllEnumvalue(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/EnumValue;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;"
        }
    .end annotation

    .line 620
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 621
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$700(Lcom/google/crypto/tink/shaded/protobuf/Enum;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;"
        }
    .end annotation

    .line 722
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 723
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1300(Lcom/google/crypto/tink/shaded/protobuf/Enum;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addEnumvalue(ILcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
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

    .line 610
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 611
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    .line 612
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 611
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public addEnumvalue(ILcom/google/crypto/tink/shaded/protobuf/EnumValue;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
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

    .line 592
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 593
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public addEnumvalue(Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 601
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public addEnumvalue(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 583
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 584
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
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

    .line 712
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 713
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    .line 714
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 713
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1200(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
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

    .line 694
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 695
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1200(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 703
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 704
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 685
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 686
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public clearEdition()Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1

    .line 869
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 870
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$2300(Lcom/google/crypto/tink/shaded/protobuf/Enum;)V

    return-object p0
.end method

.method public clearEnumvalue()Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1

    .line 628
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 629
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$800(Lcom/google/crypto/tink/shaded/protobuf/Enum;)V

    return-object p0
.end method

.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 524
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$200(Lcom/google/crypto/tink/shaded/protobuf/Enum;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1

    .line 730
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 731
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1400(Lcom/google/crypto/tink/shaded/protobuf/Enum;)V

    return-object p0
.end method

.method public clearSourceContext()Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1

    .line 785
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 786
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1800(Lcom/google/crypto/tink/shaded/protobuf/Enum;)V

    return-object p0
.end method

.method public clearSyntax()Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1

    .line 831
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 832
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$2100(Lcom/google/crypto/tink/shaded/protobuf/Enum;)V

    return-object p0
.end method

.method public getEdition()Ljava/lang/String;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getEdition()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEditionBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getEditionBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEnumvalue(I)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 558
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getEnumvalue(I)Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    move-result-object p1

    return-object p1
.end method

.method public getEnumvalueCount()I
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getEnumvalueCount()I

    move-result v0

    return v0
.end method

.method public getEnumvalueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/EnumValue;",
            ">;"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    .line 545
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getEnumvalueList()Ljava/util/List;

    move-result-object v0

    .line 544
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getOptionsCount()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    .line 647
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 646
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSourceContext()Lcom/google/crypto/tink/shaded/protobuf/SourceContext;
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getSourceContext()Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 796
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public hasSourceContext()Z
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->hasSourceContext()Z

    move-result v0

    return v0
.end method

.method public mergeSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 778
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 779
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1700(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public removeEnumvalue(I)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 636
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 637
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$900(Lcom/google/crypto/tink/shaded/protobuf/Enum;I)V

    return-object p0
.end method

.method public removeOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 738
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 739
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Enum;I)V

    return-object p0
.end method

.method public setEdition(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 860
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 861
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$2200(Lcom/google/crypto/tink/shaded/protobuf/Enum;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEditionBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 880
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 881
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$2400(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEnumvalue(ILcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
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

    .line 574
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 575
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    .line 576
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 575
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public setEnumvalue(ILcom/google/crypto/tink/shaded/protobuf/EnumValue;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
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

    .line 565
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 514
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 515
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$100(Lcom/google/crypto/tink/shaded/protobuf/Enum;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 534
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 535
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$300(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
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

    .line 676
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 677
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    .line 678
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 677
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
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

    .line 667
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 668
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/Enum;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 770
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 771
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/SourceContext$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/SourceContext;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public setSourceContext(Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 761
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 762
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/SourceContext;)V

    return-object p0
.end method

.method public setSyntax(Lcom/google/crypto/tink/shaded/protobuf/Syntax;)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 822
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 823
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$2000(Lcom/google/crypto/tink/shaded/protobuf/Enum;Lcom/google/crypto/tink/shaded/protobuf/Syntax;)V

    return-object p0
.end method

.method public setSyntaxValue(I)Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 804
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->copyOnWrite()V

    .line 805
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Enum$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Enum;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Enum;->access$1900(Lcom/google/crypto/tink/shaded/protobuf/Enum;I)V

    return-object p0
.end method
