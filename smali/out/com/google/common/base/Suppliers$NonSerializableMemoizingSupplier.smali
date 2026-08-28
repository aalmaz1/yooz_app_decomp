.class Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;
.super Ljava/lang/Object;
.source "Suppliers.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NonSerializableMemoizingSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final SUCCESSFULLY_COMPUTED:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile delegate:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 160
    new-instance v0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->SUCCESSFULLY_COMPUTED:Lcom/google/common/base/Supplier;

    return-void
.end method

.method constructor <init>(Lcom/google/common/base/Supplier;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Supplier;

    iput-object p1, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    return-void
.end method

.method static synthetic lambda$static$0()Ljava/lang/Void;
    .registers 1

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3
    .annotation runtime Lcom/google/common/base/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    sget-object v1, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->SUCCESSFULLY_COMPUTED:Lcom/google/common/base/Supplier;

    if-eq v0, v1, :cond_1c

    .line 179
    monitor-enter p0

    .line 180
    :try_start_7
    iget-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    if-eq v0, v1, :cond_17

    .line 181
    iget-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->value:Ljava/lang/Object;

    .line 183
    iput-object v1, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    .line 184
    monitor-exit p0

    return-object v0

    .line 186
    :cond_17
    monitor-exit p0

    goto :goto_1c

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw v0

    .line 189
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->value:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/base/NullnessCasts;->uncheckedCastNullableTToT(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 194
    iget-object v0, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lcom/google/common/base/Supplier;

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Suppliers.memoize("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    sget-object v2, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->SUCCESSFULLY_COMPUTED:Lcom/google/common/base/Supplier;

    if-ne v0, v2, :cond_24

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<supplier that returned "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    :cond_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
