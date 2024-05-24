.class public final Lorg/checkerframework/com/google/common/base/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/google/common/base/Suppliers$SupplierFunctionImpl;,
        Lorg/checkerframework/com/google/common/base/Suppliers$SupplierFunction;,
        Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier;,
        Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;,
        Lorg/checkerframework/com/google/common/base/Suppliers$ExpiringMemoizingSupplier;,
        Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;,
        Lorg/checkerframework/com/google/common/base/Suppliers$MemoizingSupplier;,
        Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compose(Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Supplier;)Lorg/checkerframework/com/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TF;TT;>;",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TF;>;)",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 46
    .local p0, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TF;TT;>;"
    .local p1, "supplier":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TF;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;-><init>(Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static memoize(Lorg/checkerframework/com/google/common/base/Supplier;)Lorg/checkerframework/com/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;)",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 102
    .local p0, "delegate":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TT;>;"
    instance-of v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$MemoizingSupplier;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/checkerframework/com/google/common/base/Suppliers$MemoizingSupplier;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/base/Suppliers$MemoizingSupplier;-><init>(Lorg/checkerframework/com/google/common/base/Supplier;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/base/Suppliers$NonSerializableMemoizingSupplier;-><init>(Lorg/checkerframework/com/google/common/base/Supplier;)V

    :goto_0
    return-object v0

    .line 104
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static memoizeWithExpiration(Lorg/checkerframework/com/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)Lorg/checkerframework/com/google/common/base/Supplier;
    .locals 1
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 212
    .local p0, "delegate":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TT;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Suppliers$ExpiringMemoizingSupplier;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/checkerframework/com/google/common/base/Suppliers$ExpiringMemoizingSupplier;-><init>(Lorg/checkerframework/com/google/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static ofInstance(Ljava/lang/Object;)Lorg/checkerframework/com/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 268
    .local p0, "instance":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static supplierFunction()Lorg/checkerframework/com/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;TT;>;"
        }
    .end annotation

    .line 345
    sget-object v0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierFunctionImpl;->INSTANCE:Lorg/checkerframework/com/google/common/base/Suppliers$SupplierFunctionImpl;

    .line 346
    .local v0, "sf":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierFunction;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierFunction<TT;>;"
    return-object v0
.end method

.method public static synchronizedSupplier(Lorg/checkerframework/com/google/common/base/Supplier;)Lorg/checkerframework/com/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;)",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 310
    .local p0, "delegate":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TT;>;"
    new-instance v0, Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/google/common/base/Suppliers$ThreadSafeSupplier;-><init>(Lorg/checkerframework/com/google/common/base/Supplier;)V

    return-object v0
.end method
