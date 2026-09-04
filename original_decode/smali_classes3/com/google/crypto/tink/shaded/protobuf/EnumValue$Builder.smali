.class public final Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "EnumValue.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/EnumValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/EnumValue;",
        "Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/EnumValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 280
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$000()Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/EnumValue$1;)V
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;"
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 443
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$900(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
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

    .line 432
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 433
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 434
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 433
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$800(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
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

    .line 414
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 415
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$800(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 423
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 424
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$700(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 406
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$700(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 318
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$200(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public clearNumber()Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 357
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$500(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 451
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getNumber()I

    move-result v0

    return v0
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

    .line 380
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getOptionsCount()I

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

    .line 366
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 367
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 366
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeOptions(I)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 459
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;I)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 309
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$100(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 329
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$300(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNumber(I)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 348
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$400(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;I)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
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

    .line 396
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 397
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 398
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 397
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$600(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
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

    .line 387
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 388
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$600(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method
