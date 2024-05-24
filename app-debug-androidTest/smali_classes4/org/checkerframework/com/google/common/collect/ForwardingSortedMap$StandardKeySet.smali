.class public Lorg/checkerframework/com/google/common/collect/ForwardingSortedMap$StandardKeySet;
.super Lorg/checkerframework/com/google/common/collect/Maps$SortedKeySet;
.source "ForwardingSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ForwardingSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Maps$SortedKeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ForwardingSortedMap;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/google/common/collect/ForwardingSortedMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ForwardingSortedMap;

    .line 104
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingSortedMap$StandardKeySet;, "Lorg/checkerframework/com/google/common/collect/ForwardingSortedMap<TK;TV;>.StandardKeySet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ForwardingSortedMap$StandardKeySet;->this$0:Lorg/checkerframework/com/google/common/collect/ForwardingSortedMap;

    .line 105
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$SortedKeySet;-><init>(Ljava/util/SortedMap;)V

    .line 106
    return-void
.end method
