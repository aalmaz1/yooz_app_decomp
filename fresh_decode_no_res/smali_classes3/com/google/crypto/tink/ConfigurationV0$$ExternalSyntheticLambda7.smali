.class public final synthetic Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final constructPrimitive(Lcom/google/crypto/tink/Key;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/crypto/tink/daead/AesSivKey;

    invoke-static {p1}, Lcom/google/crypto/tink/ConfigurationV0;->$r8$lambda$Coi_FXAa6o6Xq5WlnZZ2Iuy_uXA(Lcom/google/crypto/tink/daead/AesSivKey;)Lcom/google/crypto/tink/DeterministicAead;

    move-result-object p1

    return-object p1
.end method
