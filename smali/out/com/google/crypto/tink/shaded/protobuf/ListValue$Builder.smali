.class public final Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "ListValue.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/ListValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/ListValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/ListValue;",
        "Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/ListValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 206
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ListValue;->access$000()Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/ListValue$1;)V
    .registers 2

    .line 199
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllValues(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/Value;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;"
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 292
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ListValue;->access$400(Lcom/google/crypto/tink/shaded/protobuf/ListValue;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addValues(ILcom/google/crypto/tink/shaded/protobuf/Value$Builder;)Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;
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

    .line 281
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 282
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    .line 283
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Value;

    .line 282
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ListValue;->access$300(Lcom/google/crypto/tink/shaded/protobuf/ListValue;ILcom/google/crypto/tink/shaded/protobuf/Value;)V

    return-object p0
.end method

.method public addValues(ILcom/google/crypto/tink/shaded/protobuf/Value;)Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;
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

    .line 263
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 264
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ListValue;->access$300(Lcom/google/crypto/tink/shaded/protobuf/ListValue;ILcom/google/crypto/tink/shaded/protobuf/Value;)V

    return-object p0
.end method

.method public addValues(Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;)Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 272
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 273
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Value;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ListValue;->access$200(Lcom/google/crypto/tink/shaded/protobuf/ListValue;Lcom/google/crypto/tink/shaded/protobuf/Value;)V

    return-object p0
.end method

.method public addValues(Lcom/google/crypto/tink/shaded/protobuf/Value;)Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 255
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ListValue;->access$200(Lcom/google/crypto/tink/shaded/protobuf/ListValue;Lcom/google/crypto/tink/shaded/protobuf/Value;)V

    return-object p0
.end method

.method public clearValues()Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;
    .registers 2

    .line 299
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 300
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ListValue;->access$500(Lcom/google/crypto/tink/shaded/protobuf/ListValue;)V

    return-object p0
.end method

.method public getValues(I)Lcom/google/crypto/tink/shaded/protobuf/Value;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ListValue;->getValues(I)Lcom/google/crypto/tink/shaded/protobuf/Value;

    move-result-object p1

    return-object p1
.end method

.method public getValuesCount()I
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ListValue;->getValuesCount()I

    move-result v0

    return v0
.end method

.method public getValuesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/Value;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    .line 216
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ListValue;->getValuesList()Ljava/util/List;

    move-result-object v0

    .line 215
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeValues(I)Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 308
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ListValue;->access$600(Lcom/google/crypto/tink/shaded/protobuf/ListValue;I)V

    return-object p0
.end method

.method public setValues(ILcom/google/crypto/tink/shaded/protobuf/Value$Builder;)Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;
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

    .line 245
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 246
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    .line 247
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Value$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/Value;

    .line 246
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ListValue;->access$100(Lcom/google/crypto/tink/shaded/protobuf/ListValue;ILcom/google/crypto/tink/shaded/protobuf/Value;)V

    return-object p0
.end method

.method public setValues(ILcom/google/crypto/tink/shaded/protobuf/Value;)Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;
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

    .line 236
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->copyOnWrite()V

    .line 237
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ListValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ListValue;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ListValue;->access$100(Lcom/google/crypto/tink/shaded/protobuf/ListValue;ILcom/google/crypto/tink/shaded/protobuf/Value;)V

    return-object p0
.end method
