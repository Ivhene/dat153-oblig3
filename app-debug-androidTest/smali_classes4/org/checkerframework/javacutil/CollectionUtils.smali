.class public Lorg/checkerframework/javacutil/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLRUCache(I)Ljava/util/Map;
    .locals 3
    .param p0, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 16
    new-instance v0, Lorg/checkerframework/javacutil/CollectionUtils$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p0}, Lorg/checkerframework/javacutil/CollectionUtils$1;-><init>(IFZI)V

    return-object v0
.end method
