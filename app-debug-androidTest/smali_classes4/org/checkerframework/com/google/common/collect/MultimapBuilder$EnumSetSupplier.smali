.class final Lorg/checkerframework/com/google/common/collect/MultimapBuilder$EnumSetSupplier;
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
    name = "EnumSetSupplier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Enum<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Supplier<",
        "Ljava/util/Set<",
        "TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 255
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$EnumSetSupplier;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$EnumSetSupplier<TV;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    invoke-static {p1}, Lorg/checkerframework/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$EnumSetSupplier;->clazz:Ljava/lang/Class;

    .line 257
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 251
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$EnumSetSupplier;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$EnumSetSupplier<TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$EnumSetSupplier;->get()Ljava/util/Set;

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

    .line 261
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/MultimapBuilder$EnumSetSupplier;, "Lorg/checkerframework/com/google/common/collect/MultimapBuilder$EnumSetSupplier<TV;>;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/MultimapBuilder$EnumSetSupplier;->clazz:Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method
