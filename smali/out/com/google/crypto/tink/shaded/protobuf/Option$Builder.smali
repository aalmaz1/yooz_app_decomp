.class public final Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "Option.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/OptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/Option;",
        "Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/OptionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 206
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Option;->access$000()Lcom/google/crypto/tink/shaded/protobuf/Option;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/Option$1;)V
    .registers 2

    .line 199
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
    .registers 2

    .line 243
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->copyOnWrite()V

    .line 244
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Option;->access$200(Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public clearValue()Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
    .registers 2

    .line 301
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->copyOnWrite()V

    .line 302
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Option;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Option;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Option;->getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/crypto/tink/shaded/protobuf/Any;
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Option;->getValue()Lcom/google/crypto/tink/shaded/protobuf/Any;

    move-result-object v0

    return-object v0
.end method

.method public hasValue()Z
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Option;->hasValue()Z

    move-result v0

    return v0
.end method

.method public mergeValue(Lcom/google/crypto/tink/shaded/protobuf/Any;)Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->copyOnWrite()V

    .line 295
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Option;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Option;Lcom/google/crypto/tink/shaded/protobuf/Any;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->copyOnWrite()V

    .line 235
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Option;->access$100(Lcom/google/crypto/tink/shaded/protobuf/Option;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
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
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->copyOnWrite()V

    .line 255
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Option;->access$300(Lcom/google/crypto/tink/shaded/protobuf/Option;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Lcom/google/crypto/tink/shaded/protobuf/Any$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->copyOnWrite()V

    .line 287
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Any$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/Any;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Option;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Option;Lcom/google/crypto/tink/shaded/protobuf/Any;)V

    return-object p0
.end method

.method public setValue(Lcom/google/crypto/tink/shaded/protobuf/Any;)Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->copyOnWrite()V

    .line 278
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Option;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Option;Lcom/google/crypto/tink/shaded/protobuf/Any;)V

    return-object p0
.end method
