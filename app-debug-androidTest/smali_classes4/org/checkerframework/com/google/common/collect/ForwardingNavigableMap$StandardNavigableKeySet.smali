.class public Lorg/checkerframework/com/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;
.super Lorg/checkerframework/com/google/common/collect/Maps$NavigableKeySet;
.source "ForwardingNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ForwardingNavigableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardNavigableKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Maps$NavigableKeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ForwardingNavigableMap;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/google/common/collect/ForwardingNavigableMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ForwardingNavigableMap;

    .line 343
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;, "Lorg/checkerframework/com/google/common/collect/ForwardingNavigableMap<TK;TV;>.StandardNavigableKeySet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;->this$0:Lorg/checkerframework/com/google/common/collect/ForwardingNavigableMap;

    .line 344
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$NavigableKeySet;-><init>(Ljava/util/NavigableMap;)V

    .line 345
    return-void
.end method