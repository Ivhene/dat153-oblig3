.class Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;
.super Ljava/lang/Object;
.source "HashBasedTable.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Supplier;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/HashBasedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Supplier<",
        "Ljava/util/Map<",
        "TC;TV;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final expectedSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .line 56
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory<TC;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;->expectedSize:I

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 53
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory<TC;TV;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;, "Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory<TC;TV;>;"
    iget v0, p0, Lorg/checkerframework/com/google/common/collect/HashBasedTable$Factory;->expectedSize:I

    invoke-static {v0}, Lorg/checkerframework/com/google/common/collect/Maps;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method
