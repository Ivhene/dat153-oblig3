.class Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;
.super Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;->createEntrySet()Lorg/checkerframework/com/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;

    .line 495
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;"
    iput-object p1, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMapEntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 495
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;"
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;->iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 503
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;->entryIterator()Lorg/checkerframework/com/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method map()Lorg/checkerframework/com/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 498
    .local p0, "this":Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;, "Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;"
    iget-object v0, p0, Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;->this$0:Lorg/checkerframework/com/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;

    return-object v0
.end method
