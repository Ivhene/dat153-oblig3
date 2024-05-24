.class Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier;
.super Ljava/lang/Object;
.source "Suppliers.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/Suppliers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadSafeSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Supplier<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lorg/checkerframework/com/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;"
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

    .line 316
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier;, "Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier<TT;>;"
    .local p1, "delegate":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Supplier;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier;->delegate:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 318
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

    .line 322
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier;, "Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier;->delegate:Lorg/checkerframework/com/google/common/base/Supplier;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier;->delegate:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 324
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 329
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier;, "Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppliers.synchronizedSupplier("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier;->delegate:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
