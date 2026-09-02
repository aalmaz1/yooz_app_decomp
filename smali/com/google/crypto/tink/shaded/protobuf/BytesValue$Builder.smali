.class public final Lcom/google/crypto/tink/shaded/protobuf/BytesValue$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "BytesValue.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/BytesValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/BytesValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/BytesValue;",
        "Lcom/google/crypto/tink/shaded/protobuf/BytesValue$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/BytesValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 139
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/BytesValue;->access$000()Lcom/google/crypto/tink/shaded/protobuf/BytesValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/BytesValue$1;)V
    .registers 2

    .line 132
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BytesValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearValue()Lcom/google/crypto/tink/shaded/protobuf/BytesValue$Builder;
    .registers 2

    .line 166
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BytesValue$Builder;->copyOnWrite()V

    .line 167
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BytesValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/BytesValue;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/BytesValue;->access$200(Lcom/google/crypto/tink/shaded/protobuf/BytesValue;)V

    return-object p0
.end method

.method public getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BytesValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/BytesValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/BytesValue;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/BytesValue$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 157
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BytesValue$Builder;->copyOnWrite()V

    .line 158
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BytesValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/BytesValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BytesValue;->access$100(Lcom/google/crypto/tink/shaded/protobuf/BytesValue;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-object p0
.end method
