.class public final synthetic Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final constructPrimitive(Lcom/google/crypto/tink/Key;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/crypto/tink/prf/HmacPrfKey;

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/PrfHmacJce;->create(Lcom/google/crypto/tink/prf/HmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;

    move-result-object p1

    return-object p1
.end method
