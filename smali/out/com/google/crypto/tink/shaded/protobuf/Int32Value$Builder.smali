.class public final Lcom/google/crypto/tink/shaded/protobuf/Int32Value$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "Int32Value.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Int32ValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Int32Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/Int32Value;",
        "Lcom/google/crypto/tink/shaded/protobuf/Int32Value$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Int32ValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 137
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Int32Value;->access$000()Lcom/google/crypto/tink/shaded/protobuf/Int32Value;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/Int32Value$1;)V
    .registers 2

    .line 130
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Int32Value$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearValue()Lcom/google/crypto/tink/shaded/protobuf/Int32Value$Builder;
    .registers 2

    .line 164
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Int32Value$Builder;->copyOnWrite()V

    .line 165
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Int32Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Int32Value;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Int32Value;->access$200(Lcom/google/crypto/tink/shaded/protobuf/Int32Value;)V

    return-object p0
.end method

.method public getValue()I
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Int32Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Int32Value;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Int32Value;->getValue()I

    move-result v0

    return v0
.end method

.method public setValue(I)Lcom/google/crypto/tink/shaded/protobuf/Int32Value$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Int32Value$Builder;->copyOnWrite()V

    .line 156
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Int32Value$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Int32Value;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Int32Value;->access$100(Lcom/google/crypto/tink/shaded/protobuf/Int32Value;I)V

    return-object p0
.end method
