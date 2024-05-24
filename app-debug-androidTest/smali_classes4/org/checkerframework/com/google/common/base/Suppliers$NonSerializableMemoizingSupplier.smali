.class Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;
.super Ljava/lang/Object;
.source "Suppliers.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/Suppliers;
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
        "Lorg/checkerframework/com/google/common/base/Supplier<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile delegate:Lorg/checkerframework/com/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field

.field volatile initialized:Z

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 157
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;, "Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier<TT;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Supplier;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 159
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;, "Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier<TT;>;"
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->initialized:Z

    if-nez v0, :cond_1

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-boolean v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->initialized:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 168
    .local v0, "t":Ljava/lang/Object;, "TT;"
    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->value:Ljava/lang/Object;

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->initialized:Z

    .line 171
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 172
    monitor-exit p0

    return-object v0

    .line 174
    .end local v0    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 176
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 181
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;, "Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->delegate:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 182
    .local v0, "delegate":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suppliers.memoize("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<supplier that returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
