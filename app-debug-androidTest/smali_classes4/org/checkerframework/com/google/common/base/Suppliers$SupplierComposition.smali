.class Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;
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
    name = "SupplierComposition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
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
.field final function:Lorg/checkerframework/com/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TF;TT;>;"
        }
    .end annotation
.end field

.field final supplier:Lorg/checkerframework/com/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TF;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/Function;Lorg/checkerframework/com/google/common/base/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/google/common/base/Function<",
            "-TF;TT;>;",
            "Lorg/checkerframework/com/google/common/base/Supplier<",
            "TF;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition<TF;TT;>;"
    .local p1, "function":Lorg/checkerframework/com/google/common/base/Function;, "Lorg/checkerframework/com/google/common/base/Function<-TF;TT;>;"
    .local p2, "supplier":Lorg/checkerframework/com/google/common/base/Supplier;, "Lorg/checkerframework/com/google/common/base/Supplier<TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Function;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;->function:Lorg/checkerframework/com/google/common/base/Function;

    .line 55
    invoke-static {p2}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/google/common/base/Supplier;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 65
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition<TF;TT;>;"
    instance-of v0, p1, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 66
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;

    .line 67
    .local v0, "that":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition<**>;"
    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;->function:Lorg/checkerframework/com/google/common/base/Function;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-interface {v2, v3}, Lorg/checkerframework/com/google/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    iget-object v3, v0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 69
    .end local v0    # "that":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition<**>;"
    :cond_1
    return v1
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition<TF;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;->function:Lorg/checkerframework/com/google/common/base/Function;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-interface {v1}, Lorg/checkerframework/com/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/checkerframework/com/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 74
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition<TF;TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;->function:Lorg/checkerframework/com/google/common/base/Function;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    .local p0, "this":Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;, "Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition<TF;TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppliers.compose("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;->function:Lorg/checkerframework/com/google/common/base/Function;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Suppliers$SupplierComposition;->supplier:Lorg/checkerframework/com/google/common/base/Supplier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
