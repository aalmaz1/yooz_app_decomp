.class public final Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "Method.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/MethodOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/Method;",
        "Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/MethodOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 444
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$000()Lcom/google/crypto/tink/shaded/protobuf/Method;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/Method$1;)V
    .locals 0

    .line 437
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;"
        }
    .end annotation

    .line 732
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 733
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1700(Lcom/google/crypto/tink/shaded/protobuf/Method;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 722
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 723
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    .line 724
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 723
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Method;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 704
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 705
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Method;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 713
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 714
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 695
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 696
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 481
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 482
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$200(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 740
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 741
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1800(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    return-object p0
.end method

.method public clearRequestStreaming()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 569
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 570
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$800(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    return-object p0
.end method

.method public clearRequestTypeUrl()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 530
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 531
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    return-object p0
.end method

.method public clearResponseStreaming()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 646
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 647
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1300(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    return-object p0
.end method

.method public clearResponseTypeUrl()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 608
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    return-object p0
.end method

.method public clearSyntax()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 794
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 795
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$2200(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

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

    .line 670
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getOptionsCount()I

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

    .line 656
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    .line 657
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 656
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStreaming()Z
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getRequestStreaming()Z

    move-result v0

    return v0
.end method

.method public getRequestTypeUrl()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTypeUrlBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getRequestTypeUrlBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStreaming()Z
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getResponseStreaming()Z

    move-result v0

    return v0
.end method

.method public getResponseTypeUrl()Ljava/lang/String;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypeUrlBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getResponseTypeUrlBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public removeOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 748
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 749
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1900(Lcom/google/crypto/tink/shaded/protobuf/Method;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 473
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$100(Lcom/google/crypto/tink/shaded/protobuf/Method;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 493
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$300(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 686
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 687
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    .line 688
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 687
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1400(Lcom/google/crypto/tink/shaded/protobuf/Method;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 677
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1400(Lcom/google/crypto/tink/shaded/protobuf/Method;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setRequestStreaming(Z)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 560
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 561
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$700(Lcom/google/crypto/tink/shaded/protobuf/Method;Z)V

    return-object p0
.end method

.method public setRequestTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 521
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 522
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Method;Ljava/lang/String;)V

    return-object p0
.end method

.method public setRequestTypeUrlBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 541
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 542
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResponseStreaming(Z)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 637
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 638
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1200(Lcom/google/crypto/tink/shaded/protobuf/Method;Z)V

    return-object p0
.end method

.method public setResponseTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 598
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 599
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$900(Lcom/google/crypto/tink/shaded/protobuf/Method;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResponseTypeUrlBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 618
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 619
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSyntax(Lcom/google/crypto/tink/shaded/protobuf/Syntax;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 785
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 786
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$2100(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/Syntax;)V

    return-object p0
.end method

.method public setSyntaxValue(I)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 767
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 768
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$2000(Lcom/google/crypto/tink/shaded/protobuf/Method;I)V

    return-object p0
.end method
