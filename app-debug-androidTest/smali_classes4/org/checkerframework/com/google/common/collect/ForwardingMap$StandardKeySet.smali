.class public Lorg/checkerframework/com/google/common/collect/ForwardingMap$StandardKeySet;
.super Lorg/checkerframework/com/google/common/collect/Maps$KeySet;
.source "ForwardingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/google/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/Maps$KeySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/google/common/collect/ForwardingMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ForwardingMap;

    .line 197
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ForwardingMap$StandardKeySet;, "Lorg/checkerframework/com/google/common/collect/ForwardingMap<TK;TV;>.StandardKeySet;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ForwardingMap$StandardKeySet;->this$0:Lorg/checkerframework/com/google/common/collect/ForwardingMap;

    .line 198
    invoke-direct {p0, p1}, Lorg/checkerframework/com/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    .line 199
    return-void
.end method
