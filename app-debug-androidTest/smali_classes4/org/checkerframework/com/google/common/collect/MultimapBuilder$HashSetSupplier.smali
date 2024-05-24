.class final Lorg/checkerframework/com/google/common/collect/MultimapBuilder$HashSetSupplier;
.super Ljava/lang/Object;
.source "MultimapBuilder.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HashSetSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Supplier<",
        "Ljava/util/Set<",
        "TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final expectedValuesPerKey:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "expectedValuesPerKey"    # I

    .line 215
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$HashSetSupplier;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$HashSetSupplier<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lorg/checkerframework/com/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$HashSetSupplier;->expectedValuesPerKey:I

    .line 217
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 212
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$HashSetSupplier;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$HashSetSupplier<TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$HashSetSupplier;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$HashSetSupplier;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$HashSetSupplier<TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$HashSetSupplier;->expectedValuesPerKey:I

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Platform;->newHashSetWithExpectedSize(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
