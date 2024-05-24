.class Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/base/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupplierFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "Ljava/lang/Object;",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final supplier:Lorg/checkerframework/com/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/checkerframework/com/google/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    .line 371
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;, "Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction<TT;>;"
    .local p1, "supplier":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Supplier;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 373
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/com/google/common/base/Supplier;Lorg/checkerframework/com/google/common/base/Functions$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/com/google/common/base/Supplier;
    .param p2, "x1"    # Lorg/checkerframework/com/google/common/base/Functions$1;

    .line 367
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;, "Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction<TT;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;-><init>(Lorg/checkerframework/com/google/common/base/Supplier;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "input"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 377
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;, "Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-interface {v0}, Lorg/checkerframework/com/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 382
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;, "Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction<TT;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;

    if-eqz v0, :cond_0

    .line 383
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;

    .line 384
    .local v0, "that":Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;, "Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction<*>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 386
    .end local v0    # "that":Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;, "Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 391
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;, "Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 396
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;, "Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Functions.forSupplier("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Functions$SupplierFunction;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
