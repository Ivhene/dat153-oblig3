.class Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;
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
    name = "SupplierOfInstance"
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
.field final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 274
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;->instance:Ljava/lang/Object;

    .line 276
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 285
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance<TT;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;

    if-eqz v0, :cond_0

    .line 286
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;

    .line 287
    .local v0, "that":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance<*>;"
    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;->instance:Ljava/lang/Object;

    iget-object v2, v0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;->instance:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/checkerframework/com/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 289
    .end local v0    # "that":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 280
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 294
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;->instance:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 299
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppliers.ofInstance("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierOfInstance;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
