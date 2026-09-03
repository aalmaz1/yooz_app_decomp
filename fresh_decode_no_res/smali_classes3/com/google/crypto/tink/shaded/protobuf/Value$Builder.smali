.class public final Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "Value.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/Value;",
        "Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/ValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 460
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$000()Lcom/google/crypto/tink/shaded/protobuf/Value;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/Value$1;)V
    .locals 0

    .line 453
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBoolValue()Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1

    .line 654
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 655
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/Value;)V

    return-object p0
.end method

.method public clearKind()Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1

    .line 470
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 471
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$100(Lcom/google/crypto/tink/shaded/protobuf/Value;)V

    return-object p0
.end method

.method public clearListValue()Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 751
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$1700(Lcom/google/crypto/tink/shaded/protobuf/Value;)V

    return-object p0
.end method

.method public clearNullValue()Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1

    .line 525
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 526
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Value;)V

    return-object p0
.end method

.method public clearNumberValue()Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1

    .line 561
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 562
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Value;)V

    return-object p0
.end method

.method public clearStringValue()Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1

    .line 607
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 608
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$800(Lcom/google/crypto/tink/shaded/protobuf/Value;)V

    return-object p0
.end method

.method public clearStructValue()Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 703
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$1400(Lcom/google/crypto/tink/shaded/protobuf/Value;)V

    return-object p0
.end method

.method public getBoolValue()Z
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->getBoolValue()Z

    move-result v0

    return v0
.end method

.method public getKindCase()Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->getKindCase()Lcom/google/crypto/tink/shaded/protobuf/Value$KindCase;

    move-result-object v0

    return-object v0
.end method

.method public getListValue()Lcom/google/crypto/tink/shaded/protobuf/ListValue;
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->getListValue()Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    move-result-object v0

    return-object v0
.end method

.method public getNullValue()Lcom/google/crypto/tink/shaded/protobuf/NullValue;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->getNullValue()Lcom/google/crypto/tink/shaded/protobuf/NullValue;

    move-result-object v0

    return-object v0
.end method

.method public getNullValueValue()I
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->getNullValueValue()I

    move-result v0

    return v0
.end method

.method public getNumberValue()D
    .locals 2

    .line 544
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->getNumberValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringValueBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->getStringValueBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStructValue()Lcom/google/crypto/tink/shaded/protobuf/Struct;
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->getStructValue()Lcom/google/crypto/tink/shaded/protobuf/Struct;

    move-result-object v0

    return-object v0
.end method

.method public hasBoolValue()Z
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->hasBoolValue()Z

    move-result v0

    return v0
.end method

.method public hasListValue()Z
    .locals 1

    .line 712
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->hasListValue()Z

    move-result v0

    return v0
.end method

.method public hasNullValue()Z
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->hasNullValue()Z

    move-result v0

    return v0
.end method

.method public hasNumberValue()Z
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->hasNumberValue()Z

    move-result v0

    return v0
.end method

.method public hasStringValue()Z
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->hasStringValue()Z

    move-result v0

    return v0
.end method

.method public hasStructValue()Z
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Value;->hasStructValue()Z

    move-result v0

    return v0
.end method

.method public mergeListValue(Lcom/google/crypto/tink/shaded/protobuf/ListValue;)Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 742
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 743
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Value;Lcom/google/crypto/tink/shaded/protobuf/ListValue;)V

    return-object p0
.end method

.method public mergeStructValue(Lcom/google/crypto/tink/shaded/protobuf/Struct;)Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 694
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 695
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$1300(Lcom/google/crypto/tink/shaded/protobuf/Value;Lcom/google/crypto/tink/shaded/protobuf/Struct;)V

    return-object p0
.end method

.method public setBoolValue(Z)Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 645
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 646
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/Value;Z)V

    return-object p0
.end method

.method public setListValue(Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 734
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 735
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Value;Lcom/google/crypto/tink/shaded/protobuf/ListValue;)V

    return-object p0
.end method

.method public setListValue(Lcom/google/crypto/tink/shaded/protobuf/ListValue;)Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 725
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Value;Lcom/google/crypto/tink/shaded/protobuf/ListValue;)V

    return-object p0
.end method

.method public setNullValue(Lcom/google/crypto/tink/shaded/protobuf/NullValue;)Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 516
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 517
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$300(Lcom/google/crypto/tink/shaded/protobuf/Value;Lcom/google/crypto/tink/shaded/protobuf/NullValue;)V

    return-object p0
.end method

.method public setNullValueValue(I)Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 499
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$200(Lcom/google/crypto/tink/shaded/protobuf/Value;I)V

    return-object p0
.end method

.method public setNumberValue(D)Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 552
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 553
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Value;D)V

    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
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
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 599
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$700(Lcom/google/crypto/tink/shaded/protobuf/Value;Ljava/lang/String;)V

    return-object p0
.end method

.method public setStringValueBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
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
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 619
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$900(Lcom/google/crypto/tink/shaded/protobuf/Value;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStructValue(Lcom/google/crypto/tink/shaded/protobuf/Struct$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 686
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 687
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Struct$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Struct;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$1200(Lcom/google/crypto/tink/shaded/protobuf/Value;Lcom/google/crypto/tink/shaded/protobuf/Struct;)V

    return-object p0
.end method

.method public setStructValue(Lcom/google/crypto/tink/shaded/protobuf/Struct;)Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 677
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Value;->access$1200(Lcom/google/crypto/tink/shaded/protobuf/Value;Lcom/google/crypto/tink/shaded/protobuf/Struct;)V

    return-object p0
.end method
